; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOneRGB_f.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOneRGB_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, double, double, double, i32, i32, i32, i32)* @CheckOneRGB_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @CheckOneRGB_f(i32 %0, double %1, double %2, double %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x i64], align 16
  %18 = alloca [3 x i32], align 4
  store i32 %0, i32* %9, align 4
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load double, double* %10, align 8
  %20 = fdiv double %19, 2.550000e+02
  %21 = fptosi double %20 to i64
  %22 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  store i64 %21, i64* %22, align 16
  %23 = load double, double* %11, align 8
  %24 = fdiv double %23, 2.550000e+02
  %25 = fptosi double %24 to i64
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 1
  store i64 %25, i64* %26, align 8
  %27 = load double, double* %12, align 8
  %28 = fdiv double %27, 2.550000e+02
  %29 = fptosi double %28 to i64
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 2
  store i64 %29, i64* %30, align 16
  %31 = call i32 (...) @DbgThread()
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %35 = call i32 @cmsDoTransform(i32 %31, i32 %32, i64* %33, i32* %34, i32 1)
  %36 = load i32, i32* %13, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i64 @IsGoodVal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %8
  %43 = load i32, i32* %14, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @IsGoodVal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i64 @IsGoodVal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %49, %42, %8
  %57 = phi i1 [ false, %42 ], [ false, %8 ], [ %55, %49 ]
  %58 = zext i1 %57 to i32
  %59 = sitofp i32 %58 to double
  ret double %59
}

declare dso_local i32 @cmsDoTransform(i32, i32, i64*, i32*, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @IsGoodVal(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
