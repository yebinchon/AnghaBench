; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_seek_to_sample_coarse.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_seek_to_sample_coarse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32*, i32, i32, i32, i64, i64, i64, i64, i64, i8*, i8*, %struct.TYPE_17__, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }

@VORBIS_seek_without_length = common dso_local global i32 0, align 4
@VORBIS_seek_invalid = common dso_local global i32 0, align 4
@VORBIS_seek_failed = common dso_local global i32 0, align 4
@PAGEFLAG_continued_packet = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64)* @seek_to_sample_coarse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek_to_sample_coarse(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__, align 4
  %7 = alloca %struct.TYPE_17__, align 4
  %8 = alloca %struct.TYPE_17__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = call i64 @stb_vorbis_stream_length_in_samples(%struct.TYPE_16__* %21)
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = load i32, i32* @VORBIS_seek_without_length, align 4
  %28 = call i32 @error(%struct.TYPE_16__* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %397

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = load i32, i32* @VORBIS_seek_invalid, align 4
  %36 = call i32 @error(%struct.TYPE_16__* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %397

37:                                               ; preds = %29
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = ashr i32 %44, 2
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store i64 0, i64* %5, align 8
  br label %55

51:                                               ; preds = %37
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %5, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 15
  %58 = bitcast %struct.TYPE_17__* %6 to i8*
  %59 = bitcast %struct.TYPE_17__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  br label %60

60:                                               ; preds = %73, %55
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @set_file_offset(%struct.TYPE_16__* %65, i32 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = call i32 @get_seek_page_info(%struct.TYPE_16__* %69, %struct.TYPE_17__* %6)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  br label %391

73:                                               ; preds = %64
  br label %60

74:                                               ; preds = %60
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 14
  %77 = bitcast %struct.TYPE_17__* %7 to i8*
  %78 = bitcast %struct.TYPE_17__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 8 %78, i64 12, i1 false)
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, -1
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  %88 = icmp sle i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %74
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = call i64 @stb_vorbis_seek_start(%struct.TYPE_16__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %397

94:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %397

95:                                               ; preds = %74
  br label %96

96:                                               ; preds = %266, %95
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %269

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %104, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %13, align 8
  %116 = load i64, i64* %13, align 8
  %117 = icmp sle i64 %116, 65536
  br i1 %117, label %118, label %123

118:                                              ; preds = %102
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @set_file_offset(%struct.TYPE_16__* %119, i32 %121)
  br label %224

123:                                              ; preds = %102
  %124 = load i32, i32* %18, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %207

126:                                              ; preds = %123
  %127 = load i32, i32* %18, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %131, %133
  %135 = sitofp i32 %134 to double
  store double %135, double* %19, align 8
  %136 = load double, double* %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = uitofp i32 %138 to double
  %140 = fdiv double %136, %139
  store double %140, double* %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = sitofp i32 %142 to double
  %144 = load double, double* %17, align 8
  %145 = load i64, i64* %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  %149 = sub nsw i64 %145, %148
  %150 = sitofp i64 %149 to double
  %151 = fmul double %144, %150
  %152 = fadd double %143, %151
  store double %152, double* %16, align 8
  br label %180

153:                                              ; preds = %126
  %154 = load i64, i64* %5, align 8
  %155 = sitofp i64 %154 to double
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = uitofp i32 %157 to double
  %159 = fsub double %155, %158
  %160 = load double, double* %17, align 8
  %161 = fmul double %159, %160
  store double %161, double* %20, align 8
  %162 = load double, double* %20, align 8
  %163 = fcmp oge double %162, 0.000000e+00
  br i1 %163, label %164, label %168

164:                                              ; preds = %153
  %165 = load double, double* %20, align 8
  %166 = fcmp olt double %165, 8.000000e+03
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store double 8.000000e+03, double* %20, align 8
  br label %168

168:                                              ; preds = %167, %164, %153
  %169 = load double, double* %20, align 8
  %170 = fcmp olt double %169, 0.000000e+00
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load double, double* %20, align 8
  %173 = fcmp ogt double %172, -8.000000e+03
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  store double -8.000000e+03, double* %20, align 8
  br label %175

175:                                              ; preds = %174, %171, %168
  %176 = load double, double* %20, align 8
  %177 = fmul double %176, 2.000000e+00
  %178 = load double, double* %16, align 8
  %179 = fadd double %178, %177
  store double %179, double* %16, align 8
  br label %180

180:                                              ; preds = %175, %129
  %181 = load double, double* %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sitofp i32 %183 to double
  %185 = fcmp olt double %181, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sitofp i32 %188 to double
  store double %189, double* %16, align 8
  br label %190

190:                                              ; preds = %186, %180
  %191 = load double, double* %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %193, 65536
  %195 = sitofp i32 %194 to double
  %196 = fcmp ogt double %191, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 65536
  %201 = sitofp i32 %200 to double
  store double %201, double* %16, align 8
  br label %202

202:                                              ; preds = %197, %190
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %204 = load double, double* %16, align 8
  %205 = fptoui double %204 to i32
  %206 = call i32 @set_file_offset(%struct.TYPE_16__* %203, i32 %205)
  br label %218

207:                                              ; preds = %123
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* %13, align 8
  %213 = sdiv i64 %212, 2
  %214 = add nsw i64 %211, %213
  %215 = sub nsw i64 %214, 32768
  %216 = trunc i64 %215 to i32
  %217 = call i32 @set_file_offset(%struct.TYPE_16__* %208, i32 %216)
  br label %218

218:                                              ; preds = %207, %202
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %220 = call i32 @vorbis_find_page(%struct.TYPE_16__* %219, i32* null, i32* null)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %218
  br label %391

223:                                              ; preds = %218
  br label %224

224:                                              ; preds = %223, %118
  br label %225

225:                                              ; preds = %235, %224
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %227 = call i32 @get_seek_page_info(%struct.TYPE_16__* %226, %struct.TYPE_17__* %8)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  br label %391

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, -1
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br label %247

235:                                              ; preds = %230
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @set_file_offset(%struct.TYPE_16__* %236, i32 %238)
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %241, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  br label %225

247:                                              ; preds = %234
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  br label %269

254:                                              ; preds = %247
  %255 = load i64, i64* %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  %259 = icmp slt i64 %255, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %254
  %261 = bitcast %struct.TYPE_17__* %7 to i8*
  %262 = bitcast %struct.TYPE_17__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %261, i8* align 4 %262, i64 12, i1 false)
  br label %266

263:                                              ; preds = %254
  %264 = bitcast %struct.TYPE_17__* %6 to i8*
  %265 = bitcast %struct.TYPE_17__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %264, i8* align 4 %265, i64 12, i1 false)
  br label %266

266:                                              ; preds = %263, %260
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %18, align 4
  br label %96

269:                                              ; preds = %253, %96
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %12, align 4
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %273 = load i32, i32* %12, align 4
  %274 = call i32 @set_file_offset(%struct.TYPE_16__* %272, i32 %273)
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %276 = call i32 @start_page(%struct.TYPE_16__* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %269
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %280 = load i32, i32* @VORBIS_seek_failed, align 4
  %281 = call i32 @error(%struct.TYPE_16__* %279, i32 %280)
  store i32 %281, i32* %3, align 4
  br label %397

282:                                              ; preds = %269
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  store i32 %285, i32* %11, align 4
  %286 = load i32, i32* %11, align 4
  %287 = icmp sge i32 %286, 0
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  br label %290

290:                                              ; preds = %335, %282
  %291 = load i32, i32* %11, align 4
  store i32 %291, i32* %9, align 4
  br label %292

292:                                              ; preds = %307, %290
  %293 = load i32, i32* %9, align 4
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %310

295:                                              ; preds = %292
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sub nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 255
  br i1 %304, label %305, label %306

305:                                              ; preds = %295
  br label %310

306:                                              ; preds = %295
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %9, align 4
  br label %292

310:                                              ; preds = %305, %292
  %311 = load i32, i32* %9, align 4
  store i32 %311, i32* %10, align 4
  %312 = load i32, i32* %10, align 4
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %321, label %314

314:                                              ; preds = %310
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @PAGEFLAG_continued_packet, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %314, %310
  br label %340

322:                                              ; preds = %314
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %324 = load i32, i32* %12, align 4
  %325 = call i32 @go_to_page_before(%struct.TYPE_16__* %323, i32 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %322
  br label %391

328:                                              ; preds = %322
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %330 = call i32 @stb_vorbis_get_file_offset(%struct.TYPE_16__* %329)
  store i32 %330, i32* %12, align 4
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %332 = call i32 @start_page(%struct.TYPE_16__* %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %328
  br label %391

335:                                              ; preds = %328
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 4
  %339 = sub nsw i32 %338, 1
  store i32 %339, i32* %11, align 4
  br label %290

340:                                              ; preds = %321
  %341 = load i8*, i8** @FALSE, align 8
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 13
  store i8* %341, i8** %343, align 8
  %344 = load i8*, i8** @FALSE, align 8
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 12
  store i8* %344, i8** %346, align 8
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 11
  store i64 0, i64* %348, align 8
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 10
  store i64 0, i64* %350, align 8
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 9
  store i64 0, i64* %352, align 8
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 8
  store i64 0, i64* %354, align 8
  %355 = load i32, i32* %10, align 4
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 6
  store i32 %355, i32* %357, align 8
  store i32 0, i32* %9, align 4
  br label %358

358:                                              ; preds = %372, %340
  %359 = load i32, i32* %9, align 4
  %360 = load i32, i32* %10, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %375

362:                                              ; preds = %358
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 3
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 @skip(%struct.TYPE_16__* %363, i32 %370)
  br label %372

372:                                              ; preds = %362
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %9, align 4
  br label %358

375:                                              ; preds = %358
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %377 = call i32 @vorbis_pump_first_frame(%struct.TYPE_16__* %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %375
  store i32 0, i32* %3, align 4
  br label %397

380:                                              ; preds = %375
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 7
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* %5, align 8
  %385 = icmp sgt i64 %383, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %380
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %388 = load i32, i32* @VORBIS_seek_failed, align 4
  %389 = call i32 @error(%struct.TYPE_16__* %387, i32 %388)
  store i32 %389, i32* %3, align 4
  br label %397

390:                                              ; preds = %380
  store i32 1, i32* %3, align 4
  br label %397

391:                                              ; preds = %334, %327, %229, %222, %72
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %393 = call i64 @stb_vorbis_seek_start(%struct.TYPE_16__* %392)
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %395 = load i32, i32* @VORBIS_seek_failed, align 4
  %396 = call i32 @error(%struct.TYPE_16__* %394, i32 %395)
  store i32 %396, i32* %3, align 4
  br label %397

397:                                              ; preds = %391, %390, %386, %379, %278, %94, %93, %33, %25
  %398 = load i32, i32* %3, align 4
  ret i32 %398
}

declare dso_local i64 @stb_vorbis_stream_length_in_samples(%struct.TYPE_16__*) #1

declare dso_local i32 @error(%struct.TYPE_16__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_file_offset(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @get_seek_page_info(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @stb_vorbis_seek_start(%struct.TYPE_16__*) #1

declare dso_local i32 @vorbis_find_page(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @start_page(%struct.TYPE_16__*) #1

declare dso_local i32 @go_to_page_before(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @stb_vorbis_get_file_offset(%struct.TYPE_16__*) #1

declare dso_local i32 @skip(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vorbis_pump_first_frame(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
