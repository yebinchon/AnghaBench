; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dde.c_flush_events.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_dde.c_flush_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_timeout = common dso_local global i32 0, align 4
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
  %5 = load i32, i32* @default_timeout, align 4
  store i32 %5, i32* %2, align 4
  store i32 50, i32* %3, align 4
  %6 = call i32 (...) @GetTickCount()
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %6, %7
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %27, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load i32, i32* @FALSE, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @QS_ALLINPUT, align 4
  %16 = call i64 @MsgWaitForMultipleObjects(i32 0, i32* null, i32 %13, i32 %14, i32 %15)
  %17 = load i64, i64* @WAIT_TIMEOUT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %31

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i32, i32* @PM_REMOVE, align 4
  %23 = call i64 @PeekMessageA(i32* %1, i32 0, i32 0, i32 0, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @DispatchMessageA(i32* %1)
  br label %21

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (...) @GetTickCount()
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %2, align 4
  store i32 10, i32* %3, align 4
  br label %9

31:                                               ; preds = %19, %9
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
