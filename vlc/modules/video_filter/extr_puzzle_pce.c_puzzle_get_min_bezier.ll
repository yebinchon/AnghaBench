; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_get_min_bezier.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_puzzle_pce.c_puzzle_get_min_bezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

@x = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @puzzle_get_min_bezier(float* %0, float* %1, float %2, float %3, %struct.TYPE_4__* %4, i32 %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = load float, float* %10, align 4
  %21 = fmul float %19, %20
  %22 = load float*, float** %8, align 8
  store float %21, float* %22, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = load float, float* %9, align 4
  %28 = fmul float %26, %27
  %29 = load float*, float** %7, align 8
  store float %28, float* %29, align 4
  store float 0.000000e+00, float* %13, align 4
  br label %30

30:                                               ; preds = %73, %6
  %31 = load float, float* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sitofp i32 %33 to float
  %35 = fcmp ole float %31, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %30
  %37 = load float, float* %13, align 4
  %38 = call i32 @floor(float %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 %44, 2
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load float, float* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sitofp i32 %48 to float
  %50 = fsub float %47, %49
  store float %50, float* %15, align 4
  %51 = load float*, float** %7, align 8
  %52 = load float, float* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = load float, float* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @x, align 4
  %57 = call float @bezier_val(%struct.TYPE_4__* %53, float %54, i32 %55, i32 %56)
  %58 = load float, float* %9, align 4
  %59 = fmul float %57, %58
  %60 = call float @__MIN(float %52, float %59)
  %61 = load float*, float** %7, align 8
  store float %60, float* %61, align 4
  %62 = load float*, float** %8, align 8
  %63 = load float, float* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = load float, float* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @y, align 4
  %68 = call float @bezier_val(%struct.TYPE_4__* %64, float %65, i32 %66, i32 %67)
  %69 = load float, float* %10, align 4
  %70 = fmul float %68, %69
  %71 = call float @__MIN(float %63, float %70)
  %72 = load float*, float** %8, align 8
  store float %71, float* %72, align 4
  br label %73

73:                                               ; preds = %46
  %74 = load float, float* %13, align 4
  %75 = fpext float %74 to double
  %76 = fadd double %75, 1.000000e-01
  %77 = fptrunc double %76 to float
  store float %77, float* %13, align 4
  br label %30

78:                                               ; preds = %30
  ret void
}

declare dso_local i32 @floor(float) #1

declare dso_local float @__MIN(float, float) #1

declare dso_local float @bezier_val(%struct.TYPE_4__*, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
