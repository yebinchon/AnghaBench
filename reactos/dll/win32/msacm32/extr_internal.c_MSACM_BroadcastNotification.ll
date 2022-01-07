; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_BroadcastNotification.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_BroadcastNotification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_3__* }

@MSACM_suspendBroadcastCount = common dso_local global i64 0, align 8
@MSACM_pFirstACMNotifyWnd = common dso_local global %struct.TYPE_3__* null, align 8
@ACMDRIVERDETAILS_SUPPORTF_DISABLED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MSACM_pendingBroadcast = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSACM_BroadcastNotification() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i64, i64* @MSACM_suspendBroadcastCount, align 8
  %3 = icmp sle i64 %2, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MSACM_pFirstACMNotifyWnd, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %1, align 8
  br label %6

6:                                                ; preds = %25, %4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ACMDRIVERDETAILS_SUPPORTF_DISABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SendMessageW(i32 %19, i32 %22, i32 0, i32 0)
  br label %24

24:                                               ; preds = %16, %9
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %1, align 8
  br label %6

29:                                               ; preds = %6
  br label %32

30:                                               ; preds = %0
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* @MSACM_pendingBroadcast, align 4
  br label %32

32:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
