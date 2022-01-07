; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_pre_rotate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_pre_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float }

@FLT_EPSILON = common dso_local global i64 0, align 8
@FZ_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { <2 x float>, <2 x float> } @fz_pre_rotate(<2 x float> %0, <2 x float> %1, float %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = bitcast %struct.TYPE_4__* %5 to { <2 x float>, <2 x float> }*
  %16 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %15, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %16, align 4
  %17 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %15, i32 0, i32 1
  store <2 x float> %1, <2 x float>* %17, align 4
  store float %2, float* %6, align 4
  br label %18

18:                                               ; preds = %21, %3
  %19 = load float, float* %6, align 4
  %20 = fcmp olt float %19, 0.000000e+00
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load float, float* %6, align 4
  %23 = fadd float %22, 3.600000e+02
  store float %23, float* %6, align 4
  br label %18

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %28, %24
  %26 = load float, float* %6, align 4
  %27 = fcmp oge float %26, 3.600000e+02
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load float, float* %6, align 4
  %30 = fsub float %29, 3.600000e+02
  store float %30, float* %6, align 4
  br label %25

31:                                               ; preds = %25
  %32 = load float, float* %6, align 4
  %33 = fsub float 0.000000e+00, %32
  %34 = call i64 @fabsf(float %33)
  %35 = load i64, i64* @FLT_EPSILON, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %163

38:                                               ; preds = %31
  %39 = load float, float* %6, align 4
  %40 = fsub float 9.000000e+01, %39
  %41 = call i64 @fabsf(float %40)
  %42 = load i64, i64* @FLT_EPSILON, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %46 = load float, float* %45, align 4
  store float %46, float* %7, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %48 = load float, float* %47, align 4
  store float %48, float* %8, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %50 = load float, float* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store float %50, float* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %53 = load float, float* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store float %53, float* %54, align 4
  %55 = load float, float* %7, align 4
  %56 = fneg float %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store float %56, float* %57, align 4
  %58 = load float, float* %8, align 4
  %59 = fneg float %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store float %59, float* %60, align 4
  br label %162

61:                                               ; preds = %38
  %62 = load float, float* %6, align 4
  %63 = fsub float 1.800000e+02, %62
  %64 = call i64 @fabsf(float %63)
  %65 = load i64, i64* @FLT_EPSILON, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %69 = load float, float* %68, align 4
  %70 = fneg float %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store float %70, float* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %73 = load float, float* %72, align 4
  %74 = fneg float %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store float %74, float* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %77 = load float, float* %76, align 4
  %78 = fneg float %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store float %78, float* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %81 = load float, float* %80, align 4
  %82 = fneg float %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store float %82, float* %83, align 4
  br label %161

84:                                               ; preds = %61
  %85 = load float, float* %6, align 4
  %86 = fsub float 2.700000e+02, %85
  %87 = call i64 @fabsf(float %86)
  %88 = load i64, i64* @FLT_EPSILON, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %92 = load float, float* %91, align 4
  store float %92, float* %9, align 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %94 = load float, float* %93, align 4
  store float %94, float* %10, align 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %96 = load float, float* %95, align 4
  %97 = fneg float %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store float %97, float* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %100 = load float, float* %99, align 4
  %101 = fneg float %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store float %101, float* %102, align 4
  %103 = load float, float* %9, align 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store float %103, float* %104, align 4
  %105 = load float, float* %10, align 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store float %105, float* %106, align 4
  br label %160

107:                                              ; preds = %84
  %108 = load float, float* %6, align 4
  %109 = load float, float* @FZ_PI, align 4
  %110 = fmul float %108, %109
  %111 = fdiv float %110, 1.800000e+02
  %112 = call float @sinf(float %111) #4
  store float %112, float* %11, align 4
  %113 = load float, float* %6, align 4
  %114 = load float, float* @FZ_PI, align 4
  %115 = fmul float %113, %114
  %116 = fdiv float %115, 1.800000e+02
  %117 = call float @cosf(float %116) #4
  store float %117, float* %12, align 4
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %119 = load float, float* %118, align 4
  store float %119, float* %13, align 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %121 = load float, float* %120, align 4
  store float %121, float* %14, align 4
  %122 = load float, float* %12, align 4
  %123 = load float, float* %13, align 4
  %124 = fmul float %122, %123
  %125 = load float, float* %11, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %127 = load float, float* %126, align 4
  %128 = fmul float %125, %127
  %129 = fadd float %124, %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store float %129, float* %130, align 4
  %131 = load float, float* %12, align 4
  %132 = load float, float* %14, align 4
  %133 = fmul float %131, %132
  %134 = load float, float* %11, align 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %136 = load float, float* %135, align 4
  %137 = fmul float %134, %136
  %138 = fadd float %133, %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store float %138, float* %139, align 4
  %140 = load float, float* %11, align 4
  %141 = fneg float %140
  %142 = load float, float* %13, align 4
  %143 = fmul float %141, %142
  %144 = load float, float* %12, align 4
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %146 = load float, float* %145, align 4
  %147 = fmul float %144, %146
  %148 = fadd float %143, %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store float %148, float* %149, align 4
  %150 = load float, float* %11, align 4
  %151 = fneg float %150
  %152 = load float, float* %14, align 4
  %153 = fmul float %151, %152
  %154 = load float, float* %12, align 4
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %156 = load float, float* %155, align 4
  %157 = fmul float %154, %156
  %158 = fadd float %153, %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store float %158, float* %159, align 4
  br label %160

160:                                              ; preds = %107, %90
  br label %161

161:                                              ; preds = %160, %67
  br label %162

162:                                              ; preds = %161, %44
  br label %163

163:                                              ; preds = %162, %37
  %164 = bitcast %struct.TYPE_4__* %4 to i8*
  %165 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 4 %165, i64 16, i1 false)
  %166 = bitcast %struct.TYPE_4__* %4 to { <2 x float>, <2 x float> }*
  %167 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %166, align 4
  ret { <2 x float>, <2 x float> } %167
}

declare dso_local i64 @fabsf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
