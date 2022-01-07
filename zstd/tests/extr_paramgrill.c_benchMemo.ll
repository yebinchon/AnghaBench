; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_benchMemo.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_benchMemo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@benchMemo.bmcount = internal global i32 0, align 4
@INFEASIBLE_THRESHOLD = common dso_local global i64 0, align 8
@WORSE_RESULT = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@CUSTOM_LEVEL = common dso_local global i32 0, align 4
@BETTER_RESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, i32, i32*, i32*, i32)* @benchMemo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @benchMemo(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = bitcast %struct.TYPE_4__* %10 to i64*
  store i64 %1, i64* %19, align 4
  store i32* %0, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load i32*, i32** %16, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i64 @memoTableGet(i32* %20, i32 %21)
  %23 = load i64, i64* @INFEASIBLE_THRESHOLD, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @redundantParams(i32 %26, i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %8
  %33 = load i32, i32* @WORSE_RESULT, align 4
  store i32 %33, i32* %9, align 4
  br label %77

34:                                               ; preds = %25
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %17, align 4
  %41 = bitcast %struct.TYPE_4__* %10 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = call i32 @allBench(i32* %35, i64 %42, i32 %36, i32 %37, i32 %38, i32* %39, i32 %40)
  store i32 %43, i32* %18, align 4
  %44 = load i64, i64* @DEBUG, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load i32, i32* @benchMemo.bmcount, align 4
  %48 = srem i32 %47, 250
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @benchMemo.bmcount, align 4
  %52 = call i32 @DISPLAY(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @benchMemo.bmcount, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @benchMemo.bmcount, align 4
  br label %55

55:                                               ; preds = %50, %46, %34
  %56 = load i32, i32* @stdout, align 4
  %57 = load i32, i32* @CUSTOM_LEVEL, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BMK_printWinnerOpt(i32 %56, i32 %57, i32 %59, i32 %60, i32 %61, i32 %63)
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @BETTER_RESULT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %55
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @memoTableSet(i32* %72, i32 %73, i32 255)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %75, %32
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i64 @memoTableGet(i32*, i32) #1

declare dso_local i64 @redundantParams(i32, i32, i32) #1

declare dso_local i32 @allBench(i32*, i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @DISPLAY(i8*, i32) #1

declare dso_local i32 @BMK_printWinnerOpt(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memoTableSet(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
