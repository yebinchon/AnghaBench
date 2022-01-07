; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-tile.c_xps_parse_tiling_brush.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-tile.c_xps_parse_tiling_brush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { float, float, float, float }
%struct.TYPE_23__ = type { i32* }
%struct.closure = type { i8*, void (i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i32*, i8*)*, i8*, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Viewbox\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Viewport\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"TileMode\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ImageBrush.Transform\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"VisualBrush.Transform\00", align 1
@fz_unit_rect = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"not drawing tile for viewport size %.4f x %.4f\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"not drawing tile for viewbox size %.4f x %.4f\00", align 1
@TILE_NONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Tile\00", align 1
@TILE_TILE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"FlipX\00", align 1
@TILE_FLIP_X = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"FlipY\00", align 1
@TILE_FLIP_Y = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"FlipXY\00", align 1
@TILE_FLIP_X_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xps_parse_tiling_brush(i32* %0, %struct.TYPE_23__* %1, i32 %2, <2 x float> %3, <2 x float> %4, i8* %5, i32* %6, i32* %7, void (i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i32*, i8*)* %8, i8* %9) #0 {
  %11 = alloca %struct.TYPE_24__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca void (i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i32*, i8*)*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.closure, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_24__, align 4
  %30 = alloca %struct.TYPE_24__, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_24__, align 4
  %37 = alloca %struct.TYPE_24__, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.TYPE_24__, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = bitcast %struct.TYPE_24__* %11 to { <2 x float>, <2 x float> }*
  %48 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %47, i32 0, i32 0
  store <2 x float> %3, <2 x float>* %48, align 4
  %49 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %47, i32 0, i32 1
  store <2 x float> %4, <2 x float>* %49, align 4
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store void (i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i32*, i8*)* %8, void (i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i32*, i8*)** %18, align 8
  store i8* %9, i8** %19, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %20, align 8
  store i32* null, i32** %28, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = call i8* @fz_xml_att(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %54, i8** %23, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = call i8* @fz_xml_att(i32* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %56, i8** %24, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = call i8* @fz_xml_att(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %58, i8** %25, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = call i8* @fz_xml_att(i32* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %60, i8** %26, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i8* @fz_xml_att(i32* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %62, i8** %27, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds %struct.closure, %struct.closure* %22, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = getelementptr inbounds %struct.closure, %struct.closure* %22, i32 0, i32 4
  store i32* %65, i32** %66, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = getelementptr inbounds %struct.closure, %struct.closure* %22, i32 0, i32 3
  store i32* %67, i32** %68, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = getelementptr inbounds %struct.closure, %struct.closure* %22, i32 0, i32 2
  store i8* %69, i8** %70, align 8
  %71 = load void (i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i32*, i8*)*, void (i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i32*, i8*)** %18, align 8
  %72 = getelementptr inbounds %struct.closure, %struct.closure* %22, i32 0, i32 1
  store void (i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i32*, i8*)* %71, void (i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i32*, i8*)** %72, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = call i32* @fz_xml_down(i32* %73)
  store i32* %74, i32** %21, align 8
  br label %75

75:                                               ; preds = %93, %10
  %76 = load i32*, i32** %21, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i32*, i32** %21, align 8
  %80 = call i64 @fz_xml_is_tag(i32* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %21, align 8
  %84 = call i32* @fz_xml_down(i32* %83)
  store i32* %84, i32** %28, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32*, i32** %21, align 8
  %87 = call i64 @fz_xml_is_tag(i32* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32*, i32** %21, align 8
  %91 = call i32* @fz_xml_down(i32* %90)
  store i32* %91, i32** %28, align 8
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %21, align 8
  %95 = call i32* @fz_xml_next(i32* %94)
  store i32* %95, i32** %21, align 8
  br label %75

96:                                               ; preds = %75
  %97 = load i32*, i32** %12, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @xps_resolve_resource_reference(i32* %97, %struct.TYPE_23__* %98, i32* %99, i8** %24, i32** %28, i32* null)
  %101 = load i32*, i32** %12, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %103 = load i8*, i8** %24, align 8
  %104 = load i32*, i32** %28, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @xps_parse_transform(i32* %101, %struct.TYPE_23__* %102, i8* %103, i32* %104, i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = bitcast %struct.TYPE_24__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 bitcast (%struct.TYPE_24__* @fz_unit_rect to i8*), i64 16, i1 false)
  %108 = load i8*, i8** %25, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %96
  %111 = load i32*, i32** %12, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %113 = load i8*, i8** %25, align 8
  %114 = call { <2 x float>, <2 x float> } @xps_parse_rectangle(i32* %111, %struct.TYPE_23__* %112, i8* %113)
  %115 = bitcast %struct.TYPE_24__* %36 to { <2 x float>, <2 x float> }*
  %116 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %115, i32 0, i32 0
  %117 = extractvalue { <2 x float>, <2 x float> } %114, 0
  store <2 x float> %117, <2 x float>* %116, align 4
  %118 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %115, i32 0, i32 1
  %119 = extractvalue { <2 x float>, <2 x float> } %114, 1
  store <2 x float> %119, <2 x float>* %118, align 4
  %120 = bitcast %struct.TYPE_24__* %29 to i8*
  %121 = bitcast %struct.TYPE_24__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %120, i8* align 4 %121, i64 16, i1 false)
  br label %122

122:                                              ; preds = %110, %96
  %123 = bitcast %struct.TYPE_24__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 bitcast (%struct.TYPE_24__* @fz_unit_rect to i8*), i64 16, i1 false)
  %124 = load i8*, i8** %26, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %129 = load i8*, i8** %26, align 8
  %130 = call { <2 x float>, <2 x float> } @xps_parse_rectangle(i32* %127, %struct.TYPE_23__* %128, i8* %129)
  %131 = bitcast %struct.TYPE_24__* %37 to { <2 x float>, <2 x float> }*
  %132 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %131, i32 0, i32 0
  %133 = extractvalue { <2 x float>, <2 x float> } %130, 0
  store <2 x float> %133, <2 x float>* %132, align 4
  %134 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %131, i32 0, i32 1
  %135 = extractvalue { <2 x float>, <2 x float> } %130, 1
  store <2 x float> %135, <2 x float>* %134, align 4
  %136 = bitcast %struct.TYPE_24__* %30 to i8*
  %137 = bitcast %struct.TYPE_24__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 16, i1 false)
  br label %138

138:                                              ; preds = %126, %122
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %140 = load float, float* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %142 = load float, float* %141, align 4
  %143 = fsub float %140, %142
  %144 = call float @llvm.fabs.f32(float %143)
  %145 = fcmp olt float %144, 0x3F847AE140000000
  br i1 %145, label %154, label %146

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  %148 = load float, float* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %150 = load float, float* %149, align 4
  %151 = fsub float %148, %150
  %152 = call float @llvm.fabs.f32(float %151)
  %153 = fcmp olt float %152, 0x3F847AE140000000
  br i1 %153, label %154, label %167

154:                                              ; preds = %146, %138
  %155 = load i32*, i32** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %157 = load float, float* %156, align 4
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %159 = load float, float* %158, align 4
  %160 = fsub float %157, %159
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  %162 = load float, float* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %164 = load float, float* %163, align 4
  %165 = fsub float %162, %164
  %166 = call i32 @fz_warn(i32* %155, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), float %160, float %165)
  br label %197

167:                                              ; preds = %146
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %169 = load float, float* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %171 = load float, float* %170, align 4
  %172 = fsub float %169, %171
  %173 = call float @llvm.fabs.f32(float %172)
  %174 = fcmp olt float %173, 0x3F847AE140000000
  br i1 %174, label %183, label %175

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 2
  %177 = load float, float* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 3
  %179 = load float, float* %178, align 4
  %180 = fsub float %177, %179
  %181 = call float @llvm.fabs.f32(float %180)
  %182 = fcmp olt float %181, 0x3F847AE140000000
  br i1 %182, label %183, label %196

183:                                              ; preds = %175, %167
  %184 = load i32*, i32** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %186 = load float, float* %185, align 4
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %188 = load float, float* %187, align 4
  %189 = fsub float %186, %188
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 2
  %191 = load float, float* %190, align 4
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 3
  %193 = load float, float* %192, align 4
  %194 = fsub float %191, %193
  %195 = call i32 @fz_warn(i32* %184, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), float %189, float %194)
  br label %196

196:                                              ; preds = %183, %175
  br label %197

197:                                              ; preds = %196, %154
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %199 = load float, float* %198, align 4
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %201 = load float, float* %200, align 4
  %202 = fsub float %199, %201
  %203 = call float @llvm.fabs.f32(float %202)
  %204 = fcmp olt float %203, 0x3F847AE140000000
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  br label %443

206:                                              ; preds = %197
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  %208 = load float, float* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %210 = load float, float* %209, align 4
  %211 = fsub float %208, %210
  %212 = call float @llvm.fabs.f32(float %211)
  %213 = fcmp olt float %212, 0x3F847AE140000000
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %443

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %217 = load float, float* %216, align 4
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %219 = load float, float* %218, align 4
  %220 = fsub float %217, %219
  %221 = call float @llvm.fabs.f32(float %220)
  %222 = fcmp olt float %221, 0x3F847AE140000000
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  br label %443

224:                                              ; preds = %215
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 2
  %226 = load float, float* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 3
  %228 = load float, float* %227, align 4
  %229 = fsub float %226, %228
  %230 = call float @llvm.fabs.f32(float %229)
  %231 = fcmp olt float %230, 0x3F847AE140000000
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  br label %443

233:                                              ; preds = %224
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %235 = load float, float* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %237 = load float, float* %236, align 4
  %238 = fsub float %235, %237
  store float %238, float* %31, align 4
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 2
  %240 = load float, float* %239, align 4
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 3
  %242 = load float, float* %241, align 4
  %243 = fsub float %240, %242
  store float %243, float* %32, align 4
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %245 = load float, float* %244, align 4
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %247 = load float, float* %246, align 4
  %248 = fsub float %245, %247
  %249 = load float, float* %31, align 4
  %250 = fdiv float %248, %249
  store float %250, float* %33, align 4
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  %252 = load float, float* %251, align 4
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %254 = load float, float* %253, align 4
  %255 = fsub float %252, %254
  %256 = load float, float* %32, align 4
  %257 = fdiv float %255, %256
  store float %257, float* %34, align 4
  %258 = load i32, i32* @TILE_NONE, align 4
  store i32 %258, i32* %35, align 4
  %259 = load i8*, i8** %27, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %292

261:                                              ; preds = %233
  %262 = load i8*, i8** %27, align 8
  %263 = call i32 @strcmp(i8* %262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %261
  %266 = load i32, i32* @TILE_NONE, align 4
  store i32 %266, i32* %35, align 4
  br label %267

267:                                              ; preds = %265, %261
  %268 = load i8*, i8** %27, align 8
  %269 = call i32 @strcmp(i8* %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %267
  %272 = load i32, i32* @TILE_TILE, align 4
  store i32 %272, i32* %35, align 4
  br label %273

273:                                              ; preds = %271, %267
  %274 = load i8*, i8** %27, align 8
  %275 = call i32 @strcmp(i8* %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %273
  %278 = load i32, i32* @TILE_FLIP_X, align 4
  store i32 %278, i32* %35, align 4
  br label %279

279:                                              ; preds = %277, %273
  %280 = load i8*, i8** %27, align 8
  %281 = call i32 @strcmp(i8* %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* @TILE_FLIP_Y, align 4
  store i32 %284, i32* %35, align 4
  br label %285

285:                                              ; preds = %283, %279
  %286 = load i8*, i8** %27, align 8
  %287 = call i32 @strcmp(i8* %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %285
  %290 = load i32, i32* @TILE_FLIP_X_Y, align 4
  store i32 %290, i32* %35, align 4
  br label %291

291:                                              ; preds = %289, %285
  br label %292

292:                                              ; preds = %291, %233
  %293 = load i32, i32* %35, align 4
  %294 = load i32, i32* @TILE_FLIP_X, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %300, label %296

296:                                              ; preds = %292
  %297 = load i32, i32* %35, align 4
  %298 = load i32, i32* @TILE_FLIP_X_Y, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %296, %292
  %301 = load float, float* %31, align 4
  %302 = fmul float %301, 2.000000e+00
  store float %302, float* %31, align 4
  br label %303

303:                                              ; preds = %300, %296
  %304 = load i32, i32* %35, align 4
  %305 = load i32, i32* @TILE_FLIP_Y, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = load i32, i32* %35, align 4
  %309 = load i32, i32* @TILE_FLIP_X_Y, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %307, %303
  %312 = load float, float* %32, align 4
  %313 = fmul float %312, 2.000000e+00
  store float %313, float* %32, align 4
  br label %314

314:                                              ; preds = %311, %307
  %315 = load i32*, i32** %12, align 8
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %317 = load i32, i32* %14, align 4
  %318 = load i8*, i8** %15, align 8
  %319 = load i32*, i32** %16, align 8
  %320 = load i8*, i8** %23, align 8
  %321 = bitcast %struct.TYPE_24__* %11 to { <2 x float>, <2 x float> }*
  %322 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %321, i32 0, i32 0
  %323 = load <2 x float>, <2 x float>* %322, align 4
  %324 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %321, i32 0, i32 1
  %325 = load <2 x float>, <2 x float>* %324, align 4
  %326 = call i32 @xps_begin_opacity(i32* %315, %struct.TYPE_23__* %316, i32 %317, <2 x float> %323, <2 x float> %325, i8* %318, i32* %319, i8* %320, i32* null)
  %327 = load i32, i32* %14, align 4
  %328 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %329 = load float, float* %328, align 4
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %331 = load float, float* %330, align 4
  %332 = call i32 @fz_pre_translate(i32 %327, float %329, float %331)
  store i32 %332, i32* %14, align 4
  %333 = load i32, i32* %14, align 4
  %334 = load float, float* %33, align 4
  %335 = load float, float* %34, align 4
  %336 = call i32 @fz_pre_scale(i32 %333, float %334, float %335)
  store i32 %336, i32* %14, align 4
  %337 = load i32, i32* %14, align 4
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %339 = load float, float* %338, align 4
  %340 = fneg float %339
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 3
  %342 = load float, float* %341, align 4
  %343 = fneg float %342
  %344 = call i32 @fz_pre_translate(i32 %337, float %340, float %343)
  store i32 %344, i32* %14, align 4
  %345 = load i32, i32* %35, align 4
  %346 = load i32, i32* @TILE_NONE, align 4
  %347 = icmp ne i32 %345, %346
  br i1 %347, label %348, label %425

348:                                              ; preds = %314
  %349 = load i32, i32* %14, align 4
  %350 = call i32 @fz_invert_matrix(i32 %349)
  store i32 %350, i32* %42, align 4
  %351 = load i32, i32* %42, align 4
  %352 = bitcast %struct.TYPE_24__* %11 to { <2 x float>, <2 x float> }*
  %353 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %352, i32 0, i32 0
  %354 = load <2 x float>, <2 x float>* %353, align 4
  %355 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %352, i32 0, i32 1
  %356 = load <2 x float>, <2 x float>* %355, align 4
  %357 = call { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float> %354, <2 x float> %356, i32 %351)
  %358 = bitcast %struct.TYPE_24__* %43 to { <2 x float>, <2 x float> }*
  %359 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %358, i32 0, i32 0
  %360 = extractvalue { <2 x float>, <2 x float> } %357, 0
  store <2 x float> %360, <2 x float>* %359, align 4
  %361 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %358, i32 0, i32 1
  %362 = extractvalue { <2 x float>, <2 x float> } %357, 1
  store <2 x float> %362, <2 x float>* %361, align 4
  %363 = bitcast %struct.TYPE_24__* %11 to i8*
  %364 = bitcast %struct.TYPE_24__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %363, i8* align 4 %364, i64 16, i1 false)
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %366 = load float, float* %365, align 4
  %367 = load float, float* %31, align 4
  %368 = fdiv float %366, %367
  %369 = call i32 @floorf(float %368)
  store i32 %369, i32* %38, align 4
  %370 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 3
  %371 = load float, float* %370, align 4
  %372 = load float, float* %32, align 4
  %373 = fdiv float %371, %372
  %374 = call i32 @floorf(float %373)
  store i32 %374, i32* %39, align 4
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %376 = load float, float* %375, align 4
  %377 = load float, float* %31, align 4
  %378 = fdiv float %376, %377
  %379 = call i32 @ceilf(float %378)
  store i32 %379, i32* %40, align 4
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 2
  %381 = load float, float* %380, align 4
  %382 = load float, float* %32, align 4
  %383 = fdiv float %381, %382
  %384 = call i32 @ceilf(float %383)
  store i32 %384, i32* %41, align 4
  %385 = load i32, i32* %39, align 4
  store i32 %385, i32* %45, align 4
  br label %386

386:                                              ; preds = %421, %348
  %387 = load i32, i32* %45, align 4
  %388 = load i32, i32* %41, align 4
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %390, label %424

390:                                              ; preds = %386
  %391 = load i32, i32* %38, align 4
  store i32 %391, i32* %44, align 4
  br label %392

392:                                              ; preds = %417, %390
  %393 = load i32, i32* %44, align 4
  %394 = load i32, i32* %40, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %420

396:                                              ; preds = %392
  %397 = load i32, i32* %14, align 4
  %398 = load float, float* %31, align 4
  %399 = load i32, i32* %44, align 4
  %400 = sitofp i32 %399 to float
  %401 = fmul float %398, %400
  %402 = load float, float* %32, align 4
  %403 = load i32, i32* %45, align 4
  %404 = sitofp i32 %403 to float
  %405 = fmul float %402, %404
  %406 = call i32 @fz_pre_translate(i32 %397, float %401, float %405)
  store i32 %406, i32* %46, align 4
  %407 = load i32*, i32** %12, align 8
  %408 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %409 = load i32, i32* %46, align 4
  %410 = load i32, i32* %35, align 4
  %411 = bitcast %struct.TYPE_24__* %29 to { <2 x float>, <2 x float> }*
  %412 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %411, i32 0, i32 0
  %413 = load <2 x float>, <2 x float>* %412, align 4
  %414 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %411, i32 0, i32 1
  %415 = load <2 x float>, <2 x float>* %414, align 4
  %416 = call i32 @xps_paint_tiling_brush(i32* %407, %struct.TYPE_23__* %408, i32 %409, <2 x float> %413, <2 x float> %415, i32 %410, %struct.closure* %22)
  br label %417

417:                                              ; preds = %396
  %418 = load i32, i32* %44, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %44, align 4
  br label %392

420:                                              ; preds = %392
  br label %421

421:                                              ; preds = %420
  %422 = load i32, i32* %45, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %45, align 4
  br label %386

424:                                              ; preds = %386
  br label %436

425:                                              ; preds = %314
  %426 = load i32*, i32** %12, align 8
  %427 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %428 = load i32, i32* %14, align 4
  %429 = load i32, i32* %35, align 4
  %430 = bitcast %struct.TYPE_24__* %29 to { <2 x float>, <2 x float> }*
  %431 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %430, i32 0, i32 0
  %432 = load <2 x float>, <2 x float>* %431, align 4
  %433 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %430, i32 0, i32 1
  %434 = load <2 x float>, <2 x float>* %433, align 4
  %435 = call i32 @xps_paint_tiling_brush(i32* %426, %struct.TYPE_23__* %427, i32 %428, <2 x float> %432, <2 x float> %434, i32 %429, %struct.closure* %22)
  br label %436

436:                                              ; preds = %425, %424
  %437 = load i32*, i32** %12, align 8
  %438 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %439 = load i8*, i8** %15, align 8
  %440 = load i32*, i32** %16, align 8
  %441 = load i8*, i8** %23, align 8
  %442 = call i32 @xps_end_opacity(i32* %437, %struct.TYPE_23__* %438, i8* %439, i32* %440, i8* %441, i32* null)
  br label %443

443:                                              ; preds = %436, %232, %223, %214, %205
  ret void
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i32* @fz_xml_next(i32*) #1

declare dso_local i32 @xps_resolve_resource_reference(i32*, %struct.TYPE_23__*, i32*, i8**, i32**, i32*) #1

declare dso_local i32 @xps_parse_transform(i32*, %struct.TYPE_23__*, i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { <2 x float>, <2 x float> } @xps_parse_rectangle(i32*, %struct.TYPE_23__*, i8*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

declare dso_local i32 @fz_warn(i32*, i8*, float, float) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @xps_begin_opacity(i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @fz_pre_translate(i32, float, float) #1

declare dso_local i32 @fz_pre_scale(i32, float, float) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float>, <2 x float>, i32) #1

declare dso_local i32 @floorf(float) #1

declare dso_local i32 @ceilf(float) #1

declare dso_local i32 @xps_paint_tiling_brush(i32*, %struct.TYPE_23__*, i32, <2 x float>, <2 x float>, i32, %struct.closure*) #1

declare dso_local i32 @xps_end_opacity(i32*, %struct.TYPE_23__*, i8*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
