; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirrd.c_CreateDTABlock.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirrd.c_CreateDTABlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@GWL_IERROR = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@WM_KEYDOWN = common dso_local global i32 0, align 4
@PM_NOREMOVE = common dso_local global i32 0, align 4
@VK_UP = common dso_local global i64 0, align 8
@VK_DOWN = common dso_local global i64 0, align 8
@EDIRABORT_NULL = common dso_local global i32 0, align 4
@EDIRABORT_READREQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CreateDTABlock(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GWL_IERROR, align 4
  %14 = load i32, i32* @ERROR_SUCCESS, align 4
  %15 = call i32 @SetWindowLongPtr(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32* @StealDTABlock(i32 %19, i32 %20, i32 %21)
  store i32* %22, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load i32, i32* @WM_KEYDOWN, align 4
  %26 = load i32, i32* @WM_KEYDOWN, align 4
  %27 = load i32, i32* @PM_NOREMOVE, align 4
  %28 = call i64 @PeekMessage(%struct.TYPE_3__* %11, i32* null, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VK_UP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VK_DOWN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %30
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @MemDelete(i32* %41)
  br label %51

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* @EDIRABORT_NULL, align 4
  %48 = call i32 @DirReadAbort(i32 %45, i32* %46, i32 %47)
  %49 = load i32*, i32** %10, align 8
  store i32* %49, i32** %5, align 8
  br label %55

50:                                               ; preds = %18, %4
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @EDIRABORT_READREQUEST, align 4
  %54 = call i32 @DirReadAbort(i32 %52, i32* null, i32 %53)
  store i32* null, i32** %5, align 8
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

declare dso_local i32 @SetWindowLongPtr(i32, i32, i32) #1

declare dso_local i32* @StealDTABlock(i32, i32, i32) #1

declare dso_local i64 @PeekMessage(%struct.TYPE_3__*, i32*, i32, i32, i32) #1

declare dso_local i32 @MemDelete(i32*) #1

declare dso_local i32 @DirReadAbort(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
