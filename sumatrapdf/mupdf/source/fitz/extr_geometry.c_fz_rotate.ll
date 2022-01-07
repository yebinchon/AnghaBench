; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_rotate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, i64, i64 }

@FLT_EPSILON = common dso_local global i64 0, align 8
@FZ_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_rotate(%struct.TYPE_3__* noalias sret %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %1, float* %3, align 4
  br label %6

6:                                                ; preds = %9, %2
  %7 = load float, float* %3, align 4
  %8 = fcmp olt float %7, 0.000000e+00
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load float, float* %3, align 4
  %11 = fadd float %10, 3.600000e+02
  store float %11, float* %3, align 4
  br label %6

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %16, %12
  %14 = load float, float* %3, align 4
  %15 = fcmp oge float %14, 3.600000e+02
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load float, float* %3, align 4
  %18 = fsub float %17, 3.600000e+02
  store float %18, float* %3, align 4
  br label %13

19:                                               ; preds = %13
  %20 = load float, float* %3, align 4
  %21 = fsub float 0.000000e+00, %20
  %22 = call i64 @fabsf(float %21)
  %23 = load i64, i64* @FLT_EPSILON, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store float 0.000000e+00, float* %4, align 4
  store float 1.000000e+00, float* %5, align 4
  br label %61

26:                                               ; preds = %19
  %27 = load float, float* %3, align 4
  %28 = fsub float 9.000000e+01, %27
  %29 = call i64 @fabsf(float %28)
  %30 = load i64, i64* @FLT_EPSILON, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store float 1.000000e+00, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  br label %60

33:                                               ; preds = %26
  %34 = load float, float* %3, align 4
  %35 = fsub float 1.800000e+02, %34
  %36 = call i64 @fabsf(float %35)
  %37 = load i64, i64* @FLT_EPSILON, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store float 0.000000e+00, float* %4, align 4
  store float -1.000000e+00, float* %5, align 4
  br label %59

40:                                               ; preds = %33
  %41 = load float, float* %3, align 4
  %42 = fsub float 2.700000e+02, %41
  %43 = call i64 @fabsf(float %42)
  %44 = load i64, i64* @FLT_EPSILON, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store float -1.000000e+00, float* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  br label %58

47:                                               ; preds = %40
  %48 = load float, float* %3, align 4
  %49 = load float, float* @FZ_PI, align 4
  %50 = fmul float %48, %49
  %51 = fdiv float %50, 1.800000e+02
  %52 = call float @sinf(float %51) #3
  store float %52, float* %4, align 4
  %53 = load float, float* %3, align 4
  %54 = load float, float* @FZ_PI, align 4
  %55 = fmul float %53, %54
  %56 = fdiv float %55, 1.800000e+02
  %57 = call float @cosf(float %56) #3
  store float %57, float* %5, align 4
  br label %58

58:                                               ; preds = %47, %46
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %32
  br label %61

61:                                               ; preds = %60, %25
  %62 = load float, float* %5, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store float %62, float* %63, align 8
  %64 = load float, float* %4, align 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store float %64, float* %65, align 4
  %66 = load float, float* %4, align 4
  %67 = fneg float %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store float %67, float* %68, align 8
  %69 = load float, float* %5, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store float %69, float* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i64 0, i64* %72, align 8
  ret void
}

declare dso_local i64 @fabsf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
