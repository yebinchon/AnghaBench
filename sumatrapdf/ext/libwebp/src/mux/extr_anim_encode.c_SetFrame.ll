; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_SetFrame.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_SetFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, i32, i32, %struct.TYPE_20__, %struct.TYPE_20__, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i64 }

@VP8_ENC_OK = common dso_local global i64 0, align 8
@CANDIDATE_COUNT = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_INVALID_CONFIGURATION = common dso_local global i64 0, align 8
@WEBP_MUX_DISPOSE_BACKGROUND = common dso_local global i32 0, align 4
@WEBP_MUX_DISPOSE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_20__*, i32, i32*, i32*)* @SetFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetFrame(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_22__, align 4
  %26 = alloca %struct.TYPE_22__, align 4
  %27 = alloca %struct.TYPE_20__, align 4
  %28 = alloca %struct.TYPE_20__, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %31 = load i64, i64* @VP8_ENC_OK, align 8
  store i64 %31, i64* %13, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 8
  store i32* %33, i32** %14, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 7
  store i32* %35, i32** %15, align 8
  %36 = load i32, i32* @CANDIDATE_COUNT, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %16, align 8
  %39 = alloca %struct.TYPE_23__, i64 %37, align 16
  store i64 %37, i64* %17, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %5
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %45, %5
  %52 = phi i1 [ true, %5 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %56, %51
  %63 = phi i1 [ true, %51 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %20, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %62
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %74, %62
  %81 = phi i1 [ false, %62 ], [ %79, %74 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %24, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = bitcast %struct.TYPE_20__* %27 to i8*
  %85 = bitcast %struct.TYPE_20__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 8, i1 false)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %87 = bitcast %struct.TYPE_20__* %28 to i8*
  %88 = bitcast %struct.TYPE_20__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 8, i1 false)
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  store i32 0, i32* %90, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %94 = bitcast %struct.TYPE_20__* %92 to i8*
  %95 = bitcast %struct.TYPE_20__* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 4 %95, i64 8, i1 false)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %80
  %103 = bitcast %struct.TYPE_20__* %97 to i8*
  %104 = bitcast %struct.TYPE_20__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 4 %104, i64 8, i1 false)
  br label %108

105:                                              ; preds = %80
  %106 = bitcast %struct.TYPE_20__* %97 to i8*
  %107 = bitcast %struct.TYPE_20__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 4 %107, i64 8, i1 false)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32*, i32** %11, align 8
  store i32 0, i32* %109, align 4
  %110 = load i32, i32* %22, align 4
  %111 = call i32 @SubFrameParamsInit(%struct.TYPE_22__* %25, i32 1, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = call i32 @SubFrameParamsInit(%struct.TYPE_22__* %26, i32 0, i32 0)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113, %108
  %117 = load i64, i64* @VP8_ENC_ERROR_INVALID_CONFIGURATION, align 8
  store i64 %117, i64* %6, align 8
  store i32 1, i32* %29, align 4
  br label %289

118:                                              ; preds = %113
  %119 = mul nuw i64 16, %37
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memset(%struct.TYPE_23__* %39, i32 0, i32 %120)
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %21, align 4
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @GetSubRects(i32* %122, i32* %123, i32 %124, i32 %125, i32 %127, %struct.TYPE_22__* %25)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %118
  %131 = load i64, i64* @VP8_ENC_ERROR_INVALID_CONFIGURATION, align 8
  store i64 %131, i64* %13, align 8
  br label %262

132:                                              ; preds = %118
  %133 = load i32, i32* %19, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %137 = call i64 @IsEmptyRect(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %135, %132
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %144 = call i64 @IsEmptyRect(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142, %135
  %147 = load i32, i32* %22, align 4
  %148 = call i32 @assert(i32 %147)
  %149 = load i32*, i32** %11, align 8
  store i32 1, i32* %149, align 4
  br label %285

150:                                              ; preds = %142, %139
  %151 = load i32, i32* %24, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %218

153:                                              ; preds = %150
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 3
  store i32* %155, i32** %30, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load i32*, i32** %30, align 8
  %158 = call i32 @WebPCopyPixels(i32* %156, i32* %157)
  %159 = load i32, i32* @WEBP_MUX_DISPOSE_BACKGROUND, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 2
  %162 = load i32*, i32** %30, align 8
  %163 = call i32 @DisposeFrameRectangle(i32 %159, i32* %161, i32* %162)
  %164 = load i32*, i32** %30, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %21, align 4
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @GetSubRects(i32* %164, i32* %165, i32 %166, i32 %167, i32 %169, %struct.TYPE_22__* %26)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %153
  %173 = load i64, i64* @VP8_ENC_ERROR_INVALID_CONFIGURATION, align 8
  store i64 %173, i64* %13, align 8
  br label %262

174:                                              ; preds = %153
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %176 = call i64 @IsEmptyRect(i32* %175)
  %177 = icmp ne i64 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  %182 = call i64 @IsEmptyRect(i32* %181)
  %183 = icmp ne i64 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %174
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  store i32 1, i32* %193, align 4
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  store i32 1, i32* %194, align 4
  br label %217

195:                                              ; preds = %174
  %196 = load i32, i32* %18, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %200 = call i64 @RectArea(i32* %199)
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %202 = call i64 @RectArea(i32* %201)
  %203 = icmp slt i64 %200, %202
  br i1 %203, label %213, label %204

204:                                              ; preds = %198, %195
  %205 = load i32, i32* %18, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %216, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 1
  %209 = call i64 @RectArea(i32* %208)
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %211 = call i64 @RectArea(i32* %210)
  %212 = icmp slt i64 %209, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %207, %198
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  store i32 1, i32* %214, align 4
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  store i32 0, i32* %215, align 4
  br label %216

216:                                              ; preds = %213, %207, %204
  br label %217

217:                                              ; preds = %216, %192
  br label %218

218:                                              ; preds = %217, %150
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %224 = load i32, i32* @WEBP_MUX_DISPOSE_NONE, align 4
  %225 = load i32, i32* %18, align 4
  %226 = load i32, i32* %9, align 4
  %227 = call i64 @GenerateCandidates(%struct.TYPE_21__* %223, %struct.TYPE_23__* %39, i32 %224, i32 %225, i32 %226, %struct.TYPE_22__* %25, %struct.TYPE_20__* %27, %struct.TYPE_20__* %28)
  store i64 %227, i64* %13, align 8
  %228 = load i64, i64* %13, align 8
  %229 = load i64, i64* @VP8_ENC_OK, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %222
  br label %262

232:                                              ; preds = %222
  br label %233

233:                                              ; preds = %232, %218
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %257

237:                                              ; preds = %233
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = load i32, i32* %24, align 4
  %246 = call i32 @assert(i32 %245)
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %248 = load i32, i32* @WEBP_MUX_DISPOSE_BACKGROUND, align 4
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %9, align 4
  %251 = call i64 @GenerateCandidates(%struct.TYPE_21__* %247, %struct.TYPE_23__* %39, i32 %248, i32 %249, i32 %250, %struct.TYPE_22__* %26, %struct.TYPE_20__* %27, %struct.TYPE_20__* %28)
  store i64 %251, i64* %13, align 8
  %252 = load i64, i64* %13, align 8
  %253 = load i64, i64* @VP8_ENC_OK, align 8
  %254 = icmp ne i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %237
  br label %262

256:                                              ; preds = %237
  br label %257

257:                                              ; preds = %256, %233
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %259 = load i32, i32* %9, align 4
  %260 = load i32*, i32** %10, align 8
  %261 = call i32 @PickBestCandidate(%struct.TYPE_21__* %258, %struct.TYPE_23__* %39, i32 %259, i32* %260)
  br label %285

262:                                              ; preds = %255, %231, %172, %130
  store i32 0, i32* %12, align 4
  br label %263

263:                                              ; preds = %281, %262
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* @CANDIDATE_COUNT, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %284

267:                                              ; preds = %263
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %267
  %275 = load i32, i32* %12, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 0
  %279 = call i32 @WebPMemoryWriterClear(i32* %278)
  br label %280

280:                                              ; preds = %274, %267
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %12, align 4
  br label %263

284:                                              ; preds = %263
  br label %285

285:                                              ; preds = %284, %257, %146
  %286 = call i32 @SubFrameParamsFree(%struct.TYPE_22__* %25)
  %287 = call i32 @SubFrameParamsFree(%struct.TYPE_22__* %26)
  %288 = load i64, i64* %13, align 8
  store i64 %288, i64* %6, align 8
  store i32 1, i32* %29, align 4
  br label %289

289:                                              ; preds = %285, %116
  %290 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %290)
  %291 = load i64, i64* %6, align 8
  ret i64 %291
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SubFrameParamsInit(%struct.TYPE_22__*, i32, i32) #3

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #3

declare dso_local i32 @GetSubRects(i32*, i32*, i32, i32, i32, %struct.TYPE_22__*) #3

declare dso_local i64 @IsEmptyRect(i32*) #3

declare dso_local i32 @assert(i32) #3

declare dso_local i32 @WebPCopyPixels(i32*, i32*) #3

declare dso_local i32 @DisposeFrameRectangle(i32, i32*, i32*) #3

declare dso_local i64 @RectArea(i32*) #3

declare dso_local i64 @GenerateCandidates(%struct.TYPE_21__*, %struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #3

declare dso_local i32 @PickBestCandidate(%struct.TYPE_21__*, %struct.TYPE_23__*, i32, i32*) #3

declare dso_local i32 @WebPMemoryWriterClear(i32*) #3

declare dso_local i32 @SubFrameParamsFree(%struct.TYPE_22__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
