; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_test_plane.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_render.c_test_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, float, float, float, float, float, float)* @test_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_plane(%struct.TYPE_3__* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  %16 = load float, float* %9, align 4
  %17 = load float, float* %12, align 4
  %18 = fcmp ole float %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load float, float* %10, align 4
  %21 = load float, float* %13, align 4
  %22 = fcmp ole float %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load float, float* %11, align 4
  %25 = load float, float* %14, align 4
  %26 = fcmp ole float %24, %25
  br label %27

27:                                               ; preds = %23, %19, %7
  %28 = phi i1 [ false, %19 ], [ false, %7 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load float, float* %32, align 8
  %34 = fcmp ogt float %33, 0.000000e+00
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load float, float* %12, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 8
  %40 = fmul float %36, %39
  %41 = load float, float* %15, align 4
  %42 = fadd float %41, %40
  store float %42, float* %15, align 4
  br label %51

43:                                               ; preds = %27
  %44 = load float, float* %9, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 8
  %48 = fmul float %44, %47
  %49 = load float, float* %15, align 4
  %50 = fadd float %49, %48
  store float %50, float* %15, align 4
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = fcmp ogt float %54, 0.000000e+00
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load float, float* %13, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load float, float* %59, align 4
  %61 = fmul float %57, %60
  %62 = load float, float* %15, align 4
  %63 = fadd float %62, %61
  store float %63, float* %15, align 4
  br label %72

64:                                               ; preds = %51
  %65 = load float, float* %10, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fmul float %65, %68
  %70 = load float, float* %15, align 4
  %71 = fadd float %70, %69
  store float %71, float* %15, align 4
  br label %72

72:                                               ; preds = %64, %56
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load float, float* %74, align 8
  %76 = fcmp ogt float %75, 0.000000e+00
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load float, float* %14, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load float, float* %80, align 8
  %82 = fmul float %78, %81
  %83 = load float, float* %15, align 4
  %84 = fadd float %83, %82
  store float %84, float* %15, align 4
  br label %93

85:                                               ; preds = %72
  %86 = load float, float* %11, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load float, float* %88, align 8
  %90 = fmul float %86, %89
  %91 = load float, float* %15, align 4
  %92 = fadd float %91, %90
  store float %92, float* %15, align 4
  br label %93

93:                                               ; preds = %85, %77
  %94 = load float, float* %15, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = sitofp i64 %97 to float
  %99 = fadd float %94, %98
  %100 = fcmp oge float %99, 0.000000e+00
  %101 = zext i1 %100 to i32
  ret i32 %101
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
