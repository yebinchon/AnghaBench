; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOne6D.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOne6D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32)* @CheckOne6D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckOne6D(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [6 x i32], align 16
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32], align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %13, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %14, align 4
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 4
  store i32 %27, i32* %28, align 16
  %29 = load i32, i32* %15, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 5
  store i32 %29, i32* %30, align 4
  %31 = call i32 (...) @DbgThread()
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @cmsPipelineEval16(i32 %31, i32* %32, i32* %33, i32* %34)
  %36 = call i32 (...) @DbgThread()
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %39 = call i32 @Sampler6D(i32 %36, i32* %37, i32* %38, i32* null)
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %43, i32 2)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %7
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %8, align 4
  br label %68

48:                                               ; preds = %7
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %52, i32 2)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %8, align 4
  br label %68

57:                                               ; preds = %48
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61, i32 2)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %8, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %66, %64, %55, %46
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @cmsPipelineEval16(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @Sampler6D(i32, i32*, i32*, i32*) #1

declare dso_local i32 @IsGoodWordPrec(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
