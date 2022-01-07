; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOne3D.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOne3D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @CheckOne3D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckOne3D(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca [3 x i32], align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %17, i32* %18, align 4
  %19 = call i32 (...) @DbgThread()
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @cmsPipelineEval16(i32 %19, i32* %20, i32* %21, i32* %22)
  %24 = call i32 (...) @DbgThread()
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %27 = call i32 @Sampler3D(i32 %24, i32* %25, i32* %26, i32* null)
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 2)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %56

36:                                               ; preds = %4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40, i32 2)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %5, align 4
  br label %56

45:                                               ; preds = %36
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %49, i32 2)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %5, align 4
  br label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %52, %43, %34
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @cmsPipelineEval16(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @Sampler3D(i32, i32*, i32*, i32*) #1

declare dso_local i32 @IsGoodWordPrec(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
