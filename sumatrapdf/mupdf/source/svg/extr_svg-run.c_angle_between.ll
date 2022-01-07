; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_angle_between.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_angle_between.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (<2 x float>, <2 x float>)* @angle_between to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @angle_between(<2 x float> %0, <2 x float> %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = bitcast %struct.TYPE_4__* %3 to <2 x float>*
  store <2 x float> %0, <2 x float>* %11, align 4
  %12 = bitcast %struct.TYPE_4__* %4 to <2 x float>*
  store <2 x float> %1, <2 x float>* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = fmul float %19, %21
  %23 = fsub float %17, %22
  store float %23, float* %5, align 4
  %24 = load float, float* %5, align 4
  %25 = fcmp olt float %24, 0.000000e+00
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 -1, i32 1
  %28 = sitofp i32 %27 to float
  store float %28, float* %6, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %30 = load float, float* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %32 = load float, float* %31, align 4
  %33 = fmul float %30, %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %35 = load float, float* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %37 = load float, float* %36, align 4
  %38 = fmul float %35, %37
  %39 = fadd float %33, %38
  store float %39, float* %7, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %43 = load float, float* %42, align 4
  %44 = fmul float %41, %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = fmul float %46, %48
  %50 = fadd float %44, %49
  store float %50, float* %8, align 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %52 = load float, float* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = fmul float %52, %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %59 = load float, float* %58, align 4
  %60 = fmul float %57, %59
  %61 = fadd float %55, %60
  store float %61, float* %9, align 4
  %62 = load float, float* %9, align 4
  %63 = load float, float* %7, align 4
  %64 = load float, float* %8, align 4
  %65 = fmul float %63, %64
  %66 = fdiv float %62, %65
  store float %66, float* %10, align 4
  %67 = load float, float* %10, align 4
  %68 = fcmp olt float %67, -1.000000e+00
  br i1 %68, label %69, label %70

69:                                               ; preds = %2
  store float -1.000000e+00, float* %10, align 4
  br label %70

70:                                               ; preds = %69, %2
  %71 = load float, float* %10, align 4
  %72 = fcmp ogt float %71, 1.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store float 1.000000e+00, float* %10, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load float, float* %6, align 4
  %76 = load float, float* %10, align 4
  %77 = call float @acosf(float %76) #2
  %78 = fmul float %75, %77
  ret float %78
}

; Function Attrs: nounwind
declare dso_local float @acosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
