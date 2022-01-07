; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_EncodeStreamHook.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_EncodeStreamHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i64, %struct.TYPE_18__*, %struct.TYPE_21__*, %struct.TYPE_19__*, i32*, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i64 }

@VP8_ENC_OK = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@kPalette = common dso_local global i32 0, align 4
@kSubGreen = common dso_local global i32 0, align 4
@kSpatialSubGreen = common dso_local global i32 0, align 4
@kSpatial = common dso_local global i32 0, align 4
@kEncoderNone = common dso_local global i8* null, align 8
@MAX_COLOR_CACHE_BITS = common dso_local global i32 0, align 4
@kEncoderNearLossless = common dso_local global i64 0, align 8
@kEncoderPalette = common dso_local global i64 0, align 8
@TRANSFORM_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @EncodeStreamHook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EncodeStreamHook(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %5, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 9
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %6, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %7, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %8, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %9, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %11, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %14, align 8
  %57 = load i64, i64* @VP8_ENC_OK, align 8
  store i64 %57, i64* %15, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %17, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %18, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = call i64 @VP8LBitWriterNumBytes(i32* %70)
  store i64 %71, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i64 0, i64* %24, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %25, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @VP8LBitWriterInit(i32* %26, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %2
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @VP8LBitWriterClone(i32* %81, i32* %26)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80, %2
  %85 = load i64, i64* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 8
  store i64 %85, i64* %15, align 8
  br label %424

86:                                               ; preds = %80, %77
  store i32 0, i32* %23, align 4
  br label %87

87:                                               ; preds = %418, %86
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %421

91:                                               ; preds = %87
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %93 = load i32, i32* %23, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %27, align 4
  %98 = load i32, i32* %27, align 4
  %99 = load i32, i32* @kPalette, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %27, align 4
  %105 = load i32, i32* @kSubGreen, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %91
  %108 = load i32, i32* %27, align 4
  %109 = load i32, i32* @kSpatialSubGreen, align 4
  %110 = icmp eq i32 %108, %109
  br label %111

111:                                              ; preds = %107, %91
  %112 = phi i1 [ true, %91 ], [ %110, %107 ]
  %113 = zext i1 %112 to i32
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %27, align 4
  %117 = load i32, i32* @kSpatial, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %27, align 4
  %121 = load i32, i32* @kSpatialSubGreen, align 4
  %122 = icmp eq i32 %120, %121
  br label %123

123:                                              ; preds = %119, %111
  %124 = phi i1 [ true, %111 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 3
  store i32 0, i32* %132, align 4
  br label %145

133:                                              ; preds = %123
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %141

137:                                              ; preds = %133
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  br label %141

141:                                              ; preds = %137, %136
  %142 = phi i32 [ 0, %136 ], [ %140, %137 ]
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %130
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 6
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 10
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = call i32 @VP8LBackwardRefsClear(i32* %151)
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 10
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = call i32 @VP8LBackwardRefsClear(i32* %156)
  %158 = load i8*, i8** @kEncoderNone, align 8
  %159 = ptrtoint i8* %158 to i64
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %202

166:                                              ; preds = %145
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %17, align 4
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %170 = call i64 @EncodePalette(i32* %167, i32 %168, %struct.TYPE_19__* %169)
  store i64 %170, i64* %15, align 8
  %171 = load i64, i64* %15, align 8
  %172 = load i64, i64* @VP8_ENC_OK, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %424

175:                                              ; preds = %166
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %177 = load i32, i32* %22, align 4
  %178 = call i64 @MapImageFromPalette(%struct.TYPE_19__* %176, i32 %177)
  store i64 %178, i64* %15, align 8
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* @VP8_ENC_OK, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %424

183:                                              ; preds = %175
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %183
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @MAX_COLOR_CACHE_BITS, align 4
  %191 = shl i32 1, %190
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @BitsLog2Floor(i32 %196)
  %198 = add nsw i64 %197, 1
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 6
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %193, %186, %183
  br label %202

202:                                              ; preds = %201, %145
  %203 = load i32, i32* %22, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %282, label %205

205:                                              ; preds = %202
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @kEncoderNearLossless, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %225

211:                                              ; preds = %205
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @kEncoderPalette, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %211
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %219 = call i64 @MakeInputImageCopy(%struct.TYPE_19__* %218)
  store i64 %219, i64* %15, align 8
  %220 = load i64, i64* %15, align 8
  %221 = load i64, i64* @VP8_ENC_OK, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %424

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224, %211, %205
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %18, align 4
  %236 = load i32*, i32** %8, align 8
  %237 = call i32 @ApplySubtractGreen(%struct.TYPE_19__* %231, i32 %234, i32 %235, i32* %236)
  br label %238

238:                                              ; preds = %230, %225
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %261

243:                                              ; preds = %238
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 9
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %16, align 4
  %250 = load i32, i32* %17, align 4
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %8, align 8
  %255 = call i64 @ApplyPredictFilter(%struct.TYPE_19__* %244, i32 %247, i32 %248, i32 %249, i32 %250, i32 %253, i32* %254)
  store i64 %255, i64* %15, align 8
  %256 = load i64, i64* %15, align 8
  %257 = load i64, i64* @VP8_ENC_OK, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %243
  br label %424

260:                                              ; preds = %243
  br label %261

261:                                              ; preds = %260, %238
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %261
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 9
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* %17, align 4
  %274 = load i32*, i32** %8, align 8
  %275 = call i64 @ApplyCrossColorFilter(%struct.TYPE_19__* %267, i32 %270, i32 %271, i32 %272, i32 %273, i32* %274)
  store i64 %275, i64* %15, align 8
  %276 = load i64, i64* %15, align 8
  %277 = load i64, i64* @VP8_ENC_OK, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %266
  br label %424

280:                                              ; preds = %266
  br label %281

281:                                              ; preds = %280, %261
  br label %282

282:                                              ; preds = %281, %202
  %283 = load i32*, i32** %8, align 8
  %284 = load i32, i32* @TRANSFORM_PRESENT, align 4
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = call i32 @VP8LPutBits(i32* %283, i32 %287, i32 1)
  %289 = load i32*, i32** %8, align 8
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 12
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 11
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 10
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %18, align 4
  %302 = load i32, i32* %16, align 4
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* %10, align 4
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %306 = load i32, i32* %23, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i64 %307
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 6
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 8
  %313 = load i32, i32* %312, align 4
  %314 = load i64, i64* %19, align 8
  %315 = call i64 @EncodeImageInternal(i32* %289, i32 %292, i32* %294, i32* %297, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, %struct.TYPE_21__* %308, i64* %310, i32 %313, i64 %314, i32* %20, i32* %21)
  store i64 %315, i64* %15, align 8
  %316 = load i64, i64* %15, align 8
  %317 = load i64, i64* @VP8_ENC_OK, align 8
  %318 = icmp ne i64 %316, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %282
  br label %424

320:                                              ; preds = %282
  %321 = load i32, i32* %23, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %328, label %323

323:                                              ; preds = %320
  %324 = load i32*, i32** %8, align 8
  %325 = call i64 @VP8LBitWriterNumBytes(i32* %324)
  %326 = load i64, i64* %24, align 8
  %327 = icmp ult i64 %325, %326
  br i1 %327, label %328, label %411

328:                                              ; preds = %323, %320
  %329 = load i32*, i32** %8, align 8
  %330 = call i64 @VP8LBitWriterNumBytes(i32* %329)
  store i64 %330, i64* %24, align 8
  %331 = load i32*, i32** %8, align 8
  %332 = call i32 @VP8LBitWriterSwap(i32* %331, i32* %26)
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %334 = icmp ne %struct.TYPE_18__* %333, null
  br i1 %334, label %335, label %410

335:                                              ; preds = %328
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 0
  store i32 0, i32* %337, align 8
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %335
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, 1
  store i32 %346, i32* %344, align 8
  br label %347

347:                                              ; preds = %342, %335
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %347
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, 2
  store i32 %356, i32* %354, align 8
  br label %357

357:                                              ; preds = %352, %347
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %357
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = or i32 %365, 4
  store i32 %366, i32* %364, align 8
  br label %367

367:                                              ; preds = %362, %357
  %368 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %367
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = or i32 %375, 8
  store i32 %376, i32* %374, align 8
  br label %377

377:                                              ; preds = %372, %367
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 8
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %382 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %381, i32 0, i32 7
  store i32 %380, i32* %382, align 4
  %383 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i32 0, i32 6
  store i32 %385, i32* %387, align 8
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 6
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 5
  store i64 %390, i64* %392, align 8
  %393 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %396, i32 0, i32 1
  store i32 %395, i32* %397, align 4
  %398 = load i64, i64* %24, align 8
  %399 = load i64, i64* %19, align 8
  %400 = sub i64 %398, %399
  %401 = trunc i64 %400 to i32
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 2
  store i32 %401, i32* %403, align 8
  %404 = load i32, i32* %20, align 4
  %405 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %406 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %405, i32 0, i32 3
  store i32 %404, i32* %406, align 4
  %407 = load i32, i32* %21, align 4
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %408, i32 0, i32 4
  store i32 %407, i32* %409, align 8
  br label %410

410:                                              ; preds = %377, %328
  br label %411

411:                                              ; preds = %410, %323
  %412 = load i32, i32* %12, align 4
  %413 = icmp sgt i32 %412, 1
  br i1 %413, label %414, label %417

414:                                              ; preds = %411
  %415 = load i32*, i32** %8, align 8
  %416 = call i32 @VP8LBitWriterReset(i32* %25, i32* %415)
  br label %417

417:                                              ; preds = %414, %411
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %23, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %23, align 4
  br label %87

421:                                              ; preds = %87
  %422 = load i32*, i32** %8, align 8
  %423 = call i32 @VP8LBitWriterSwap(i32* %26, i32* %422)
  br label %424

424:                                              ; preds = %421, %319, %279, %259, %223, %182, %174, %84
  %425 = call i32 @VP8LBitWriterWipeOut(i32* %26)
  %426 = load i64, i64* %15, align 8
  %427 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %427, i32 0, i32 3
  store i64 %426, i64* %428, align 8
  %429 = load i64, i64* %15, align 8
  %430 = load i64, i64* @VP8_ENC_OK, align 8
  %431 = icmp eq i64 %429, %430
  %432 = zext i1 %431 to i32
  ret i32 %432
}

declare dso_local i64 @VP8LBitWriterNumBytes(i32*) #1

declare dso_local i32 @VP8LBitWriterInit(i32*, i32) #1

declare dso_local i32 @VP8LBitWriterClone(i32*, i32*) #1

declare dso_local i32 @VP8LBackwardRefsClear(i32*) #1

declare dso_local i64 @EncodePalette(i32*, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @MapImageFromPalette(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @BitsLog2Floor(i32) #1

declare dso_local i64 @MakeInputImageCopy(%struct.TYPE_19__*) #1

declare dso_local i32 @ApplySubtractGreen(%struct.TYPE_19__*, i32, i32, i32*) #1

declare dso_local i64 @ApplyPredictFilter(%struct.TYPE_19__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ApplyCrossColorFilter(%struct.TYPE_19__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VP8LPutBits(i32*, i32, i32) #1

declare dso_local i64 @EncodeImageInternal(i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_21__*, i64*, i32, i64, i32*, i32*) #1

declare dso_local i32 @VP8LBitWriterSwap(i32*, i32*) #1

declare dso_local i32 @VP8LBitWriterReset(i32*, i32*) #1

declare dso_local i32 @VP8LBitWriterWipeOut(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
