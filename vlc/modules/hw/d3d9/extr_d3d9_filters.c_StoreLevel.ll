; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_d3d9_filters.c_StoreLevel.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_d3d9_filters.c_StoreLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_level = type { float, float, float }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { float }
%struct.TYPE_6__ = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.filter_level*, %struct.TYPE_9__*, float)* @StoreLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @StoreLevel(%struct.filter_level* %0, %struct.TYPE_9__* %1, float %2) #0 {
  %4 = alloca %struct.filter_level*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.filter_level* %0, %struct.filter_level** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store float %2, float* %6, align 4
  %8 = load float, float* %6, align 4
  %9 = load %struct.filter_level*, %struct.filter_level** %4, align 8
  %10 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %9, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = fcmp ogt float %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load float, float* %16, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = fsub float %17, %21
  %23 = load float, float* %6, align 4
  %24 = load %struct.filter_level*, %struct.filter_level** %4, align 8
  %25 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = fsub float %23, %26
  %28 = fmul float %22, %27
  %29 = load %struct.filter_level*, %struct.filter_level** %4, align 8
  %30 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  %32 = load %struct.filter_level*, %struct.filter_level** %4, align 8
  %33 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %32, i32 0, i32 0
  %34 = load float, float* %33, align 4
  %35 = fsub float %31, %34
  %36 = fdiv float %28, %35
  store float %36, float* %7, align 4
  br label %69

37:                                               ; preds = %3
  %38 = load float, float* %6, align 4
  %39 = load %struct.filter_level*, %struct.filter_level** %4, align 8
  %40 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = fcmp olt float %38, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fsub float %47, %51
  %53 = load float, float* %6, align 4
  %54 = load %struct.filter_level*, %struct.filter_level** %4, align 8
  %55 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %54, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = fsub float %53, %56
  %58 = fmul float %52, %57
  %59 = load %struct.filter_level*, %struct.filter_level** %4, align 8
  %60 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %59, i32 0, i32 2
  %61 = load float, float* %60, align 4
  %62 = load %struct.filter_level*, %struct.filter_level** %4, align 8
  %63 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %62, i32 0, i32 0
  %64 = load float, float* %63, align 4
  %65 = fsub float %61, %64
  %66 = fdiv float %58, %65
  store float %66, float* %7, align 4
  br label %68

67:                                               ; preds = %37
  store float 0.000000e+00, float* %7, align 4
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68, %13
  %70 = load float, float* %7, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load float, float* %73, align 4
  %75 = fadd float %70, %74
  ret float %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
