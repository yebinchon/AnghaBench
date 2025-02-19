; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfutil.c_GetPrevHistoryDir.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfutil.c_GetPrevHistoryDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@historyCur = common dso_local global i32 0, align 4
@MAXHISTORY = common dso_local global i32 0, align 4
@rghistoryDir = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetPrevHistoryDir(i64 %0, i32** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @historyCur, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @MAXHISTORY, align 4
  %14 = srem i32 %12, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* @historyCur, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @MAXHISTORY, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @historyCur, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  br label %32

30:                                               ; preds = %22
  %31 = load i64, i64* %9, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %10, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rghistoryDir, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %4, align 8
  br label %61

42:                                               ; preds = %32
  %43 = load i64, i64* %10, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @historyCur, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rghistoryDir, align 8
  %46 = load i32, i32* @historyCur, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32**, i32*** %6, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rghistoryDir, align 8
  %54 = load i32, i32* @historyCur, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @lstrcpy(i32 %52, i32 %58)
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %42, %40
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @lstrcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
