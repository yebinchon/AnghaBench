; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-psd.c_psd_write_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-psd.c_psd_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@psd_write_header.psdsig = internal constant [12 x i8] c"8BPS\00\01\00\00\00\00\00\00", align 1
@psd_write_header.ressig = internal constant [4 x i8] c"8BIM", align 1
@.str = private unnamed_addr constant [7 x i8] c"Spot%d\00", align 1
@fz_default_color_params = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\07Profile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_14__*)* @psd_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psd_write_header(i32* %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [32 x i8], align 16
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca [32 x i8], align 16
  %26 = alloca [4 x float], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = bitcast i8* %28 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %7, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 8
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %8, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %50, %54
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %14, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %19, align 8
  store i64 0, i64* %18, align 8
  store i8* null, i8** %17, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %3
  %68 = load i32*, i32** %4, align 8
  %69 = call %struct.TYPE_14__* @fz_device_cmyk(i32* %68)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %19, align 8
  br label %70

70:                                               ; preds = %67, %3
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = call i32 @fz_colorspace_is_subtractive(i32* %71, %struct.TYPE_14__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %82, i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @psd_write_header.psdsig, i64 0, i64 0), i32 12)
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @fz_write_int16_be(i32* %85, i32* %86, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @fz_write_int32_be(i32* %89, i32* %90, i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @fz_write_int32_be(i32* %93, i32* %94, i32 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @fz_write_int16_be(i32* %97, i32* %98, i32 8)
  %100 = load i32, i32* %13, align 4
  switch i32 %100, label %113 [
    i32 0, label %101
    i32 1, label %101
    i32 3, label %105
    i32 4, label %109
  ]

101:                                              ; preds = %81, %81
  %102 = load i32*, i32** %4, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @fz_write_int16_be(i32* %102, i32* %103, i32 1)
  br label %117

105:                                              ; preds = %81
  %106 = load i32*, i32** %4, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @fz_write_int16_be(i32* %106, i32* %107, i32 3)
  br label %117

109:                                              ; preds = %81
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @fz_write_int16_be(i32* %110, i32* %111, i32 4)
  br label %117

113:                                              ; preds = %81
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @fz_write_int16_be(i32* %114, i32* %115, i32 7)
  br label %117

117:                                              ; preds = %113, %109, %105, %101
  %118 = load i32*, i32** %4, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @fz_write_int32_be(i32* %118, i32* %119, i32 0)
  store i64 0, i64* %16, align 8
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %149, %117
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %152

125:                                              ; preds = %121
  %126 = load i32*, i32** %4, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i8* @fz_separation_name(i32* %126, i32* %127, i32 %128)
  store i8* %129, i8** %20, align 8
  %130 = load i8*, i8** %20, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %134, 4
  %136 = call i32 @fz_snprintf(i8* %133, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8* %137, i8** %20, align 8
  br label %138

138:                                              ; preds = %132, %125
  %139 = load i8*, i8** %20, align 8
  %140 = call i64 @strlen(i8* %139)
  store i64 %140, i64* %22, align 8
  %141 = load i64, i64* %22, align 8
  %142 = icmp ugt i64 %141, 255
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i64 255, i64* %22, align 8
  br label %144

144:                                              ; preds = %143, %138
  %145 = load i64, i64* %22, align 8
  %146 = add i64 %145, 1
  %147 = load i64, i64* %16, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %16, align 8
  br label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  br label %121

152:                                              ; preds = %121
  %153 = load i32*, i32** %4, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load i64, i64* %16, align 8
  %159 = add i64 %158, 1
  %160 = and i64 %159, -2
  %161 = add i64 12, %160
  br label %163

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %157
  %164 = phi i64 [ %161, %157 ], [ 0, %162 ]
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i32, i32* %11, align 4
  %169 = mul nsw i32 14, %168
  %170 = add nsw i32 12, %169
  br label %172

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171, %167
  %173 = phi i32 [ %170, %167 ], [ 0, %171 ]
  %174 = sext i32 %173 to i64
  %175 = add i64 %164, %174
  %176 = add i64 %175, 28
  %177 = load i64, i64* %18, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i64, i64* %18, align 8
  %181 = add i64 %180, 19
  %182 = and i64 %181, -2
  br label %184

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %183, %179
  %185 = phi i64 [ %182, %179 ], [ 0, %183 ]
  %186 = add i64 %176, %185
  %187 = trunc i64 %186 to i32
  %188 = call i32 @fz_write_int32_be(i32* %153, i32* %154, i32 %187)
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %328

191:                                              ; preds = %184
  %192 = load i32*, i32** %4, align 8
  %193 = load i32*, i32** %8, align 8
  %194 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %192, i32* %193, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @psd_write_header.ressig, i64 0, i64 0), i32 4)
  %195 = load i32*, i32** %4, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = call i32 @fz_write_int16_be(i32* %195, i32* %196, i32 1006)
  %198 = load i32*, i32** %4, align 8
  %199 = load i32*, i32** %8, align 8
  %200 = call i32 @fz_write_int16_be(i32* %198, i32* %199, i32 0)
  %201 = load i32*, i32** %4, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = load i64, i64* %16, align 8
  %204 = add i64 %203, 1
  %205 = and i64 %204, -2
  %206 = trunc i64 %205 to i32
  %207 = call i32 @fz_write_int32_be(i32* %201, i32* %202, i32 %206)
  store i32 0, i32* %15, align 4
  br label %208

208:                                              ; preds = %242, %191
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %245

212:                                              ; preds = %208
  %213 = load i32*, i32** %4, align 8
  %214 = load i32*, i32** %14, align 8
  %215 = load i32, i32* %15, align 4
  %216 = call i8* @fz_separation_name(i32* %213, i32* %214, i32 %215)
  store i8* %216, i8** %24, align 8
  %217 = load i8*, i8** %24, align 8
  %218 = icmp eq i8* %217, null
  br i1 %218, label %219, label %225

219:                                              ; preds = %212
  %220 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  %221 = load i32, i32* %15, align 4
  %222 = sub nsw i32 %221, 4
  %223 = call i32 @fz_snprintf(i8* %220, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %222)
  %224 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  store i8* %224, i8** %24, align 8
  br label %225

225:                                              ; preds = %219, %212
  %226 = load i8*, i8** %24, align 8
  %227 = call i64 @strlen(i8* %226)
  store i64 %227, i64* %23, align 8
  %228 = load i64, i64* %23, align 8
  %229 = icmp ugt i64 %228, 255
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  store i64 255, i64* %23, align 8
  br label %231

231:                                              ; preds = %230, %225
  %232 = load i32*, i32** %4, align 8
  %233 = load i32*, i32** %8, align 8
  %234 = load i64, i64* %23, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @fz_write_byte(i32* %232, i32* %233, i32 %235)
  %237 = load i32*, i32** %4, align 8
  %238 = load i32*, i32** %8, align 8
  %239 = load i8*, i8** %24, align 8
  %240 = load i64, i64* %23, align 8
  %241 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %237, i32* %238, i8* %239, i64 %240)
  br label %242

242:                                              ; preds = %231
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %15, align 4
  br label %208

245:                                              ; preds = %208
  %246 = load i64, i64* %16, align 8
  %247 = and i64 %246, 1
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32*, i32** %4, align 8
  %251 = load i32*, i32** %8, align 8
  %252 = call i32 @fz_write_byte(i32* %250, i32* %251, i32 0)
  br label %253

253:                                              ; preds = %249, %245
  %254 = load i32*, i32** %4, align 8
  %255 = load i32*, i32** %8, align 8
  %256 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %254, i32* %255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @psd_write_header.ressig, i64 0, i64 0), i32 4)
  %257 = load i32*, i32** %4, align 8
  %258 = load i32*, i32** %8, align 8
  %259 = call i32 @fz_write_int16_be(i32* %257, i32* %258, i32 1007)
  %260 = load i32*, i32** %4, align 8
  %261 = load i32*, i32** %8, align 8
  %262 = call i32 @fz_write_int16_be(i32* %260, i32* %261, i32 0)
  %263 = load i32*, i32** %4, align 8
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* %11, align 4
  %266 = mul nsw i32 14, %265
  %267 = call i32 @fz_write_int32_be(i32* %263, i32* %264, i32 %266)
  store i32 0, i32* %15, align 4
  br label %268

268:                                              ; preds = %324, %253
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* %11, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %327

272:                                              ; preds = %268
  %273 = load i32*, i32** %4, align 8
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %15, align 4
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %277 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 0
  %278 = load i32, i32* @fz_default_color_params, align 4
  %279 = call i32 @fz_separation_equivalent(i32* %273, i32* %274, i32 %275, %struct.TYPE_14__* %276, float* %277, i32* null, i32 %278)
  %280 = load i32*, i32** %4, align 8
  %281 = load i32*, i32** %8, align 8
  %282 = call i32 @fz_write_int16_be(i32* %280, i32* %281, i32 2)
  %283 = load i32*, i32** %4, align 8
  %284 = load i32*, i32** %8, align 8
  %285 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 0
  %286 = load float, float* %285, align 16
  %287 = fsub float 1.000000e+00, %286
  %288 = fmul float 6.553500e+04, %287
  %289 = fptosi float %288 to i32
  %290 = call i32 @fz_write_int16_be(i32* %283, i32* %284, i32 %289)
  %291 = load i32*, i32** %4, align 8
  %292 = load i32*, i32** %8, align 8
  %293 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 1
  %294 = load float, float* %293, align 4
  %295 = fsub float 1.000000e+00, %294
  %296 = fmul float 6.553500e+04, %295
  %297 = fptosi float %296 to i32
  %298 = call i32 @fz_write_int16_be(i32* %291, i32* %292, i32 %297)
  %299 = load i32*, i32** %4, align 8
  %300 = load i32*, i32** %8, align 8
  %301 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 2
  %302 = load float, float* %301, align 8
  %303 = fsub float 1.000000e+00, %302
  %304 = fmul float 6.553500e+04, %303
  %305 = fptosi float %304 to i32
  %306 = call i32 @fz_write_int16_be(i32* %299, i32* %300, i32 %305)
  %307 = load i32*, i32** %4, align 8
  %308 = load i32*, i32** %8, align 8
  %309 = getelementptr inbounds [4 x float], [4 x float]* %26, i64 0, i64 3
  %310 = load float, float* %309, align 4
  %311 = fsub float 1.000000e+00, %310
  %312 = fmul float 6.553500e+04, %311
  %313 = fptosi float %312 to i32
  %314 = call i32 @fz_write_int16_be(i32* %307, i32* %308, i32 %313)
  %315 = load i32*, i32** %4, align 8
  %316 = load i32*, i32** %8, align 8
  %317 = call i32 @fz_write_int16_be(i32* %315, i32* %316, i32 0)
  %318 = load i32*, i32** %4, align 8
  %319 = load i32*, i32** %8, align 8
  %320 = call i32 @fz_write_byte(i32* %318, i32* %319, i32 2)
  %321 = load i32*, i32** %4, align 8
  %322 = load i32*, i32** %8, align 8
  %323 = call i32 @fz_write_byte(i32* %321, i32* %322, i32 0)
  br label %324

324:                                              ; preds = %272
  %325 = load i32, i32* %15, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %15, align 4
  br label %268

327:                                              ; preds = %268
  br label %328

328:                                              ; preds = %327, %184
  %329 = load i64, i64* %18, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %359

331:                                              ; preds = %328
  %332 = load i32*, i32** %4, align 8
  %333 = load i32*, i32** %8, align 8
  %334 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %332, i32* %333, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @psd_write_header.ressig, i64 0, i64 0), i32 4)
  %335 = load i32*, i32** %4, align 8
  %336 = load i32*, i32** %8, align 8
  %337 = call i32 @fz_write_int16_be(i32* %335, i32* %336, i32 1039)
  %338 = load i32*, i32** %4, align 8
  %339 = load i32*, i32** %8, align 8
  %340 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %338, i32* %339, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %341 = load i32*, i32** %4, align 8
  %342 = load i32*, i32** %8, align 8
  %343 = load i64, i64* %18, align 8
  %344 = trunc i64 %343 to i32
  %345 = call i32 @fz_write_int32_be(i32* %341, i32* %342, i32 %344)
  %346 = load i32*, i32** %4, align 8
  %347 = load i32*, i32** %8, align 8
  %348 = load i8*, i8** %17, align 8
  %349 = load i64, i64* %18, align 8
  %350 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %346, i32* %347, i8* %348, i64 %349)
  %351 = load i64, i64* %18, align 8
  %352 = and i64 %351, 1
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %331
  %355 = load i32*, i32** %4, align 8
  %356 = load i32*, i32** %8, align 8
  %357 = call i32 @fz_write_byte(i32* %355, i32* %356, i32 0)
  br label %358

358:                                              ; preds = %354, %331
  br label %359

359:                                              ; preds = %358, %328
  %360 = load i32*, i32** %4, align 8
  %361 = load i32*, i32** %8, align 8
  %362 = call i32 (i32*, i32*, ...) @fz_write_data(i32* %360, i32* %361, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @psd_write_header.ressig, i64 0, i64 0), i32 4)
  %363 = load i32*, i32** %4, align 8
  %364 = load i32*, i32** %8, align 8
  %365 = call i32 @fz_write_int16_be(i32* %363, i32* %364, i32 1005)
  %366 = load i32*, i32** %4, align 8
  %367 = load i32*, i32** %8, align 8
  %368 = call i32 @fz_write_int16_be(i32* %366, i32* %367, i32 0)
  %369 = load i32*, i32** %4, align 8
  %370 = load i32*, i32** %8, align 8
  %371 = call i32 @fz_write_int32_be(i32* %369, i32* %370, i32 16)
  %372 = load i32*, i32** %4, align 8
  %373 = load i32*, i32** %8, align 8
  %374 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @fz_write_int32_be(i32* %372, i32* %373, i32 %377)
  %379 = load i32*, i32** %4, align 8
  %380 = load i32*, i32** %8, align 8
  %381 = call i32 @fz_write_int16_be(i32* %379, i32* %380, i32 1)
  %382 = load i32*, i32** %4, align 8
  %383 = load i32*, i32** %8, align 8
  %384 = call i32 @fz_write_int16_be(i32* %382, i32* %383, i32 1)
  %385 = load i32*, i32** %4, align 8
  %386 = load i32*, i32** %8, align 8
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @fz_write_int32_be(i32* %385, i32* %386, i32 %390)
  %392 = load i32*, i32** %4, align 8
  %393 = load i32*, i32** %8, align 8
  %394 = call i32 @fz_write_int16_be(i32* %392, i32* %393, i32 1)
  %395 = load i32*, i32** %4, align 8
  %396 = load i32*, i32** %8, align 8
  %397 = call i32 @fz_write_int16_be(i32* %395, i32* %396, i32 1)
  %398 = load i32*, i32** %4, align 8
  %399 = load i32*, i32** %8, align 8
  %400 = call i32 @fz_write_int32_be(i32* %398, i32* %399, i32 0)
  %401 = load i32*, i32** %4, align 8
  %402 = load i32*, i32** %8, align 8
  %403 = call i32 @fz_write_int16_be(i32* %401, i32* %402, i32 0)
  ret void
}

declare dso_local %struct.TYPE_14__* @fz_device_cmyk(i32*) #1

declare dso_local i32 @fz_colorspace_is_subtractive(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @fz_write_data(i32*, i32*, ...) #1

declare dso_local i32 @fz_write_int16_be(i32*, i32*, i32) #1

declare dso_local i32 @fz_write_int32_be(i32*, i32*, i32) #1

declare dso_local i8* @fz_separation_name(i32*, i32*, i32) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fz_write_byte(i32*, i32*, i32) #1

declare dso_local i32 @fz_separation_equivalent(i32*, i32*, i32, %struct.TYPE_14__*, float*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
