; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOne4D.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOne4D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32)* @CheckOne4D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckOne4D(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca [3 x i32], align 4
  %14 = alloca [3 x i32], align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %21, i32* %22, align 4
  %23 = call i32 (...) @DbgThread()
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @cmsPipelineEval16(i32 %23, i32* %24, i32* %25, i32* %26)
  %28 = call i32 (...) @DbgThread()
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %31 = call i32 @Sampler4D(i32 %28, i32* %29, i32* %30, i32* null)
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i32 2)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %6, align 4
  br label %60

40:                                               ; preds = %5
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44, i32 2)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %6, align 4
  br label %60

49:                                               ; preds = %40
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %53, i32 2)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %56, %47, %38
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @cmsPipelineEval16(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @Sampler4D(i32, i32*, i32*, i32*) #1

declare dso_local i32 @IsGoodWordPrec(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
