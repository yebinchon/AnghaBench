; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-scale-simple.c_make_weights.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-scale-simple.c_make_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { float }
%struct.TYPE_17__ = type { i32, float, float, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_16__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, i32, float, float, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__*)* @make_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @make_weights(i32* %0, i32 %1, float %2, float %3, %struct.TYPE_16__* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, %struct.TYPE_17__* %11) #0 {
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store float %2, float* %16, align 4
  store float %3, float* %17, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %25, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %35 = icmp ne %struct.TYPE_17__* %34, null
  br i1 %35, label %36, label %138

36:                                               ; preds = %12
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %36
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  %46 = load float, float* %16, align 4
  %47 = fcmp oeq float %45, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %42
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = load float, float* %50, align 8
  %52 = load float, float* %17, align 4
  %53 = fcmp oeq float %51, %52
  br i1 %53, label %54, label %100

54:                                               ; preds = %48
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 10
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %59 = icmp eq %struct.TYPE_16__* %57, %58
  br i1 %59, label %60, label %100

60:                                               ; preds = %54
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %60
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %20, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %66
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %21, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %72
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %22, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %23, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %24, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 9
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %13, align 8
  br label %251

100:                                              ; preds = %90, %84, %78, %72, %66, %60, %54, %48, %42, %36
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load float, float* %16, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store float %104, float* %106, align 4
  %107 = load float, float* %17, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  store float %107, float* %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 10
  store %struct.TYPE_16__* %110, %struct.TYPE_16__** %112, align 8
  %113 = load i32, i32* %19, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %21, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %22, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %23, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 9
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = call i32 @fz_free(i32* %131, %struct.TYPE_15__* %134)
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 9
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %137, align 8
  br label %138

138:                                              ; preds = %100, %12
  %139 = load float, float* %17, align 4
  %140 = load i32, i32* %15, align 4
  %141 = sitofp i32 %140 to float
  %142 = fcmp olt float %139, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load float, float* %17, align 4
  %145 = load i32, i32* %15, align 4
  %146 = sitofp i32 %145 to float
  %147 = fdiv float %144, %146
  store float %147, float* %27, align 4
  store float 1.000000e+00, float* %28, align 4
  br label %153

148:                                              ; preds = %138
  store float 1.000000e+00, float* %27, align 4
  %149 = load i32, i32* %15, align 4
  %150 = sitofp i32 %149 to float
  %151 = load float, float* %17, align 4
  %152 = fdiv float %150, %151
  store float %152, float* %28, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load float, float* %155, align 4
  %157 = load float, float* %27, align 4
  %158 = fdiv float %156, %157
  store float %158, float* %29, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %161 = load i32, i32* %15, align 4
  %162 = load float, float* %17, align 4
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* %21, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load i32, i32* %23, align 4
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %21, align 4
  %169 = call %struct.TYPE_15__* @new_weights(i32* %159, %struct.TYPE_16__* %160, i32 %161, float %162, i32 %165, i32 %166, i32 %167, i32 %168)
  store %struct.TYPE_15__* %169, %struct.TYPE_15__** %26, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %171 = icmp ne %struct.TYPE_15__* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %153
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  br label %251

173:                                              ; preds = %153
  %174 = load i32, i32* %21, align 4
  store i32 %174, i32* %30, align 4
  br label %175

175:                                              ; preds = %235, %173
  %176 = load i32, i32* %30, align 4
  %177 = load i32, i32* %22, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %238

179:                                              ; preds = %175
  %180 = load i32, i32* %30, align 4
  %181 = sitofp i32 %180 to float
  %182 = load float, float* %16, align 4
  %183 = fsub float %181, %182
  %184 = fadd float %183, 5.000000e-01
  %185 = load i32, i32* %15, align 4
  %186 = sitofp i32 %185 to float
  %187 = fmul float %184, %186
  %188 = load float, float* %17, align 4
  %189 = fdiv float %187, %188
  %190 = fsub float %189, 5.000000e-01
  store float %190, float* %31, align 4
  %191 = load float, float* %31, align 4
  %192 = load float, float* %29, align 4
  %193 = fsub float %191, %192
  %194 = call i32 @ceilf(float %193)
  store i32 %194, i32* %32, align 4
  %195 = load float, float* %31, align 4
  %196 = load float, float* %29, align 4
  %197 = fadd float %195, %196
  %198 = call i32 @floorf(float %197)
  store i32 %198, i32* %33, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %200 = load i32, i32* %30, align 4
  %201 = call i32 @init_weights(%struct.TYPE_15__* %199, i32 %200)
  br label %202

202:                                              ; preds = %217, %179
  %203 = load i32, i32* %32, align 4
  %204 = load i32, i32* %33, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %220

206:                                              ; preds = %202
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %208 = load i32, i32* %30, align 4
  %209 = load i32, i32* %32, align 4
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %211 = load float, float* %16, align 4
  %212 = load float, float* %27, align 4
  %213 = load float, float* %28, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load float, float* %17, align 4
  %216 = call i32 @add_weight(%struct.TYPE_15__* %207, i32 %208, i32 %209, %struct.TYPE_16__* %210, float %211, float %212, float %213, i32 %214, float %215)
  br label %217

217:                                              ; preds = %206
  %218 = load i32, i32* %32, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %32, align 4
  br label %202

220:                                              ; preds = %202
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %222 = load i32, i32* %30, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load float, float* %16, align 4
  %225 = load float, float* %17, align 4
  %226 = call i32 @check_weights(%struct.TYPE_15__* %221, i32 %222, i32 %223, float %224, float %225)
  %227 = load i32, i32* %19, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %220
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %231 = load i32, i32* %30, align 4
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @reorder_weights(%struct.TYPE_15__* %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %229, %220
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %30, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %30, align 4
  br label %175

238:                                              ; preds = %175
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %244 = icmp ne %struct.TYPE_17__* %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 9
  store %struct.TYPE_15__* %246, %struct.TYPE_15__** %248, align 8
  br label %249

249:                                              ; preds = %245, %238
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %250, %struct.TYPE_15__** %13, align 8
  br label %251

251:                                              ; preds = %249, %172, %96
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  ret %struct.TYPE_15__* %252
}

declare dso_local i32 @fz_free(i32*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @new_weights(i32*, %struct.TYPE_16__*, i32, float, i32, i32, i32, i32) #1

declare dso_local i32 @ceilf(float) #1

declare dso_local i32 @floorf(float) #1

declare dso_local i32 @init_weights(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @add_weight(%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*, float, float, float, i32, float) #1

declare dso_local i32 @check_weights(%struct.TYPE_15__*, i32, i32, float, float) #1

declare dso_local i32 @reorder_weights(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
