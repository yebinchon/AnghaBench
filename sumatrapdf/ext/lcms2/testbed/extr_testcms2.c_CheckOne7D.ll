; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOne7D.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOne7D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Channel 1\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Channel 2\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Channel 3\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32, i32)* @CheckOne7D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckOne7D(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [7 x i32], align 16
  %19 = alloca [3 x i32], align 4
  %20 = alloca [3 x i32], align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %11, align 4
  %22 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %12, align 4
  %24 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %13, align 4
  %26 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %14, align 4
  %28 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %15, align 4
  %30 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 4
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* %16, align 4
  %32 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 5
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %17, align 4
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 6
  store i32 %33, i32* %34, align 8
  %35 = call i32 (...) @DbgThread()
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @cmsPipelineEval16(i32 %35, i32* %36, i32* %37, i32* %38)
  %40 = call i32 (...) @DbgThread()
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 0
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %43 = call i32 @Sampler7D(i32 %40, i32* %41, i32* %42, i32* null)
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, i32 2)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %8
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %9, align 4
  br label %72

52:                                               ; preds = %8
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %56, i32 2)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %9, align 4
  br label %72

61:                                               ; preds = %52
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IsGoodWordPrec(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65, i32 2)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %9, align 4
  br label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %68, %59, %50
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @cmsPipelineEval16(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @Sampler7D(i32, i32*, i32*, i32*) #1

declare dso_local i32 @IsGoodWordPrec(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
