; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_Anime_Step.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shimgvw/extr_shimgvw.c_Anime_Step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4
@m_nLoopCount = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@m_nFrameIndex = common dso_local global i64 0, align 8
@m_nFrameCount = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@m_nLoopIndex = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Anime_Step(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @INFINITE, align 4
  %5 = load i32*, i32** %3, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i64, i64* @m_nLoopCount, align 8
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load i64, i64* @m_nFrameIndex, align 8
  %12 = add nsw i64 %11, 1
  %13 = load i64, i64* @m_nFrameCount, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i64, i64* @m_nFrameIndex, align 8
  %17 = call i32 @Anime_GetFrameDelay(i64 %16)
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i64, i64* @m_nFrameIndex, align 8
  %20 = call i32 @Anime_SetFrameIndex(i64 %19)
  %21 = load i64, i64* @m_nFrameIndex, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @m_nFrameIndex, align 8
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %10
  %25 = load i64, i64* @m_nLoopCount, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @m_nLoopIndex, align 8
  %29 = load i64, i64* @m_nLoopCount, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27, %24
  %32 = load i64, i64* @m_nFrameIndex, align 8
  %33 = call i32 @Anime_GetFrameDelay(i64 %32)
  %34 = load i32*, i32** %3, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i64, i64* @m_nFrameIndex, align 8
  %36 = call i32 @Anime_SetFrameIndex(i64 %35)
  store i64 0, i64* @m_nFrameIndex, align 8
  %37 = load i64, i64* @m_nLoopIndex, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* @m_nLoopIndex, align 8
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %31, %15, %8
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @Anime_GetFrameDelay(i64) #1

declare dso_local i32 @Anime_SetFrameIndex(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
