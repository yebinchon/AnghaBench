; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_headphone.c_DoWork.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_headphone.c_DoWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, double }
%struct.TYPE_15__ = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_15__*, %struct.TYPE_15__*)* @DoWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoWork(%struct.TYPE_13__* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %7, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = call i32 @aout_FormatNbChannels(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = call i32 @aout_FormatNbChannels(i32* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to float*
  store float* %38, float** %10, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to float*
  store float* %42, float** %11, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %16, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to float*
  store float* %49, float** %12, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %15, align 8
  %53 = load float*, float** %12, align 8
  %54 = load i64, i64* %15, align 8
  %55 = getelementptr inbounds float, float* %53, i64 %54
  store float* %55, float** %13, align 8
  %56 = load float*, float** %11, align 8
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @memset(float* %56, i32 0, i64 %57)
  %59 = load float*, float** %11, align 8
  %60 = load float*, float** %12, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* %15, align 8
  %63 = call i64 @__MIN(i64 %61, i64 %62)
  %64 = call i32 @memcpy(float* %59, float* %60, i64 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to float*
  store float* %68, float** %14, align 8
  br label %69

69:                                               ; preds = %117, %3
  %70 = load float*, float** %14, align 8
  %71 = load float*, float** %13, align 8
  %72 = icmp ult float* %70, %71
  br i1 %72, label %73, label %121

73:                                               ; preds = %69
  %74 = load float*, float** %14, align 8
  %75 = load i64, i64* %16, align 8
  %76 = getelementptr inbounds float, float* %74, i64 %75
  %77 = load float*, float** %13, align 8
  %78 = icmp ult float* %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %73
  %80 = load float*, float** %14, align 8
  %81 = load i64, i64* %16, align 8
  %82 = call i32 @memset(float* %80, i32 0, i64 %81)
  %83 = load float*, float** %14, align 8
  %84 = load i64, i64* %16, align 8
  %85 = mul i64 2, %84
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float*, float** %13, align 8
  %88 = icmp ult float* %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i64, i64* %16, align 8
  store i64 %90, i64* %23, align 8
  br label %100

91:                                               ; preds = %79
  %92 = load float*, float** %13, align 8
  %93 = load float*, float** %14, align 8
  %94 = load i64, i64* %16, align 8
  %95 = getelementptr inbounds float, float* %93, i64 %94
  %96 = ptrtoint float* %92 to i64
  %97 = ptrtoint float* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  store i64 %99, i64* %23, align 8
  br label %100

100:                                              ; preds = %91, %89
  %101 = load float*, float** %14, align 8
  %102 = load float*, float** %14, align 8
  %103 = load i64, i64* %16, align 8
  %104 = getelementptr inbounds float, float* %102, i64 %103
  %105 = load i64, i64* %23, align 8
  %106 = call i32 @memcpy(float* %101, float* %104, i64 %105)
  br label %117

107:                                              ; preds = %73
  %108 = load float*, float** %13, align 8
  %109 = load float*, float** %14, align 8
  %110 = ptrtoint float* %108 to i64
  %111 = ptrtoint float* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  store i64 %113, i64* %23, align 8
  %114 = load float*, float** %14, align 8
  %115 = load i64, i64* %23, align 8
  %116 = call i32 @memset(float* %114, i32 0, i64 %115)
  br label %117

117:                                              ; preds = %107, %100
  %118 = load i64, i64* %23, align 8
  %119 = load float*, float** %14, align 8
  %120 = getelementptr inbounds float, float* %119, i64 %118
  store float* %120, float** %14, align 8
  br label %69

121:                                              ; preds = %69
  store i32 0, i32* %17, align 4
  br label %122

122:                                              ; preds = %288, %121
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %291

128:                                              ; preds = %122
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = load i32, i32* %17, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %19, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i32, i32* %17, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %20, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* %17, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %21, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 3
  %160 = load double, double* %159, align 8
  store double %160, double* %22, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %21, align 4
  %165 = icmp ugt i32 %163, %164
  br i1 %165, label %166, label %245

166:                                              ; preds = %128
  store i32 0, i32* %18, align 4
  br label %167

167:                                              ; preds = %202, %166
  %168 = load i32, i32* %18, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %21, align 4
  %173 = sub i32 %171, %172
  %174 = icmp ult i32 %168, %173
  br i1 %174, label %175, label %205

175:                                              ; preds = %167
  %176 = load float*, float** %10, align 8
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %8, align 4
  %179 = mul i32 %177, %178
  %180 = load i32, i32* %19, align 4
  %181 = add i32 %179, %180
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %176, i64 %182
  %184 = load float, float* %183, align 4
  %185 = fpext float %184 to double
  %186 = load double, double* %22, align 8
  %187 = fmul double %185, %186
  %188 = load float*, float** %11, align 8
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* %18, align 4
  %191 = add i32 %189, %190
  %192 = load i32, i32* %9, align 4
  %193 = mul i32 %191, %192
  %194 = load i32, i32* %20, align 4
  %195 = add i32 %193, %194
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %188, i64 %196
  %198 = load float, float* %197, align 4
  %199 = fpext float %198 to double
  %200 = fadd double %199, %187
  %201 = fptrunc double %200 to float
  store float %201, float* %197, align 4
  br label %202

202:                                              ; preds = %175
  %203 = load i32, i32* %18, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %18, align 4
  br label %167

205:                                              ; preds = %167
  store i32 0, i32* %18, align 4
  br label %206

206:                                              ; preds = %241, %205
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %21, align 4
  %209 = icmp ult i32 %207, %208
  br i1 %209, label %210, label %244

210:                                              ; preds = %206
  %211 = load float*, float** %10, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %21, align 4
  %216 = sub i32 %214, %215
  %217 = load i32, i32* %18, align 4
  %218 = add i32 %216, %217
  %219 = load i32, i32* %8, align 4
  %220 = mul i32 %218, %219
  %221 = load i32, i32* %19, align 4
  %222 = add i32 %220, %221
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %211, i64 %223
  %225 = load float, float* %224, align 4
  %226 = fpext float %225 to double
  %227 = load double, double* %22, align 8
  %228 = fmul double %226, %227
  %229 = load float*, float** %12, align 8
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %9, align 4
  %232 = mul i32 %230, %231
  %233 = load i32, i32* %20, align 4
  %234 = add i32 %232, %233
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %229, i64 %235
  %237 = load float, float* %236, align 4
  %238 = fpext float %237 to double
  %239 = fadd double %238, %228
  %240 = fptrunc double %239 to float
  store float %240, float* %236, align 4
  br label %241

241:                                              ; preds = %210
  %242 = load i32, i32* %18, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %18, align 4
  br label %206

244:                                              ; preds = %206
  br label %287

245:                                              ; preds = %128
  store i32 0, i32* %18, align 4
  br label %246

246:                                              ; preds = %283, %245
  %247 = load i32, i32* %18, align 4
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp ult i32 %247, %250
  br i1 %251, label %252, label %286

252:                                              ; preds = %246
  %253 = load float*, float** %10, align 8
  %254 = load i32, i32* %18, align 4
  %255 = load i32, i32* %8, align 4
  %256 = mul i32 %254, %255
  %257 = load i32, i32* %19, align 4
  %258 = add i32 %256, %257
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %253, i64 %259
  %261 = load float, float* %260, align 4
  %262 = fpext float %261 to double
  %263 = load double, double* %22, align 8
  %264 = fmul double %262, %263
  %265 = load float*, float** %12, align 8
  %266 = load i32, i32* %21, align 4
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = sub i32 %266, %269
  %271 = load i32, i32* %18, align 4
  %272 = add i32 %270, %271
  %273 = load i32, i32* %9, align 4
  %274 = mul i32 %272, %273
  %275 = load i32, i32* %20, align 4
  %276 = add i32 %274, %275
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %265, i64 %277
  %279 = load float, float* %278, align 4
  %280 = fpext float %279 to double
  %281 = fadd double %280, %264
  %282 = fptrunc double %281 to float
  store float %282, float* %278, align 4
  br label %283

283:                                              ; preds = %252
  %284 = load i32, i32* %18, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %18, align 4
  br label %246

286:                                              ; preds = %246
  br label %287

287:                                              ; preds = %286, %244
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %17, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %17, align 4
  br label %122

291:                                              ; preds = %122
  ret void
}

declare dso_local i32 @aout_FormatNbChannels(i32*) #1

declare dso_local i32 @memset(float*, i32, i64) #1

declare dso_local i32 @memcpy(float*, float*, i64) #1

declare dso_local i64 @__MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
