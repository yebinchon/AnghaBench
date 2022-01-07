; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatLUT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckFloatLUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @CheckFloatLUT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckFloatLUT(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x i32], align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %69, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 65535
  br i1 %11, label %12, label %72

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = sitofp i32 %13 to float
  %15 = fdiv float %14, 6.553500e+04
  %16 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 2
  store float %15, float* %16, align 4
  %17 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 1
  store float %15, float* %17, align 4
  %18 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 0
  store float %15, float* %18, align 4
  %19 = call i32 (...) @DbgThread()
  %20 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 0
  %21 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @cmsPipelineEvalFloat(i32 %19, float* %20, float* %21, i32* %22)
  %24 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %25 = load float, float* %24, align 4
  %26 = fpext float %25 to double
  %27 = fmul double %26, 6.553500e+04
  %28 = fadd double %27, 5.000000e-01
  %29 = fptrunc double %28 to float
  %30 = call i64 @floor(float %29)
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 1
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  %36 = fmul double %35, 6.553500e+04
  %37 = fadd double %36, 5.000000e-01
  %38 = fptrunc double %37 to float
  %39 = call i64 @floor(float %38)
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 2
  %43 = load float, float* %42, align 4
  %44 = fpext float %43 to double
  %45 = fmul double %44, 6.553500e+04
  %46 = fadd double %45, 5.000000e-01
  %47 = fptrunc double %46 to float
  %48 = call i64 @floor(float %47)
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %49, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %65, %12
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %51

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %9

72:                                               ; preds = %9
  %73 = load i32, i32* %3, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  ret i32 %75
}

declare dso_local i32 @cmsPipelineEvalFloat(i32, float*, float*, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @floor(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
