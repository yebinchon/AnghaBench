; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_reinit_buffers.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_reinit_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, float*, double, double, float*, i32, i32, i32, i32, i32, i32, i8*, i32*, i8*, i32*, i8* }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@output_overlap_float = common dso_local global i32* null, align 8
@best_overlap_offset_float = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [97 x i8] c"%.3f scale, %.3f stride_in, %i stride_out, %i standing, %i overlap, %i search, %i queue, %s mode\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fl32\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @reinit_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reinit_buffers(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %4, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fmul double %23, %26
  %28 = fdiv double %27, 1.000000e+03
  %29 = fptoui double %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = mul i32 %30, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = mul i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %42, 1
  br i1 %43, label %44, label %63

44:                                               ; preds = %1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %54, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 24
  store i32* null, i32** %62, align 8
  br label %179

63:                                               ; preds = %1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = mul i32 %67, %70
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = mul i32 %74, %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = sub i32 %83, %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %92, %95
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @vlc_alloc(i32 1, i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 25
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @vlc_alloc(i32 4, i32 %107)
  %109 = bitcast i8* %108 to float*
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 11
  store float* %109, float** %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 25
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %63
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 11
  %119 = load float*, float** %118, align 8
  %120 = icmp ne float* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %116, %63
  %122 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %122, i32* %2, align 4
  br label %417

123:                                              ; preds = %116
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %123
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 25
  %132 = load i8*, i8** %131, align 8
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %9, align 4
  %141 = sub i32 %139, %140
  %142 = call i32 @memset(i32* %136, i32 0, i32 %141)
  br label %143

143:                                              ; preds = %129, %123
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 11
  %146 = load float*, float** %145, align 8
  store float* %146, float** %10, align 8
  %147 = load i32, i32* %8, align 4
  %148 = uitofp i32 %147 to float
  store float %148, float* %11, align 4
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %172, %143
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %175

153:                                              ; preds = %149
  %154 = load i32, i32* %5, align 4
  %155 = uitofp i32 %154 to float
  %156 = load float, float* %11, align 4
  %157 = fdiv float %155, %156
  store float %157, float* %12, align 4
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %168, %153
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 8
  %163 = icmp ult i32 %159, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %158
  %165 = load float, float* %12, align 4
  %166 = load float*, float** %10, align 8
  %167 = getelementptr inbounds float, float* %166, i32 1
  store float* %167, float** %10, align 8
  store float %165, float* %166, align 4
  br label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %6, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %158

171:                                              ; preds = %158
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %5, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %5, align 4
  br label %149

175:                                              ; preds = %149
  %176 = load i32*, i32** @output_overlap_float, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 24
  store i32* %176, i32** %178, align 8
  br label %179

179:                                              ; preds = %175, %44
  %180 = load i32, i32* %8, align 4
  %181 = icmp ule i32 %180, 1
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %192

183:                                              ; preds = %179
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 13
  %186 = load double, double* %185, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load double, double* %188, align 8
  %190 = fmul double %186, %189
  %191 = fdiv double %190, 1.000000e+03
  br label %192

192:                                              ; preds = %183, %182
  %193 = phi double [ 0.000000e+00, %182 ], [ %191, %183 ]
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 12
  store double %193, double* %195, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 12
  %198 = load double, double* %197, align 8
  %199 = fcmp olt double %198, 1.000000e+00
  br i1 %199, label %200, label %203

200:                                              ; preds = %192
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 22
  store i32* null, i32** %202, align 8
  br label %268

203:                                              ; preds = %192
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 10
  %209 = load i32, i32* %208, align 8
  %210 = sub i32 %206, %209
  %211 = mul i32 %210, 4
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i8* @malloc(i32 %212)
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 23
  store i8* %213, i8** %215, align 8
  %216 = load i32, i32* %13, align 4
  %217 = call i8* @malloc(i32 %216)
  %218 = bitcast i8* %217 to float*
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 14
  store float* %218, float** %220, align 8
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 23
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %203
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 14
  %228 = load float*, float** %227, align 8
  %229 = icmp ne float* %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %225, %203
  %231 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %231, i32* %2, align 4
  br label %417

232:                                              ; preds = %225
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 14
  %235 = load float*, float** %234, align 8
  store float* %235, float** %14, align 8
  store i32 1, i32* %5, align 4
  br label %236

236:                                              ; preds = %261, %232
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp ult i32 %237, %238
  br i1 %239, label %240, label %264

240:                                              ; preds = %236
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* %5, align 4
  %244 = sub i32 %242, %243
  %245 = mul i32 %241, %244
  %246 = uitofp i32 %245 to float
  store float %246, float* %15, align 4
  store i32 0, i32* %6, align 4
  br label %247

247:                                              ; preds = %257, %240
  %248 = load i32, i32* %6, align 4
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 10
  %251 = load i32, i32* %250, align 8
  %252 = icmp ult i32 %248, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = load float, float* %15, align 4
  %255 = load float*, float** %14, align 8
  %256 = getelementptr inbounds float, float* %255, i32 1
  store float* %256, float** %14, align 8
  store float %254, float* %255, align 4
  br label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %6, align 4
  %259 = add i32 %258, 1
  store i32 %259, i32* %6, align 4
  br label %247

260:                                              ; preds = %247
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %5, align 4
  %263 = add i32 %262, 1
  store i32 %263, i32* %5, align 4
  br label %236

264:                                              ; preds = %236
  %265 = load i32*, i32** @best_overlap_offset_float, align 8
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 22
  store i32* %265, i32** %267, align 8
  br label %268

268:                                              ; preds = %264, %200
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 12
  %271 = load double, double* %270, align 8
  %272 = load i32, i32* %7, align 4
  %273 = uitofp i32 %272 to double
  %274 = fadd double %271, %273
  %275 = load i32, i32* %8, align 4
  %276 = uitofp i32 %275 to double
  %277 = fadd double %274, %276
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = uitofp i32 %280 to double
  %282 = fmul double %277, %281
  %283 = fptoui double %282 to i32
  store i32 %283, i32* %16, align 4
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 15
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %16, align 4
  %288 = icmp ugt i32 %286, %287
  br i1 %288, label %289, label %340

289:                                              ; preds = %268
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 16
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 15
  %295 = load i32, i32* %294, align 8
  %296 = icmp ugt i32 %292, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %289
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 15
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 16
  %303 = load i32, i32* %302, align 4
  %304 = sub i32 %303, %300
  store i32 %304, i32* %302, align 4
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 15
  store i32 0, i32* %306, align 8
  br label %339

307:                                              ; preds = %289
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 15
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 16
  %313 = load i32, i32* %312, align 4
  %314 = sub i32 %310, %313
  %315 = load i32, i32* %16, align 4
  %316 = call i32 @__MIN(i32 %314, i32 %315)
  store i32 %316, i32* %17, align 4
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 21
  %319 = load i8*, i8** %318, align 8
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 21
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 15
  %325 = load i32, i32* %324, align 8
  %326 = zext i32 %325 to i64
  %327 = getelementptr i8, i8* %322, i64 %326
  %328 = load i32, i32* %17, align 4
  %329 = zext i32 %328 to i64
  %330 = sub i64 0, %329
  %331 = getelementptr i8, i8* %327, i64 %330
  %332 = load i32, i32* %17, align 4
  %333 = call i32 @memmove(i8* %319, i8* %331, i32 %332)
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 16
  store i32 0, i32* %335, align 4
  %336 = load i32, i32* %17, align 4
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 15
  store i32 %336, i32* %338, align 8
  br label %339

339:                                              ; preds = %307, %297
  br label %340

340:                                              ; preds = %339, %268
  %341 = load i32, i32* %16, align 4
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 17
  store i32 %341, i32* %343, align 8
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 17
  %346 = load i32, i32* %345, align 8
  %347 = call i8* @malloc(i32 %346)
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 21
  store i8* %347, i8** %349, align 8
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 21
  %352 = load i8*, i8** %351, align 8
  %353 = icmp ne i8* %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %340
  %355 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %355, i32* %2, align 4
  br label %417

356:                                              ; preds = %340
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 19
  %362 = load i32, i32* %361, align 8
  %363 = mul i32 %359, %362
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 18
  store i32 %363, i32* %365, align 4
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 18
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = udiv i32 %368, %371
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 20
  store i32 %372, i32* %374, align 4
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %376 = call i32 @VLC_OBJECT(%struct.TYPE_5__* %375)
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 19
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 20
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = udiv i32 %385, %388
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = udiv i32 %392, %395
  %397 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 5
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = udiv i32 %399, %402
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 12
  %406 = load double, double* %405, align 8
  %407 = fptoui double %406 to i32
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 17
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 4
  %414 = udiv i32 %410, %413
  %415 = call i32 @msg_Dbg(i32 %376, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %379, i32 %382, i32 %389, i32 %396, i32 %403, i32 %407, i32 %414, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %416 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %416, i32* %2, align 4
  br label %417

417:                                              ; preds = %356, %354, %230, %121
  %418 = load i32, i32* %2, align 4
  ret i32 %418
}

declare dso_local i8* @vlc_alloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
