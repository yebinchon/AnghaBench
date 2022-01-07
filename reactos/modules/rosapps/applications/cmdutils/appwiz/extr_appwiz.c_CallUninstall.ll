; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/appwiz/extr_appwiz.c_CallUninstall.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/appwiz/extr_appwiz.c_CallUninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@SW_SHOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@QS_ALLEVENTS = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@PM_REMOVE = common dso_local global i32 0, align 4
@WAIT_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CallUninstall(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 @ZeroMemory(%struct.TYPE_6__* %3, i32 8)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 8, i32* %8, align 4
  %9 = load i32, i32* @SW_SHOW, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i64 @CreateProcess(i32* null, i32 %11, i32* null, i32* null, i32 %12, i32 0, i32* null, i32* null, %struct.TYPE_6__* %3, %struct.TYPE_7__* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CloseHandle(i32 %17)
  br label %19

19:                                               ; preds = %48, %15
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32, i32* @INFINITE, align 4
  %23 = load i32, i32* @QS_ALLEVENTS, align 4
  %24 = call i64 @MsgWaitForMultipleObjects(i32 1, i32* %20, i32 %21, i32 %22, i32 %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @WAIT_OBJECT_0, align 8
  %27 = add nsw i64 %26, 1
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %34, %29
  %31 = load i32, i32* @PM_REMOVE, align 4
  %32 = call i64 @PeekMessage(i32* %6, i32* null, i32 0, i32 0, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = call i32 @TranslateMessage(i32* %6)
  %36 = call i32 @DispatchMessage(i32* %6)
  br label %30

37:                                               ; preds = %30
  br label %48

38:                                               ; preds = %19
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @WAIT_OBJECT_0, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @WAIT_FAILED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  br label %49

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %37
  br label %19

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @CloseHandle(i32 %51)
  br label %53

53:                                               ; preds = %49, %1
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @CreateProcess(i32*, i32, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i64 @MsgWaitForMultipleObjects(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @PeekMessage(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
