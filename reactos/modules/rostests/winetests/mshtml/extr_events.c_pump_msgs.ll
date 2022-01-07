; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c_pump_msgs.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c_pump_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @pump_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pump_msgs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %16, %6
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call i64 @GetMessageW(i32* %3, i32* null, i32 0, i32 0)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i1 [ false, %7 ], [ %13, %11 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = call i32 @TranslateMessage(i32* %3)
  %18 = call i32 @DispatchMessageW(i32* %3)
  br label %7

19:                                               ; preds = %14
  br label %29

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i32, i32* @PM_REMOVE, align 4
  %23 = call i64 @PeekMessageW(i32* %3, i32* null, i32 0, i32 0, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 @TranslateMessage(i32* %3)
  %27 = call i32 @DispatchMessageW(i32* %3)
  br label %21

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %19
  ret void
}

declare dso_local i64 @GetMessageW(i32*, i32*, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageW(i32*) #1

declare dso_local i64 @PeekMessageW(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
