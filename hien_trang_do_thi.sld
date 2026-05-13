<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>hien_trang_do_thi</Name>
    <UserStyle>
      <Title>Hiện trạng đô thị Việt Nam — Ký hiệu chuẩn</Title>
      <Abstract>
        Ký hiệu theo bảng chú giải bản đồ quy hoạch Việt Nam.
        Trường phân loại: phanloaido (giá trị: DB, 1, 2, 3, 4, 5)
        Trường tên: ten
        SVG files: $GEOSERVER_DATA_DIR/styles/do_thi_symbols/
      </Abstract>
      <FeatureTypeStyle>

        <!--
          BẢNG TỶ LỆ ZOOM:
            > 1:500.000   → DB, Loại 1 (nhỏ, không nhãn)
            1:250.000–500.000 → thêm Loại 2 (nhỏ)
            1:150.000–250.000 → thêm Loại 3 (nhỏ)
            < 1:500.000   → DB, Loại 1 (lớn + nhãn)
            < 1:250.000   → Loại 2 (lớn + nhãn)
            < 1:150.000   → Loại 3 (lớn + nhãn)
            < 1:100.000   → Loại 4 + nhãn
            < 1:50.000    → Loại 5 + nhãn
        -->

        <!-- ════════ ĐẶC BIỆT — xa ════════ -->
        <Rule>
          <Name>DB_far</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>DB</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MinScaleDenominator>500000</MinScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_dacbiet.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>16</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>

        <!-- ════════ ĐẶC BIỆT — gần + nhãn ════════ -->
        <Rule>
          <Name>DB_near</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>DB</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MaxScaleDenominator>500000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_dacbiet.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>32</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>
            <Label><ogc:PropertyName>ten</ogc:PropertyName></Label>
            <Font>
              <CssParameter name="font-family">Arial, Segoe UI</CssParameter>
              <CssParameter name="font-size">13</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement><PointPlacement>
              <AnchorPoint><AnchorPointX>0.0</AnchorPointX><AnchorPointY>0.5</AnchorPointY></AnchorPoint>
              <Displacement><DisplacementX>20</DisplacementX><DisplacementY>0</DisplacementY></Displacement>
            </PointPlacement></LabelPlacement>
            <Halo><Radius>2</Radius><Fill><CssParameter name="fill">#FFFFFF</CssParameter><CssParameter name="fill-opacity">0.9</CssParameter></Fill></Halo>
            <Fill><CssParameter name="fill">#7B241C</CssParameter></Fill>
            <VendorOption name="conflictResolution">true</VendorOption>
            <VendorOption name="maxDisplacement">40</VendorOption>
          </TextSymbolizer>
        </Rule>

        <!-- ════════ LOẠI I — xa ════════ -->
        <Rule>
          <Name>L1_far</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MinScaleDenominator>500000</MinScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_loai1.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>14</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>

        <!-- ════════ LOẠI I — gần + nhãn ════════ -->
        <Rule>
          <Name>L1_near</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>1</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MaxScaleDenominator>500000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_loai1.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>28</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>
            <Label><ogc:PropertyName>ten</ogc:PropertyName></Label>
            <Font>
              <CssParameter name="font-family">Arial, Segoe UI</CssParameter>
              <CssParameter name="font-size">12</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement><PointPlacement>
              <AnchorPoint><AnchorPointX>0.0</AnchorPointX><AnchorPointY>0.5</AnchorPointY></AnchorPoint>
              <Displacement><DisplacementX>18</DisplacementX><DisplacementY>0</DisplacementY></Displacement>
            </PointPlacement></LabelPlacement>
            <Halo><Radius>2</Radius><Fill><CssParameter name="fill">#FFFFFF</CssParameter><CssParameter name="fill-opacity">0.9</CssParameter></Fill></Halo>
            <Fill><CssParameter name="fill">#7B241C</CssParameter></Fill>
            <VendorOption name="conflictResolution">true</VendorOption>
            <VendorOption name="maxDisplacement">40</VendorOption>
          </TextSymbolizer>
        </Rule>

        <!-- ════════ LOẠI II — xa ════════ -->
        <Rule>
          <Name>L2_far</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>2</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MinScaleDenominator>250000</MinScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_loai2.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>12</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>

        <!-- ════════ LOẠI II — gần + nhãn ════════ -->
        <Rule>
          <Name>L2_near</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>2</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MaxScaleDenominator>250000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_loai2.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>24</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>
            <Label><ogc:PropertyName>ten</ogc:PropertyName></Label>
            <Font>
              <CssParameter name="font-family">Arial, Segoe UI</CssParameter>
              <CssParameter name="font-size">11</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement><PointPlacement>
              <AnchorPoint><AnchorPointX>0.0</AnchorPointX><AnchorPointY>0.5</AnchorPointY></AnchorPoint>
              <Displacement><DisplacementX>15</DisplacementX><DisplacementY>0</DisplacementY></Displacement>
            </PointPlacement></LabelPlacement>
            <Halo><Radius>1.5</Radius><Fill><CssParameter name="fill">#FFFFFF</CssParameter><CssParameter name="fill-opacity">0.9</CssParameter></Fill></Halo>
            <Fill><CssParameter name="fill">#922B21</CssParameter></Fill>
            <VendorOption name="conflictResolution">true</VendorOption>
            <VendorOption name="maxDisplacement">35</VendorOption>
          </TextSymbolizer>
        </Rule>

        <!-- ════════ LOẠI III — xa ════════ -->
        <Rule>
          <Name>L3_far</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>3</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MinScaleDenominator>150000</MinScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_loai3.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>10</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>

        <!-- ════════ LOẠI III — gần + nhãn ════════ -->
        <Rule>
          <Name>L3_near</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>3</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MaxScaleDenominator>150000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_loai3.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>20</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>
            <Label><ogc:PropertyName>ten</ogc:PropertyName></Label>
            <Font>
              <CssParameter name="font-family">Arial, Segoe UI</CssParameter>
              <CssParameter name="font-size">10</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>
            <LabelPlacement><PointPlacement>
              <AnchorPoint><AnchorPointX>0.0</AnchorPointX><AnchorPointY>0.5</AnchorPointY></AnchorPoint>
              <Displacement><DisplacementX>13</DisplacementX><DisplacementY>0</DisplacementY></Displacement>
            </PointPlacement></LabelPlacement>
            <Halo><Radius>1.5</Radius><Fill><CssParameter name="fill">#FFFFFF</CssParameter><CssParameter name="fill-opacity">0.9</CssParameter></Fill></Halo>
            <Fill><CssParameter name="fill">#922B21</CssParameter></Fill>
            <VendorOption name="conflictResolution">true</VendorOption>
            <VendorOption name="maxDisplacement">30</VendorOption>
          </TextSymbolizer>
        </Rule>

        <!-- ════════ LOẠI IV — gần + nhãn ════════ -->
        <Rule>
          <Name>L4_near</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>4</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_loai4.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>16</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>
            <Label><ogc:PropertyName>ten</ogc:PropertyName></Label>
            <Font>
              <CssParameter name="font-family">Arial, Segoe UI</CssParameter>
              <CssParameter name="font-size">9</CssParameter>
              <CssParameter name="font-weight">normal</CssParameter>
            </Font>
            <LabelPlacement><PointPlacement>
              <AnchorPoint><AnchorPointX>0.0</AnchorPointX><AnchorPointY>0.5</AnchorPointY></AnchorPoint>
              <Displacement><DisplacementX>11</DisplacementX><DisplacementY>0</DisplacementY></Displacement>
            </PointPlacement></LabelPlacement>
            <Halo><Radius>1.5</Radius><Fill><CssParameter name="fill">#FFFFFF</CssParameter><CssParameter name="fill-opacity">0.85</CssParameter></Fill></Halo>
            <Fill><CssParameter name="fill">#922B21</CssParameter></Fill>
            <VendorOption name="conflictResolution">true</VendorOption>
            <VendorOption name="maxDisplacement">25</VendorOption>
          </TextSymbolizer>
        </Rule>

        <!-- ════════ LOẠI V — chỉ zoom rất gần ════════ -->
        <Rule>
          <Name>L5_near</Name>
          <ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>phanloaido</ogc:PropertyName><ogc:Literal>5</ogc:Literal></ogc:PropertyIsEqualTo></ogc:Filter>
          <MaxScaleDenominator>50000</MaxScaleDenominator>
          <PointSymbolizer>
            <Graphic>
              <ExternalGraphic>
                <OnlineResource xlink:type="simple" xlink:href="file:styles/do_thi_symbols/dt_loai5.svg"/>
                <Format>image/svg+xml</Format>
              </ExternalGraphic>
              <Size>12</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>
            <Label><ogc:PropertyName>ten</ogc:PropertyName></Label>
            <Font>
              <CssParameter name="font-family">Arial, Segoe UI</CssParameter>
              <CssParameter name="font-size">8</CssParameter>
              <CssParameter name="font-weight">normal</CssParameter>
              <CssParameter name="font-style">italic</CssParameter>
            </Font>
            <LabelPlacement><PointPlacement>
              <AnchorPoint><AnchorPointX>0.0</AnchorPointX><AnchorPointY>0.5</AnchorPointY></AnchorPoint>
              <Displacement><DisplacementX>9</DisplacementX><DisplacementY>0</DisplacementY></Displacement>
            </PointPlacement></LabelPlacement>
            <Halo><Radius>1</Radius><Fill><CssParameter name="fill">#FFFFFF</CssParameter><CssParameter name="fill-opacity">0.85</CssParameter></Fill></Halo>
            <Fill><CssParameter name="fill">#922B21</CssParameter></Fill>
            <VendorOption name="conflictResolution">true</VendorOption>
            <VendorOption name="maxDisplacement">20</VendorOption>
          </TextSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
