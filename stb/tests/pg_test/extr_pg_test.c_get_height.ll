; ModuleID = '/home/carl/AnghaBench/stb/tests/pg_test/extr_pg_test.c_get_height.c'
source_filename = "/home/carl/AnghaBench/stb/tests/pg_test/extr_pg_test.c_get_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hf_width = common dso_local global i32 0, align 4
@hf_height = common dso_local global i32 0, align 4
@hf = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float)* @get_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @get_height(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %13 = load float, float* %3, align 4
  %14 = fcmp olt float %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load float, float* %3, align 4
  %18 = load i32, i32* @hf_width, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sitofp i32 %19 to float
  %21 = fcmp ogt float %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @hf_width, align 4
  %24 = sitofp i32 %23 to float
  %25 = fsub float %24, 1.000000e+00
  store float %25, float* %3, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load float, float* %4, align 4
  %28 = fcmp olt float %27, 0.000000e+00
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store float 0.000000e+00, float* %4, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load float, float* %4, align 4
  %32 = load i32, i32* @hf_height, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sitofp i32 %33 to float
  %35 = fcmp ogt float %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @hf_height, align 4
  %38 = sitofp i32 %37 to float
  %39 = fsub float %38, 1.000000e+00
  store float %39, float* %4, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = load float, float* %3, align 4
  %42 = fptosi float %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sitofp i32 %43 to float
  %45 = load float, float* %3, align 4
  %46 = fsub float %45, %44
  store float %46, float* %3, align 4
  %47 = load float, float* %4, align 4
  %48 = fptosi float %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = sitofp i32 %49 to float
  %51 = load float, float* %4, align 4
  %52 = fsub float %51, %50
  store float %52, float* %4, align 4
  %53 = load float*, float** @hf, align 8
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 0
  %56 = load i32, i32* @hf_height, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 0
  %60 = add nsw i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %53, i64 %61
  %63 = load float, float* %62, align 4
  store float %63, float* %5, align 4
  %64 = load float*, float** @hf, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 0
  %67 = load i32, i32* @hf_height, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  %71 = add nsw i32 %68, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %64, i64 %72
  %74 = load float, float* %73, align 4
  store float %74, float* %7, align 4
  %75 = load float*, float** @hf, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* @hf_height, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 0
  %82 = add nsw i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %75, i64 %83
  %85 = load float, float* %84, align 4
  store float %85, float* %6, align 4
  %86 = load float*, float** @hf, align 8
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* @hf_height, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  %93 = add nsw i32 %90, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %86, i64 %94
  %96 = load float, float* %95, align 4
  store float %96, float* %8, align 4
  %97 = load float, float* %4, align 4
  %98 = load float, float* %5, align 4
  %99 = load float, float* %6, align 4
  %100 = call float @stb_lerp(float %97, float %98, float %99)
  store float %100, float* %9, align 4
  %101 = load float, float* %4, align 4
  %102 = load float, float* %7, align 4
  %103 = load float, float* %8, align 4
  %104 = call float @stb_lerp(float %101, float %102, float %103)
  store float %104, float* %10, align 4
  %105 = load float, float* %3, align 4
  %106 = load float, float* %9, align 4
  %107 = load float, float* %10, align 4
  %108 = call float @stb_lerp(float %105, float %106, float %107)
  ret float %108
}

declare dso_local float @stb_lerp(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
