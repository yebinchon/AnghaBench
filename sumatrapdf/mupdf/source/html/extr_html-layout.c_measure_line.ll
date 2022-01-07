; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_measure_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_measure_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { float }

@FLOW_IMAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_6__*, %struct.TYPE_6__*, float*)* @measure_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @measure_line(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store float* %2, float** %6, align 8
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load float, float* %13, align 8
  store float %14, float* %9, align 4
  br label %15

15:                                               ; preds = %81, %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = icmp ne %struct.TYPE_6__* %16, %17
  br i1 %18, label %19, label %85

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FLOW_IMAGE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 8
  %29 = load float, float* %7, align 4
  %30 = fcmp ogt float %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load float, float* %33, align 8
  store float %34, float* %7, align 4
  br label %35

35:                                               ; preds = %31, %25
  br label %61

36:                                               ; preds = %19
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = fmul float %41, 0x3FE99999A0000000
  store float %42, float* %10, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  %48 = fmul float %47, 0x3FC99999A0000000
  store float %48, float* %11, align 4
  %49 = load float, float* %10, align 4
  %50 = load float, float* %7, align 4
  %51 = fcmp ogt float %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load float, float* %10, align 4
  store float %53, float* %7, align 4
  br label %54

54:                                               ; preds = %52, %36
  %55 = load float, float* %11, align 4
  %56 = load float, float* %8, align 4
  %57 = fcmp ogt float %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load float, float* %11, align 4
  store float %59, float* %8, align 4
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load float, float* %63, align 8
  %65 = load float, float* %9, align 4
  %66 = fcmp ogt float %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load float, float* %69, align 8
  store float %70, float* %9, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = load float, float* %7, align 4
  %73 = load float, float* %8, align 4
  %74 = fadd float %72, %73
  %75 = load float, float* %9, align 4
  %76 = fcmp ogt float %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load float, float* %7, align 4
  %79 = load float, float* %8, align 4
  %80 = fadd float %78, %79
  store float %80, float* %9, align 4
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** %4, align 8
  br label %15

85:                                               ; preds = %15
  %86 = load float, float* %7, align 4
  %87 = load float, float* %9, align 4
  %88 = load float, float* %7, align 4
  %89 = fsub float %87, %88
  %90 = load float, float* %8, align 4
  %91 = fsub float %89, %90
  %92 = fdiv float %91, 2.000000e+00
  %93 = fadd float %86, %92
  %94 = load float*, float** %6, align 8
  store float %93, float* %94, align 4
  %95 = load float, float* %9, align 4
  ret float %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
