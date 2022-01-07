; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjbench.c_decomptest.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjbench.c_decomptest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@tjPixelSize = common dso_local global i32* null, align 8
@pf = common dso_local global i64 0, align 8
@yuv = common dso_local global i64 0, align 8
@YUVDECODE = common dso_local global i64 0, align 8
@sf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"_Q%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"executing tjInitDecompress()\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"allocating image buffer\00", align 1
@flags = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"executing tjDecompressToYUV()\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"executing tjDecompress2()\00", align 1
@benchtime = common dso_local global double 0.000000e+00, align 8
@dotile = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"executing tjDestroy()\00", align 1
@quiet = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"D--> Frame rate:           %f fps\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"     Dest. throughput:     %f Megapixels/sec\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s_%s%s.yuv\00", align 1
@subName = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"opening YUV image for output\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"writing YUV image\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%d_%d\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@decomponly = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [9 x i8] c"%s_%s.%s\00", align 1
@ext = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"%s_%s%s_%s.%s\00", align 1
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"saving bitmap\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"-err.%s\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Compression error written to %s.\0A\00", align 1
@TJ_GRAYSCALE = common dso_local global i32 0, align 4
@tjRedOffset = common dso_local global i32* null, align 8
@tjGreenOffset = common dso_local global i32* null, align 8
@tjBlueOffset = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decomptest(i8* %0, i8** %1, i64* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [1024 x i8], align 16
  %24 = alloca [20 x i8], align 16
  %25 = alloca [6 x i8], align 1
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i64* %2, i64** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %55 = bitcast [20 x i8]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %55, i8 0, i64 20, i1 false)
  %56 = bitcast [6 x i8]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %56, i8 0, i64 6, i1 false)
  store i32* null, i32** %27, align 8
  store i32* null, i32** %28, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %57 = load i32*, i32** @tjPixelSize, align 8
  %58 = load i64, i64* @pf, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %36, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @tjBufSizeYUV(i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %37, align 4
  %65 = load i64, i64* @yuv, align 8
  %66 = load i64, i64* @YUVDECODE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %11
  %69 = load i32, i32* %16, align 4
  br label %74

70:                                               ; preds = %11
  %71 = load i32, i32* %16, align 4
  %72 = load i64, i64* bitcast (%struct.TYPE_3__* @sf to i64*), align 4
  %73 = call i32 @TJSCALED(i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %68
  %75 = phi i32 [ %69, %68 ], [ %73, %70 ]
  store i32 %75, i32* %39, align 4
  %76 = load i64, i64* @yuv, align 8
  %77 = load i64, i64* @YUVDECODE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %17, align 4
  br label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %17, align 4
  %83 = load i64, i64* bitcast (%struct.TYPE_3__* @sf to i64*), align 4
  %84 = call i32 @TJSCALED(i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %81, %79
  %86 = phi i32 [ %80, %79 ], [ %84, %81 ]
  store i32 %86, i32* %40, align 4
  %87 = load i32, i32* %39, align 4
  %88 = load i32, i32* %36, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* %41, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %90, %91
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %21, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %42, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %96, %97
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %22, align 4
  %101 = sdiv i32 %99, %100
  store i32 %101, i32* %43, align 4
  %102 = load i32, i32* %19, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %85
  %105 = getelementptr inbounds [6 x i8], [6 x i8]* %25, i64 0, i64 0
  %106 = load i32, i32* %19, align 4
  %107 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %105, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = getelementptr inbounds [6 x i8], [6 x i8]* %25, i64 0, i64 5
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %104, %85
  %110 = call i32* (...) @tjInitDecompress()
  store i32* %110, i32** %28, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = call i32 @_throwtj(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i64, i64* @yuv, align 8
  %116 = load i64, i64* @YUVDECODE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* %37, align 4
  br label %124

120:                                              ; preds = %114
  %121 = load i32, i32* %41, align 4
  %122 = load i32, i32* %40, align 4
  %123 = mul nsw i32 %121, %122
  br label %124

124:                                              ; preds = %120, %118
  %125 = phi i32 [ %119, %118 ], [ %123, %120 ]
  store i32 %125, i32* %38, align 4
  %126 = load i8*, i8** %15, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load i32, i32* %38, align 4
  %130 = call i64 @malloc(i32 %129)
  %131 = inttoptr i64 %130 to i8*
  store i8* %131, i8** %15, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 @_throwunix(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %128
  store i32 1, i32* %32, align 4
  br label %136

136:                                              ; preds = %135, %124
  %137 = load i8*, i8** %15, align 8
  %138 = load i32, i32* %38, align 4
  %139 = call i32 @memset(i8* %137, i32 127, i32 %138)
  %140 = load i64, i64* @yuv, align 8
  %141 = load i64, i64* @YUVDECODE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %136
  %144 = load i32*, i32** %28, align 8
  %145 = load i8**, i8*** %13, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i64*, i64** %14, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = load i32, i32* @flags, align 4
  %153 = call i32 @tjDecompressToYUV(i32* %144, i8* %147, i64 %150, i8* %151, i32 %152)
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %157

155:                                              ; preds = %143
  %156 = call i32 @_throwtj(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %143
  br label %177

158:                                              ; preds = %136
  %159 = load i32*, i32** %28, align 8
  %160 = load i8**, i8*** %13, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i64*, i64** %14, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = load i8*, i8** %15, align 8
  %167 = load i32, i32* %39, align 4
  %168 = load i32, i32* %41, align 4
  %169 = load i32, i32* %40, align 4
  %170 = load i64, i64* @pf, align 8
  %171 = load i32, i32* @flags, align 4
  %172 = call i32 @tjDecompress2(i32* %159, i8* %162, i64 %165, i8* %166, i32 %167, i32 %168, i32 %169, i64 %170, i32 %171)
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %176

174:                                              ; preds = %158
  %175 = call i32 @_throwtj(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %158
  br label %177

177:                                              ; preds = %176, %157
  store i32 0, i32* %31, align 4
  %178 = call double (...) @gettime()
  store double %178, double* %34, align 8
  br label %179

179:                                              ; preds = %290, %177
  %180 = call double (...) @gettime()
  %181 = load double, double* %34, align 8
  %182 = fsub double %180, %181
  store double %182, double* %35, align 8
  %183 = load double, double* @benchtime, align 8
  %184 = fcmp olt double %182, %183
  br i1 %184, label %185, label %293

185:                                              ; preds = %179
  store i32 0, i32* %46, align 4
  %186 = load i64, i64* @yuv, align 8
  %187 = load i64, i64* @YUVDECODE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %204

189:                                              ; preds = %185
  %190 = load i32*, i32** %28, align 8
  %191 = load i8**, i8*** %13, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i64*, i64** %14, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  %196 = load i64, i64* %195, align 8
  %197 = load i8*, i8** %15, align 8
  %198 = load i32, i32* @flags, align 4
  %199 = call i32 @tjDecompressToYUV(i32* %190, i8* %193, i64 %196, i8* %197, i32 %198)
  %200 = icmp eq i32 %199, -1
  br i1 %200, label %201, label %203

201:                                              ; preds = %189
  %202 = call i32 @_throwtj(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %189
  br label %289

204:                                              ; preds = %185
  store i32 0, i32* %29, align 4
  %205 = load i8*, i8** %15, align 8
  store i8* %205, i8** %44, align 8
  br label %206

206:                                              ; preds = %279, %204
  %207 = load i32, i32* %29, align 4
  %208 = load i32, i32* %43, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %288

210:                                              ; preds = %206
  store i32 0, i32* %30, align 4
  %211 = load i8*, i8** %44, align 8
  store i8* %211, i8** %45, align 8
  br label %212

212:                                              ; preds = %267, %210
  %213 = load i32, i32* %30, align 4
  %214 = load i32, i32* %42, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %278

216:                                              ; preds = %212
  %217 = load i64, i64* @dotile, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %216
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %30, align 4
  %223 = load i32, i32* %21, align 4
  %224 = mul nsw i32 %222, %223
  %225 = sub nsw i32 %221, %224
  %226 = call i32 @min(i32 %220, i32 %225)
  br label %229

227:                                              ; preds = %216
  %228 = load i32, i32* %39, align 4
  br label %229

229:                                              ; preds = %227, %219
  %230 = phi i32 [ %226, %219 ], [ %228, %227 ]
  store i32 %230, i32* %47, align 4
  %231 = load i64, i64* @dotile, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* %29, align 4
  %237 = load i32, i32* %22, align 4
  %238 = mul nsw i32 %236, %237
  %239 = sub nsw i32 %235, %238
  %240 = call i32 @min(i32 %234, i32 %239)
  br label %243

241:                                              ; preds = %229
  %242 = load i32, i32* %40, align 4
  br label %243

243:                                              ; preds = %241, %233
  %244 = phi i32 [ %240, %233 ], [ %242, %241 ]
  store i32 %244, i32* %48, align 4
  %245 = load i32*, i32** %28, align 8
  %246 = load i8**, i8*** %13, align 8
  %247 = load i32, i32* %46, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = load i64*, i64** %14, align 8
  %252 = load i32, i32* %46, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = load i8*, i8** %45, align 8
  %257 = load i32, i32* %47, align 4
  %258 = load i32, i32* %41, align 4
  %259 = load i32, i32* %48, align 4
  %260 = load i64, i64* @pf, align 8
  %261 = load i32, i32* @flags, align 4
  %262 = call i32 @tjDecompress2(i32* %245, i8* %250, i64 %255, i8* %256, i32 %257, i32 %258, i32 %259, i64 %260, i32 %261)
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %264, label %266

264:                                              ; preds = %243
  %265 = call i32 @_throwtj(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %243
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %30, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %30, align 4
  %270 = load i32, i32* %46, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %46, align 4
  %272 = load i32, i32* %36, align 4
  %273 = load i32, i32* %21, align 4
  %274 = mul nsw i32 %272, %273
  %275 = load i8*, i8** %45, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8* %277, i8** %45, align 8
  br label %212

278:                                              ; preds = %212
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %29, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %29, align 4
  %282 = load i32, i32* %41, align 4
  %283 = load i32, i32* %22, align 4
  %284 = mul nsw i32 %282, %283
  %285 = load i8*, i8** %44, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  store i8* %287, i8** %44, align 8
  br label %206

288:                                              ; preds = %206
  br label %289

289:                                              ; preds = %288, %203
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %31, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %31, align 4
  br label %179

293:                                              ; preds = %179
  %294 = load i32*, i32** %28, align 8
  %295 = call i32 @tjDestroy(i32* %294)
  %296 = icmp eq i32 %295, -1
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = call i32 @_throwtj(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %293
  store i32* null, i32** %28, align 8
  %300 = load i64, i64* @quiet, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %316

302:                                              ; preds = %299
  %303 = load i32, i32* %16, align 4
  %304 = load i32, i32* %17, align 4
  %305 = mul nsw i32 %303, %304
  %306 = sitofp i32 %305 to double
  %307 = fdiv double %306, 1.000000e+06
  %308 = load i32, i32* %31, align 4
  %309 = sitofp i32 %308 to double
  %310 = fmul double %307, %309
  %311 = load double, double* %35, align 8
  %312 = fdiv double %310, %311
  %313 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %314 = call i8* @sigfig(double %312, i32 4, i8* %313, i32 1024)
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %314)
  br label %333

316:                                              ; preds = %299
  %317 = load i32, i32* %31, align 4
  %318 = sitofp i32 %317 to double
  %319 = load double, double* %35, align 8
  %320 = fdiv double %318, %319
  %321 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), double %320)
  %322 = load i32, i32* %16, align 4
  %323 = load i32, i32* %17, align 4
  %324 = mul nsw i32 %322, %323
  %325 = sitofp i32 %324 to double
  %326 = fdiv double %325, 1.000000e+06
  %327 = load i32, i32* %31, align 4
  %328 = sitofp i32 %327 to double
  %329 = fmul double %326, %328
  %330 = load double, double* %35, align 8
  %331 = fdiv double %329, %330
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), double %331)
  br label %333

333:                                              ; preds = %316, %302
  %334 = load i64, i64* @yuv, align 8
  %335 = load i64, i64* @YUVDECODE, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %363

337:                                              ; preds = %333
  %338 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %339 = load i8*, i8** %20, align 8
  %340 = load i8**, i8*** @subName, align 8
  %341 = load i32, i32* %18, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %340, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = getelementptr inbounds [6 x i8], [6 x i8]* %25, i64 0, i64 0
  %346 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %338, i32 1024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %339, i8* %344, i8* %345)
  %347 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %348 = call i32* @fopen(i8* %347, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  store i32* %348, i32** %27, align 8
  %349 = icmp eq i32* %348, null
  br i1 %349, label %350, label %352

350:                                              ; preds = %337
  %351 = call i32 @_throwunix(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %352

352:                                              ; preds = %350, %337
  %353 = load i8*, i8** %15, align 8
  %354 = load i32, i32* %37, align 4
  %355 = load i32*, i32** %27, align 8
  %356 = call i32 @fwrite(i8* %353, i32 %354, i32 1, i32* %355)
  %357 = icmp ne i32 %356, 1
  br i1 %357, label %358, label %360

358:                                              ; preds = %352
  %359 = call i32 @_throwunix(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %360

360:                                              ; preds = %358, %352
  %361 = load i32*, i32** %27, align 8
  %362 = call i32 @fclose(i32* %361)
  store i32* null, i32** %27, align 8
  br label %646

363:                                              ; preds = %333
  %364 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 0), align 4
  %365 = icmp ne i32 %364, 1
  br i1 %365, label %369, label %366

366:                                              ; preds = %363
  %367 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 1), align 4
  %368 = icmp ne i32 %367, 1
  br i1 %368, label %369, label %374

369:                                              ; preds = %366, %363
  %370 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %371 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 0), align 4
  %372 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 1), align 4
  %373 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %370, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %371, i32 %372)
  br label %391

374:                                              ; preds = %366
  %375 = load i32, i32* %21, align 4
  %376 = load i32, i32* %16, align 4
  %377 = icmp ne i32 %375, %376
  br i1 %377, label %382, label %378

378:                                              ; preds = %374
  %379 = load i32, i32* %22, align 4
  %380 = load i32, i32* %17, align 4
  %381 = icmp ne i32 %379, %380
  br i1 %381, label %382, label %387

382:                                              ; preds = %378, %374
  %383 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %384 = load i32, i32* %21, align 4
  %385 = load i32, i32* %22, align 4
  %386 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %383, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %384, i32 %385)
  br label %390

387:                                              ; preds = %378
  %388 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %389 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %388, i32 20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  br label %390

390:                                              ; preds = %387, %382
  br label %391

391:                                              ; preds = %390, %369
  %392 = load i64, i64* @decomponly, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %400

394:                                              ; preds = %391
  %395 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %396 = load i8*, i8** %20, align 8
  %397 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %398 = load i8*, i8** @ext, align 8
  %399 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %395, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %396, i8* %397, i8* %398)
  br label %412

400:                                              ; preds = %391
  %401 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %402 = load i8*, i8** %20, align 8
  %403 = load i8**, i8*** @subName, align 8
  %404 = load i32, i32* %18, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8*, i8** %403, i64 %405
  %407 = load i8*, i8** %406, align 8
  %408 = getelementptr inbounds [6 x i8], [6 x i8]* %25, i64 0, i64 0
  %409 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %410 = load i8*, i8** @ext, align 8
  %411 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %401, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %402, i8* %407, i8* %408, i8* %409, i8* %410)
  br label %412

412:                                              ; preds = %400, %394
  %413 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %414 = load i8*, i8** %15, align 8
  %415 = load i32, i32* %39, align 4
  %416 = load i32, i32* %40, align 4
  %417 = load i64, i64* @pf, align 8
  %418 = load i32, i32* @flags, align 4
  %419 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  %422 = zext i1 %421 to i32
  %423 = call i32 @savebmp(i8* %413, i8* %414, i32 %415, i32 %416, i64 %417, i32 %422)
  %424 = icmp eq i32 %423, -1
  br i1 %424, label %425, label %427

425:                                              ; preds = %412
  %426 = call i32 @_throwbmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %427

427:                                              ; preds = %425, %412
  %428 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %429 = call i8* @strrchr(i8* %428, i8 signext 46)
  store i8* %429, i8** %26, align 8
  %430 = load i8*, i8** %26, align 8
  %431 = load i8*, i8** %26, align 8
  %432 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %433 = ptrtoint i8* %431 to i64
  %434 = ptrtoint i8* %432 to i64
  %435 = sub i64 %433, %434
  %436 = sub nsw i64 1024, %435
  %437 = trunc i64 %436 to i32
  %438 = load i8*, i8** @ext, align 8
  %439 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %430, i32 %437, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* %438)
  %440 = load i8*, i8** %12, align 8
  %441 = icmp ne i8* %440, null
  br i1 %441, label %442, label %645

442:                                              ; preds = %427
  %443 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 0), align 4
  %444 = icmp eq i32 %443, 1
  br i1 %444, label %445, label %645

445:                                              ; preds = %442
  %446 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sf, i32 0, i32 1), align 4
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %448, label %645

448:                                              ; preds = %445
  %449 = load i64, i64* @quiet, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i8* %452)
  br label %454

454:                                              ; preds = %451, %448
  %455 = load i32, i32* %18, align 4
  %456 = load i32, i32* @TJ_GRAYSCALE, align 4
  %457 = icmp eq i32 %455, %456
  br i1 %457, label %458, label %577

458:                                              ; preds = %454
  store i32 0, i32* %29, align 4
  store i32 0, i32* %49, align 4
  br label %459

459:                                              ; preds = %570, %458
  %460 = load i32, i32* %29, align 4
  %461 = load i32, i32* %17, align 4
  %462 = icmp slt i32 %460, %461
  br i1 %462, label %463, label %576

463:                                              ; preds = %459
  store i32 0, i32* %30, align 4
  %464 = load i32, i32* %49, align 4
  store i32 %464, i32* %50, align 4
  br label %465

465:                                              ; preds = %563, %463
  %466 = load i32, i32* %30, align 4
  %467 = load i32, i32* %16, align 4
  %468 = icmp slt i32 %466, %467
  br i1 %468, label %469, label %569

469:                                              ; preds = %465
  %470 = load i32, i32* %50, align 4
  %471 = load i32*, i32** @tjRedOffset, align 8
  %472 = load i64, i64* @pf, align 8
  %473 = getelementptr inbounds i32, i32* %471, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = add nsw i32 %470, %474
  store i32 %475, i32* %51, align 4
  %476 = load i32, i32* %50, align 4
  %477 = load i32*, i32** @tjGreenOffset, align 8
  %478 = load i64, i64* @pf, align 8
  %479 = getelementptr inbounds i32, i32* %477, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %476, %480
  store i32 %481, i32* %52, align 4
  %482 = load i32, i32* %50, align 4
  %483 = load i32*, i32** @tjBlueOffset, align 8
  %484 = load i64, i64* @pf, align 8
  %485 = getelementptr inbounds i32, i32* %483, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = add nsw i32 %482, %486
  store i32 %487, i32* %53, align 4
  %488 = load i8*, i8** %12, align 8
  %489 = load i32, i32* %51, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8, i8* %488, i64 %490
  %492 = load i8, i8* %491, align 1
  %493 = uitofp i8 %492 to double
  %494 = fmul double %493, 2.990000e-01
  %495 = load i8*, i8** %12, align 8
  %496 = load i32, i32* %52, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i8, i8* %495, i64 %497
  %499 = load i8, i8* %498, align 1
  %500 = uitofp i8 %499 to double
  %501 = fmul double %500, 5.870000e-01
  %502 = fadd double %494, %501
  %503 = load i8*, i8** %12, align 8
  %504 = load i32, i32* %53, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %503, i64 %505
  %507 = load i8, i8* %506, align 1
  %508 = uitofp i8 %507 to double
  %509 = fmul double %508, 1.140000e-01
  %510 = fadd double %502, %509
  %511 = fadd double %510, 5.000000e-01
  %512 = fptosi double %511 to i32
  store i32 %512, i32* %54, align 4
  %513 = load i32, i32* %54, align 4
  %514 = icmp sgt i32 %513, 255
  br i1 %514, label %515, label %516

515:                                              ; preds = %469
  store i32 255, i32* %54, align 4
  br label %516

516:                                              ; preds = %515, %469
  %517 = load i32, i32* %54, align 4
  %518 = icmp slt i32 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %516
  store i32 0, i32* %54, align 4
  br label %520

520:                                              ; preds = %519, %516
  %521 = load i8*, i8** %15, align 8
  %522 = load i32, i32* %51, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, i8* %521, i64 %523
  %525 = load i8, i8* %524, align 1
  %526 = zext i8 %525 to i32
  %527 = load i32, i32* %54, align 4
  %528 = sub nsw i32 %526, %527
  %529 = trunc i32 %528 to i8
  %530 = call zeroext i8 @abs(i8 zeroext %529)
  %531 = load i8*, i8** %15, align 8
  %532 = load i32, i32* %51, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8, i8* %531, i64 %533
  store i8 %530, i8* %534, align 1
  %535 = load i8*, i8** %15, align 8
  %536 = load i32, i32* %52, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i8, i8* %535, i64 %537
  %539 = load i8, i8* %538, align 1
  %540 = zext i8 %539 to i32
  %541 = load i32, i32* %54, align 4
  %542 = sub nsw i32 %540, %541
  %543 = trunc i32 %542 to i8
  %544 = call zeroext i8 @abs(i8 zeroext %543)
  %545 = load i8*, i8** %15, align 8
  %546 = load i32, i32* %52, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i8, i8* %545, i64 %547
  store i8 %544, i8* %548, align 1
  %549 = load i8*, i8** %15, align 8
  %550 = load i32, i32* %53, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, i8* %549, i64 %551
  %553 = load i8, i8* %552, align 1
  %554 = zext i8 %553 to i32
  %555 = load i32, i32* %54, align 4
  %556 = sub nsw i32 %554, %555
  %557 = trunc i32 %556 to i8
  %558 = call zeroext i8 @abs(i8 zeroext %557)
  %559 = load i8*, i8** %15, align 8
  %560 = load i32, i32* %53, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i8, i8* %559, i64 %561
  store i8 %558, i8* %562, align 1
  br label %563

563:                                              ; preds = %520
  %564 = load i32, i32* %30, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %30, align 4
  %566 = load i32, i32* %36, align 4
  %567 = load i32, i32* %50, align 4
  %568 = add nsw i32 %567, %566
  store i32 %568, i32* %50, align 4
  br label %465

569:                                              ; preds = %465
  br label %570

570:                                              ; preds = %569
  %571 = load i32, i32* %29, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %29, align 4
  %573 = load i32, i32* %41, align 4
  %574 = load i32, i32* %49, align 4
  %575 = add nsw i32 %574, %573
  store i32 %575, i32* %49, align 4
  br label %459

576:                                              ; preds = %459
  br label %629

577:                                              ; preds = %454
  store i32 0, i32* %29, align 4
  br label %578

578:                                              ; preds = %625, %577
  %579 = load i32, i32* %29, align 4
  %580 = load i32, i32* %17, align 4
  %581 = icmp slt i32 %579, %580
  br i1 %581, label %582, label %628

582:                                              ; preds = %578
  store i32 0, i32* %30, align 4
  br label %583

583:                                              ; preds = %621, %582
  %584 = load i32, i32* %30, align 4
  %585 = load i32, i32* %16, align 4
  %586 = load i32, i32* %36, align 4
  %587 = mul nsw i32 %585, %586
  %588 = icmp slt i32 %584, %587
  br i1 %588, label %589, label %624

589:                                              ; preds = %583
  %590 = load i8*, i8** %15, align 8
  %591 = load i32, i32* %41, align 4
  %592 = load i32, i32* %29, align 4
  %593 = mul nsw i32 %591, %592
  %594 = load i32, i32* %30, align 4
  %595 = add nsw i32 %593, %594
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i8, i8* %590, i64 %596
  %598 = load i8, i8* %597, align 1
  %599 = zext i8 %598 to i32
  %600 = load i8*, i8** %12, align 8
  %601 = load i32, i32* %41, align 4
  %602 = load i32, i32* %29, align 4
  %603 = mul nsw i32 %601, %602
  %604 = load i32, i32* %30, align 4
  %605 = add nsw i32 %603, %604
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8, i8* %600, i64 %606
  %608 = load i8, i8* %607, align 1
  %609 = zext i8 %608 to i32
  %610 = sub nsw i32 %599, %609
  %611 = trunc i32 %610 to i8
  %612 = call zeroext i8 @abs(i8 zeroext %611)
  %613 = load i8*, i8** %15, align 8
  %614 = load i32, i32* %41, align 4
  %615 = load i32, i32* %29, align 4
  %616 = mul nsw i32 %614, %615
  %617 = load i32, i32* %30, align 4
  %618 = add nsw i32 %616, %617
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i8, i8* %613, i64 %619
  store i8 %612, i8* %620, align 1
  br label %621

621:                                              ; preds = %589
  %622 = load i32, i32* %30, align 4
  %623 = add nsw i32 %622, 1
  store i32 %623, i32* %30, align 4
  br label %583

624:                                              ; preds = %583
  br label %625

625:                                              ; preds = %624
  %626 = load i32, i32* %29, align 4
  %627 = add nsw i32 %626, 1
  store i32 %627, i32* %29, align 4
  br label %578

628:                                              ; preds = %578
  br label %629

629:                                              ; preds = %628, %576
  %630 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %631 = load i8*, i8** %15, align 8
  %632 = load i32, i32* %16, align 4
  %633 = load i32, i32* %17, align 4
  %634 = load i64, i64* @pf, align 8
  %635 = load i32, i32* @flags, align 4
  %636 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %637 = and i32 %635, %636
  %638 = icmp ne i32 %637, 0
  %639 = zext i1 %638 to i32
  %640 = call i32 @savebmp(i8* %630, i8* %631, i32 %632, i32 %633, i64 %634, i32 %639)
  %641 = icmp eq i32 %640, -1
  br i1 %641, label %642, label %644

642:                                              ; preds = %629
  %643 = call i32 @_throwbmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %644

644:                                              ; preds = %642, %629
  br label %645

645:                                              ; preds = %644, %445, %442, %427
  br label %646

646:                                              ; preds = %645, %360
  br label %647

647:                                              ; preds = %646
  %648 = load i32*, i32** %27, align 8
  %649 = icmp ne i32* %648, null
  br i1 %649, label %650, label %653

650:                                              ; preds = %647
  %651 = load i32*, i32** %27, align 8
  %652 = call i32 @fclose(i32* %651)
  store i32* null, i32** %27, align 8
  br label %653

653:                                              ; preds = %650, %647
  %654 = load i32*, i32** %28, align 8
  %655 = icmp ne i32* %654, null
  br i1 %655, label %656, label %659

656:                                              ; preds = %653
  %657 = load i32*, i32** %28, align 8
  %658 = call i32 @tjDestroy(i32* %657)
  store i32* null, i32** %28, align 8
  br label %659

659:                                              ; preds = %656, %653
  %660 = load i8*, i8** %15, align 8
  %661 = icmp ne i8* %660, null
  br i1 %661, label %662, label %668

662:                                              ; preds = %659
  %663 = load i32, i32* %32, align 4
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %668

665:                                              ; preds = %662
  %666 = load i8*, i8** %15, align 8
  %667 = call i32 @free(i8* %666)
  store i8* null, i8** %15, align 8
  br label %668

668:                                              ; preds = %665, %662, %659
  %669 = load i32, i32* %33, align 4
  ret i32 %669
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tjBufSizeYUV(i32, i32, i32) #2

declare dso_local i32 @TJSCALED(i32, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32* @tjInitDecompress(...) #2

declare dso_local i32 @_throwtj(i8*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @_throwunix(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @tjDecompressToYUV(i32*, i8*, i64, i8*, i32) #2

declare dso_local i32 @tjDecompress2(i32*, i8*, i64, i8*, i32, i32, i32, i64, i32) #2

declare dso_local double @gettime(...) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @tjDestroy(i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @sigfig(double, i32, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @savebmp(i8*, i8*, i32, i32, i64, i32) #2

declare dso_local i32 @_throwbmp(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local zeroext i8 @abs(i8 zeroext) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
