; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_build_chunk.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_build_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32***, i32***, %struct.TYPE_20__, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32*, i32*, i8*, i8*, i32, i32, i32 }

@minecraft_tex1_for_blocktype = common dso_local global i32 0, align 4
@minecraft_color_for_blocktype = common dso_local global i32 0, align 4
@minecraft_geom_for_blocktype = common dso_local global i32 0, align 4
@BUILD_BUFFER_SIZE = common dso_local global i32 0, align 4
@FACE_BUFFER_SIZE = common dso_local global i32 0, align 4
@SKIP_TERRAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_chunk(i32 %0, i32 %1, [4 x i32*]* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32*]*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca [34 x [34 x [18 x i8]]], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store [4 x i32*]* %2, [4 x i32*]** %7, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 4
  %40 = call i32 @stbvox_set_input_stride(%struct.TYPE_20__* %39, i32 612, i32 18)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 4
  %51 = call %struct.TYPE_18__* @stbvox_get_input_description(%struct.TYPE_20__* %50)
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %12, align 8
  %52 = load i32, i32* @minecraft_tex1_for_blocktype, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @minecraft_color_for_blocktype, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @minecraft_geom_for_blocktype, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 4
  %63 = call i32 @stbvox_reset_buffers(%struct.TYPE_20__* %62)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BUILD_BUFFER_SIZE, align 4
  %70 = call i32 @stbvox_set_buffer(%struct.TYPE_20__* %65, i32 0, i32 0, i32 %68, i32 %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @FACE_BUFFER_SIZE, align 4
  %77 = call i32 @stbvox_set_buffer(%struct.TYPE_20__* %72, i32 0, i32 1, i32 %75, i32 %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 2
  %80 = load i32***, i32**** %79, align 8
  %81 = getelementptr inbounds i32**, i32*** %80, i64 1
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = load i32***, i32**** %89, align 8
  %91 = getelementptr inbounds i32**, i32*** %90, i64 1
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %158, %4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 34
  br i1 %100, label %101, label %161

101:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %154, %101
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 34
  br i1 %104, label %105, label %157

105:                                              ; preds = %102
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load i32***, i32**** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32**, i32*** %108, i64 %110
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 16
  store i32 0, i32* %117, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 3
  %120 = load i32***, i32**** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32**, i32*** %120, i64 %122
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 16
  store i32 255, i32* %129, align 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load i32***, i32**** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32**, i32*** %132, i64 %134
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 17
  store i32 0, i32* %141, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 3
  %144 = load i32***, i32**** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32**, i32*** %144, i64 %146
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 17
  store i32 255, i32* %153, align 4
  br label %154

154:                                              ; preds = %105
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %102

157:                                              ; preds = %102
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %98

161:                                              ; preds = %98
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %250, %161
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 34
  br i1 %164, label %165, label %253

165:                                              ; preds = %162
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %246, %165
  %167 = load i32, i32* %10, align 4
  %168 = icmp slt i32 %167, 34
  br i1 %168, label %169, label %249

169:                                              ; preds = %166
  %170 = load i32, i32* %5, align 4
  %171 = mul nsw i32 %170, 16
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %171, %172
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %6, align 4
  %176 = mul nsw i32 %175, 16
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %176, %177
  %179 = sub nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %15, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %182, %185
  %187 = call i64 @sqrt(i32 %186)
  %188 = sitofp i64 %187 to float
  store float %188, float* %16, align 4
  %189 = load float, float* %16, align 4
  %190 = fdiv float %189, 1.600000e+01
  %191 = fptosi float %190 to i32
  %192 = call i64 @sin(i32 %191)
  %193 = sitofp i64 %192 to float
  store float %193, float* %17, align 4
  %194 = load i32, i32* %14, align 4
  %195 = sub nsw i32 %194, 80
  %196 = load i32, i32* %14, align 4
  %197 = sub nsw i32 %196, 80
  %198 = mul nsw i32 %195, %197
  %199 = load i32, i32* %15, align 4
  %200 = sub nsw i32 %199, 50
  %201 = load i32, i32* %15, align 4
  %202 = sub nsw i32 %201, 50
  %203 = mul nsw i32 %200, %202
  %204 = add nsw i32 %198, %203
  %205 = call i64 @sqrt(i32 %204)
  %206 = sitofp i64 %205 to float
  store float %206, float* %16, align 4
  %207 = load float, float* %16, align 4
  %208 = fdiv float %207, 1.100000e+01
  %209 = fptosi float %208 to i32
  %210 = call i64 @sin(i32 %209)
  %211 = sitofp i64 %210 to float
  store float %211, float* %18, align 4
  store i32 0, i32* %11, align 4
  br label %212

212:                                              ; preds = %242, %169
  %213 = load i32, i32* %11, align 4
  %214 = icmp slt i32 %213, 18
  br i1 %214, label %215, label %245

215:                                              ; preds = %212
  %216 = load i32, i32* %11, align 4
  %217 = sitofp i32 %216 to double
  %218 = fmul double %217, 0x400921FAFC8B007A
  %219 = fdiv double %218, 8.000000e+00
  %220 = fptosi double %219 to i32
  %221 = call i64 @sin(i32 %220)
  %222 = sitofp i64 %221 to float
  store float %222, float* %19, align 4
  %223 = load float, float* %17, align 4
  %224 = load float, float* %18, align 4
  %225 = fmul float %223, %224
  %226 = load float, float* %19, align 4
  %227 = fmul float %225, %226
  store float %227, float* %19, align 4
  %228 = load float, float* %19, align 4
  %229 = call i64 @stb_linear_remap(float %228, i32 -1, i32 1, i32 -20, i32 83)
  %230 = trunc i64 %229 to i32
  %231 = and i32 63, %230
  %232 = trunc i32 %231 to i8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [34 x [34 x [18 x i8]]], [34 x [34 x [18 x i8]]]* %13, i64 0, i64 %234
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [34 x [18 x i8]], [34 x [18 x i8]]* %235, i64 0, i64 %237
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [18 x i8], [18 x i8]* %238, i64 0, i64 %240
  store i8 %232, i8* %241, align 1
  br label %242

242:                                              ; preds = %215
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %11, align 4
  br label %212

245:                                              ; preds = %212
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %10, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %10, align 4
  br label %166

249:                                              ; preds = %166
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %9, align 4
  br label %162

253:                                              ; preds = %162
  store i32 240, i32* %11, align 4
  br label %254

254:                                              ; preds = %440, %253
  %255 = load i32, i32* %11, align 4
  %256 = load i32, i32* @SKIP_TERRAIN, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %443

258:                                              ; preds = %254
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %20, align 4
  %260 = load i32, i32* %11, align 4
  %261 = add nsw i32 %260, 16
  store i32 %261, i32* %21, align 4
  %262 = load i32, i32* %21, align 4
  %263 = icmp eq i32 %262, 256
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  store i32 255, i32* %21, align 4
  br label %265

265:                                              ; preds = %264, %258
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* %6, align 4
  %268 = load i32, i32* %11, align 4
  %269 = ashr i32 %268, 4
  %270 = load [4 x i32*]*, [4 x i32*]** %7, align 8
  %271 = bitcast [4 x i32*]* %270 to i32***
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 2
  %274 = load i32***, i32**** %273, align 8
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 3
  %277 = load i32***, i32**** %276, align 8
  %278 = call i32 @make_map_segment_for_superchunk_preconvert(i32 %266, i32 %267, i32 %269, i32*** %271, i32*** %274, i32*** %277)
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 2
  %281 = load i32***, i32**** %280, align 8
  %282 = getelementptr inbounds i32**, i32*** %281, i64 1
  %283 = load i32**, i32*** %282, align 8
  %284 = getelementptr inbounds i32*, i32** %283, i64 1
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sub nsw i32 1, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 0
  store i32* %289, i32** %291, align 8
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 3
  %294 = load i32***, i32**** %293, align 8
  %295 = getelementptr inbounds i32**, i32*** %294, i64 1
  %296 = load i32**, i32*** %295, align 8
  %297 = getelementptr inbounds i32*, i32** %296, i64 1
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %11, align 4
  %300 = sub nsw i32 1, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 1
  store i32* %302, i32** %304, align 8
  %305 = getelementptr inbounds [34 x [34 x [18 x i8]]], [34 x [34 x [18 x i8]]]* %13, i64 0, i64 1
  %306 = getelementptr inbounds [34 x [18 x i8]], [34 x [18 x i8]]* %305, i64 0, i64 1
  %307 = load i32, i32* %11, align 4
  %308 = sub nsw i32 1, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [18 x i8], [18 x i8]* %306, i64 0, i64 %309
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 2
  store i8* %310, i8** %312, align 8
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 4
  %315 = load i32, i32* %20, align 4
  %316 = load i32, i32* %21, align 4
  %317 = call i32 @stbvox_set_input_range(%struct.TYPE_20__* %314, i32 0, i32 0, i32 %315, i32 32, i32 32, i32 %316)
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 4
  %320 = call i32 @stbvox_set_default_mesh(%struct.TYPE_20__* %319, i32 0)
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 4
  %323 = call i32 @stbvox_make_mesh(%struct.TYPE_20__* %322)
  store i32 0, i32* %9, align 4
  br label %324

324:                                              ; preds = %436, %265
  %325 = load i32, i32* %9, align 4
  %326 = icmp slt i32 %325, 34
  br i1 %326, label %327, label %439

327:                                              ; preds = %324
  store i32 0, i32* %10, align 4
  br label %328

328:                                              ; preds = %432, %327
  %329 = load i32, i32* %10, align 4
  %330 = icmp slt i32 %329, 34
  br i1 %330, label %331, label %435

331:                                              ; preds = %328
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 2
  %334 = load i32***, i32**** %333, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32**, i32*** %334, i64 %336
  %338 = load i32**, i32*** %337, align 8
  %339 = load i32, i32* %10, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32*, i32** %338, i64 %340
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 2
  %347 = load i32***, i32**** %346, align 8
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32**, i32*** %347, i64 %349
  %351 = load i32**, i32*** %350, align 8
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32*, i32** %351, i64 %353
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 16
  store i32 %344, i32* %356, align 4
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 2
  %359 = load i32***, i32**** %358, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32**, i32*** %359, i64 %361
  %363 = load i32**, i32*** %362, align 8
  %364 = load i32, i32* %10, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32*, i32** %363, i64 %365
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 2
  %372 = load i32***, i32**** %371, align 8
  %373 = load i32, i32* %9, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32**, i32*** %372, i64 %374
  %376 = load i32**, i32*** %375, align 8
  %377 = load i32, i32* %10, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32*, i32** %376, i64 %378
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 17
  store i32 %369, i32* %381, align 4
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 3
  %384 = load i32***, i32**** %383, align 8
  %385 = load i32, i32* %9, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32**, i32*** %384, i64 %386
  %388 = load i32**, i32*** %387, align 8
  %389 = load i32, i32* %10, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32*, i32** %388, i64 %390
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 0
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %395, i32 0, i32 3
  %397 = load i32***, i32**** %396, align 8
  %398 = load i32, i32* %9, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32**, i32*** %397, i64 %399
  %401 = load i32**, i32*** %400, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32*, i32** %401, i64 %403
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 16
  store i32 %394, i32* %406, align 4
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i32 0, i32 3
  %409 = load i32***, i32**** %408, align 8
  %410 = load i32, i32* %9, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32**, i32*** %409, i64 %411
  %413 = load i32**, i32*** %412, align 8
  %414 = load i32, i32* %10, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32*, i32** %413, i64 %415
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %421 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %420, i32 0, i32 3
  %422 = load i32***, i32**** %421, align 8
  %423 = load i32, i32* %9, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32**, i32*** %422, i64 %424
  %426 = load i32**, i32*** %425, align 8
  %427 = load i32, i32* %10, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32*, i32** %426, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 17
  store i32 %419, i32* %431, align 4
  br label %432

432:                                              ; preds = %331
  %433 = load i32, i32* %10, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %10, align 4
  br label %328

435:                                              ; preds = %328
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %9, align 4
  br label %324

439:                                              ; preds = %324
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %11, align 4
  %442 = sub nsw i32 %441, 16
  store i32 %442, i32* %11, align 4
  br label %254

443:                                              ; preds = %254
  %444 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 4
  %446 = load i32, i32* %5, align 4
  %447 = mul nsw i32 %446, 16
  %448 = load i32, i32* %6, align 4
  %449 = mul nsw i32 %448, 16
  %450 = call i32 @stbvox_set_mesh_coordinates(%struct.TYPE_20__* %445, i32 %447, i32 %449, i32 0)
  %451 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %452 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %451, i32 0, i32 4
  %453 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %453, i32 0, i32 7
  %455 = load i32, i32* %454, align 8
  %456 = call i32 @stbvox_get_transform(%struct.TYPE_20__* %452, i32 %455)
  %457 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %457, i32 0, i32 4
  %459 = call i32 @stbvox_set_input_range(%struct.TYPE_20__* %458, i32 0, i32 0, i32 0, i32 32, i32 32, i32 255)
  %460 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %461 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %460, i32 0, i32 4
  %462 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %462, i32 0, i32 6
  %464 = load i32, i32* %463, align 4
  %465 = call i32 @stbvox_get_bounds(%struct.TYPE_20__* %461, i32 %464)
  %466 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i32 0, i32 4
  %468 = call i32 @stbvox_get_quad_count(%struct.TYPE_20__* %467, i32 0)
  %469 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %469, i32 0, i32 5
  store i32 %468, i32* %470, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stbvox_set_input_stride(%struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @stbvox_get_input_description(%struct.TYPE_20__*) #1

declare dso_local i32 @stbvox_reset_buffers(%struct.TYPE_20__*) #1

declare dso_local i32 @stbvox_set_buffer(%struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i64 @sqrt(i32) #1

declare dso_local i64 @sin(i32) #1

declare dso_local i64 @stb_linear_remap(float, i32, i32, i32, i32) #1

declare dso_local i32 @make_map_segment_for_superchunk_preconvert(i32, i32, i32, i32***, i32***, i32***) #1

declare dso_local i32 @stbvox_set_input_range(%struct.TYPE_20__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stbvox_set_default_mesh(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @stbvox_make_mesh(%struct.TYPE_20__*) #1

declare dso_local i32 @stbvox_set_mesh_coordinates(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @stbvox_get_transform(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @stbvox_get_bounds(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @stbvox_get_quad_count(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
