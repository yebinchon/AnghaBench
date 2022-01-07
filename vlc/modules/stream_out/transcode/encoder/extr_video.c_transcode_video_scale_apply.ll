; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_video.c_transcode_video_scale_apply.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_video.c_transcode_video_scale_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, double, i64 }

@.str = private unnamed_addr constant [23 x i8] c"decoder aspect is %f:1\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"source pixel aspect is %f:1\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"scaled pixel aspect is %f:1\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"source %ux%u, destination %ux%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, float, i32, i32, %struct.TYPE_4__*)* @transcode_video_scale_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transcode_video_scale_apply(i32* %0, %struct.TYPE_4__* %1, float %2, i32 %3, i32 %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store float %2, float* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %12, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %37

33:                                               ; preds = %6
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  store i32 %38, i32* %13, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %46, %43 ], [ %50, %47 ]
  store i32 %52, i32* %14, align 4
  store float 1.000000e+00, float* %15, align 4
  store float 1.000000e+00, float* %16, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to double
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = uitofp i32 %59 to double
  %61 = fmul double %56, %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load double, double* %63, align 8
  %65 = fdiv double %61, %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = uitofp i32 %68 to double
  %70 = fdiv double %65, %69
  %71 = fptrunc double %70 to float
  store float %71, float* %17, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load float, float* %17, align 4
  %74 = fptoui float %73 to i32
  %75 = call i32 (i32*, i8*, i32, ...) @msg_Dbg(i32* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load float, float* %17, align 4
  %77 = load i32, i32* %14, align 4
  %78 = uitofp i32 %77 to float
  %79 = fmul float %76, %78
  %80 = load i32, i32* %13, align 4
  %81 = uitofp i32 %80 to float
  %82 = fdiv float %79, %81
  store float %82, float* %17, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load float, float* %17, align 4
  %85 = fptoui float %84 to i32
  %86 = call i32 (i32*, i8*, i32, ...) @msg_Dbg(i32* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %140

91:                                               ; preds = %51
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %140

96:                                               ; preds = %91
  %97 = load float, float* %9, align 4
  %98 = fcmp une float %97, 0.000000e+00
  br i1 %98, label %99, label %140

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = uitofp i32 %100 to float
  %102 = load float, float* %9, align 4
  %103 = fmul float %101, %102
  %104 = fptoui float %103 to i32
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %20, align 4
  %106 = urem i32 %105, 16
  %107 = icmp ule i32 %106, 7
  br i1 %107, label %108, label %116

108:                                              ; preds = %99
  %109 = load i32, i32* %20, align 4
  %110 = icmp uge i32 %109, 16
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* %20, align 4
  %113 = urem i32 %112, 16
  %114 = load i32, i32* %20, align 4
  %115 = sub i32 %114, %113
  store i32 %115, i32* %20, align 4
  br label %122

116:                                              ; preds = %108, %99
  %117 = load i32, i32* %20, align 4
  %118 = urem i32 %117, 16
  %119 = sub i32 16, %118
  %120 = load i32, i32* %20, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %20, align 4
  br label %122

122:                                              ; preds = %116, %111
  %123 = load i32, i32* %20, align 4
  %124 = uitofp i32 %123 to float
  %125 = load i32, i32* %13, align 4
  %126 = uitofp i32 %125 to float
  %127 = fdiv float %124, %126
  store float %127, float* %18, align 4
  %128 = load i32, i32* %14, align 4
  %129 = uitofp i32 %128 to float
  %130 = load float, float* %18, align 4
  %131 = fmul float %129, %130
  %132 = fptoui float %131 to i32
  %133 = call i32 @__MAX(i32 16, i32 %132)
  store i32 %133, i32* %19, align 4
  %134 = load float, float* %18, align 4
  store float %134, float* %15, align 4
  %135 = load i32, i32* %19, align 4
  %136 = uitofp i32 %135 to float
  %137 = load i32, i32* %14, align 4
  %138 = uitofp i32 %137 to float
  %139 = fdiv float %136, %138
  store float %139, float* %16, align 4
  br label %206

140:                                              ; preds = %96, %91, %51
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sitofp i32 %153 to float
  %155 = load i32, i32* %13, align 4
  %156 = uitofp i32 %155 to float
  %157 = fdiv float %154, %156
  store float %157, float* %15, align 4
  %158 = load float, float* %15, align 4
  store float %158, float* %16, align 4
  br label %205

159:                                              ; preds = %145, %140
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %159
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sitofp i32 %172 to float
  %174 = load i32, i32* %14, align 4
  %175 = uitofp i32 %174 to float
  %176 = fdiv float %173, %175
  store float %176, float* %16, align 4
  %177 = load float, float* %16, align 4
  store float %177, float* %15, align 4
  br label %204

178:                                              ; preds = %164, %159
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %178
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %183
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sitofp i32 %191 to float
  %193 = load i32, i32* %13, align 4
  %194 = uitofp i32 %193 to float
  %195 = fdiv float %192, %194
  store float %195, float* %15, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sitofp i32 %198 to float
  %200 = load i32, i32* %14, align 4
  %201 = uitofp i32 %200 to float
  %202 = fdiv float %199, %201
  store float %202, float* %16, align 4
  br label %203

203:                                              ; preds = %188, %183, %178
  br label %204

204:                                              ; preds = %203, %169
  br label %205

205:                                              ; preds = %204, %150
  br label %206

206:                                              ; preds = %205, %122
  %207 = load i32, i32* %10, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %223

209:                                              ; preds = %206
  %210 = load float, float* %15, align 4
  %211 = load i32, i32* %10, align 4
  %212 = uitofp i32 %211 to float
  %213 = load i32, i32* %13, align 4
  %214 = uitofp i32 %213 to float
  %215 = fdiv float %212, %214
  %216 = fcmp ogt float %210, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %209
  %218 = load i32, i32* %10, align 4
  %219 = uitofp i32 %218 to float
  %220 = load i32, i32* %13, align 4
  %221 = uitofp i32 %220 to float
  %222 = fdiv float %219, %221
  store float %222, float* %15, align 4
  br label %223

223:                                              ; preds = %217, %209, %206
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %240

226:                                              ; preds = %223
  %227 = load float, float* %16, align 4
  %228 = load i32, i32* %11, align 4
  %229 = uitofp i32 %228 to float
  %230 = load i32, i32* %14, align 4
  %231 = uitofp i32 %230 to float
  %232 = fdiv float %229, %231
  %233 = fcmp ogt float %227, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load i32, i32* %11, align 4
  %236 = uitofp i32 %235 to float
  %237 = load i32, i32* %14, align 4
  %238 = uitofp i32 %237 to float
  %239 = fdiv float %236, %238
  store float %239, float* %16, align 4
  br label %240

240:                                              ; preds = %234, %226, %223
  %241 = load float, float* %17, align 4
  %242 = load float, float* %16, align 4
  %243 = fmul float %241, %242
  %244 = load float, float* %15, align 4
  %245 = fdiv float %243, %244
  store float %245, float* %17, align 4
  %246 = load i32*, i32** %7, align 8
  %247 = load float, float* %17, align 4
  %248 = fptoui float %247 to i32
  %249 = call i32 (i32*, i8*, i32, ...) @msg_Dbg(i32* %246, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %248)
  %250 = load float, float* %15, align 4
  %251 = load i32, i32* %13, align 4
  %252 = uitofp i32 %251 to float
  %253 = fmul float %250, %252
  %254 = call i32 @lroundf(float %253)
  store i32 %254, i32* %21, align 4
  %255 = load float, float* %16, align 4
  %256 = load i32, i32* %14, align 4
  %257 = uitofp i32 %256 to float
  %258 = fmul float %255, %257
  %259 = call i32 @lroundf(float %258)
  store i32 %259, i32* %22, align 4
  %260 = load float, float* %15, align 4
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = uitofp i32 %263 to float
  %265 = fmul float %260, %264
  %266 = call i32 @lroundf(float %265)
  store i32 %266, i32* %23, align 4
  %267 = load float, float* %16, align 4
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = uitofp i32 %270 to float
  %272 = fmul float %267, %271
  %273 = call i32 @lroundf(float %272)
  store i32 %273, i32* %24, align 4
  %274 = load i32, i32* %21, align 4
  %275 = and i32 %274, 1
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %240
  %278 = load i32, i32* %21, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %21, align 4
  br label %280

280:                                              ; preds = %277, %240
  %281 = load i32, i32* %22, align 4
  %282 = and i32 %281, 1
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %280
  %285 = load i32, i32* %22, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %22, align 4
  br label %287

287:                                              ; preds = %284, %280
  %288 = load i32, i32* %23, align 4
  %289 = and i32 %288, 1
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = load i32, i32* %23, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %23, align 4
  br label %294

294:                                              ; preds = %291, %287
  %295 = load i32, i32* %24, align 4
  %296 = and i32 %295, 1
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %294
  %299 = load i32, i32* %24, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %24, align 4
  br label %301

301:                                              ; preds = %298, %294
  %302 = load i32, i32* %23, align 4
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* %21, align 4
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  %308 = load i32, i32* %24, align 4
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 4
  %311 = load i32, i32* %22, align 4
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 8
  %314 = load i32*, i32** %7, align 8
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* %14, align 4
  %317 = load i32, i32* %21, align 4
  %318 = load i32, i32* %22, align 4
  %319 = call i32 (i32*, i8*, i32, ...) @msg_Dbg(i32* %314, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %315, i32 %316, i32 %317, i32 %318)
  ret void
}

declare dso_local i32 @msg_Dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @lroundf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
