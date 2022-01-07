; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_filters.c_SetLevel.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_filters.c_SetLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_level = type { float, float, float, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filter_level*, float)* @SetLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetLevel(%struct.filter_level* %0, float %1) #0 {
  %3 = alloca %struct.filter_level*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store %struct.filter_level* %0, %struct.filter_level** %3, align 8
  store float %1, float* %4, align 4
  %6 = load float, float* %4, align 4
  %7 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %8 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = fcmp ogt float %6, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %13 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load float, float* %14, align 4
  %16 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %17 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = fsub float %15, %19
  %21 = load float, float* %4, align 4
  %22 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %23 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = fsub float %21, %24
  %26 = fmul float %20, %25
  %27 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %28 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %31 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %30, i32 0, i32 0
  %32 = load float, float* %31, align 4
  %33 = fsub float %29, %32
  %34 = fdiv float %26, %33
  %35 = fptosi float %34 to i32
  store i32 %35, i32* %5, align 4
  br label %69

36:                                               ; preds = %2
  %37 = load float, float* %4, align 4
  %38 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %39 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = fcmp olt float %37, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %44 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load float, float* %45, align 4
  %47 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %48 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = fsub float %46, %50
  %52 = load float, float* %4, align 4
  %53 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %54 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  %56 = fsub float %52, %55
  %57 = fmul float %51, %56
  %58 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %59 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %58, i32 0, i32 2
  %60 = load float, float* %59, align 4
  %61 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %62 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %61, i32 0, i32 0
  %63 = load float, float* %62, align 4
  %64 = fsub float %60, %63
  %65 = fdiv float %57, %64
  %66 = fptosi float %65 to i32
  store i32 %66, i32* %5, align 4
  br label %68

67:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %42
  br label %69

69:                                               ; preds = %68, %11
  %70 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %71 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %70, i32 0, i32 4
  %72 = load %struct.filter_level*, %struct.filter_level** %3, align 8
  %73 = getelementptr inbounds %struct.filter_level, %struct.filter_level* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load float, float* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sitofp i32 %76 to float
  %78 = fadd float %75, %77
  %79 = call i32 @atomic_store(i32* %71, float %78)
  ret void
}

declare dso_local i32 @atomic_store(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
