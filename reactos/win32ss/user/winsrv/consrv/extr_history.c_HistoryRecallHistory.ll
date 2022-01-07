; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_history.c_HistoryRecallHistory.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/winsrv/consrv/extr_history.c_HistoryRecallHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HistoryRecallHistory(i32 %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.TYPE_3__* @HistoryCurrentBuffer(i32 %12, i32* %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %5, align 4
  br label %50

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @max(i64 %30, i32 0)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i64 @min(i32 %31, i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %24, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_3__* @HistoryCurrentBuffer(i32, i32*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
