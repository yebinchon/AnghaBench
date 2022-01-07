; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdio.c_WaitForSingleObjectWithMessages.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdio.c_WaitForSingleObjectWithMessages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@PM_REMOVE = common dso_local global i32 0, align 4
@WM_QUIT = common dso_local global i64 0, align 8
@WM_CLOSE = common dso_local global i64 0, align 8
@ERROR_CANCELLED = common dso_local global i32 0, align 4
@WAIT_FAILED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@QS_ALLINPUT = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WaitForSingleObjectWithMessages(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = call i64 (...) @GetTickCount64()
  %11 = load i64, i64* %5, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %56, %2
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i32, i32* @PM_REMOVE, align 4
  %16 = call i64 @PeekMessage(%struct.TYPE_4__* %9, i32* null, i32 0, i32 0, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WM_QUIT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WM_CLOSE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @ERROR_CANCELLED, align 4
  %30 = call i32 @SetLastError(i32 %29)
  %31 = load i64, i64* @WAIT_FAILED, align 8
  store i64 %31, i64* %3, align 8
  br label %63

32:                                               ; preds = %23
  %33 = call i32 @DispatchMessage(%struct.TYPE_4__* %9)
  br label %34

34:                                               ; preds = %32
  br label %14

35:                                               ; preds = %14
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* @QS_ALLINPUT, align 4
  %39 = call i64 @MsgWaitForMultipleObjects(i32 1, i32* %4, i32 %36, i64 %37, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @INFINITE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = call i64 (...) @GetTickCount64()
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %5, align 8
  br label %54

52:                                               ; preds = %43
  %53 = load i64, i64* @WAIT_TIMEOUT, align 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @WAIT_OBJECT_0, align 8
  %59 = add nsw i64 %58, 1
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %13, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %28
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i64 @GetTickCount64(...) #1

declare dso_local i64 @PeekMessage(%struct.TYPE_4__*, i32*, i32, i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @DispatchMessage(%struct.TYPE_4__*) #1

declare dso_local i64 @MsgWaitForMultipleObjects(i32, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
