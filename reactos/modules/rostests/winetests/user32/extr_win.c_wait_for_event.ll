; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_wait_for_event.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_wait_for_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@QS_ALLINPUT = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @wait_for_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_event(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @GetTickCount()
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* @FALSE, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @QS_ALLINPUT, align 4
  %15 = call i64 @MsgWaitForMultipleObjects(i32 1, i32* %4, i32 %12, i32 %13, i32 %14)
  %16 = load i64, i64* @WAIT_OBJECT_0, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i32, i32* @PM_REMOVE, align 4
  %23 = call i64 @PeekMessageA(i32* %7, i32 0, i32 0, i32 0, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @DispatchMessageA(i32* %7)
  br label %21

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (...) @GetTickCount()
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %11, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
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
