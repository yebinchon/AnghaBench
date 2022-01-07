; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_flush_events.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_treeview.c_flush_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@QS_ALLINPUT = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@PM_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_events() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 200, i32* %2, align 4
  store i32 100, i32* %3, align 4
  %5 = call i32 (...) @GetTickCount()
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %5, %6
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @QS_ALLINPUT, align 4
  %15 = call i64 @MsgWaitForMultipleObjects(i32 0, i32* null, i32 %12, i32 %13, i32 %14)
  %16 = load i64, i64* @WAIT_TIMEOUT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %30

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %24, %19
  %21 = load i32, i32* @PM_REMOVE, align 4
  %22 = call i64 @PeekMessageA(i32* %1, i32 0, i32 0, i32 0, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @DispatchMessageA(i32* %1)
  br label %20

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (...) @GetTickCount()
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %8

30:                                               ; preds = %18, %8
  ret void
}

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i64 @MsgWaitForMultipleObjects(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @PeekMessageA(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
