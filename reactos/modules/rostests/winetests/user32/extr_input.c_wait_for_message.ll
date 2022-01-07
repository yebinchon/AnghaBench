; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_input.c_wait_for_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_input.c_wait_for_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@PM_REMOVE = common dso_local global i32 0, align 4
@WM_PAINT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@QS_ALLINPUT = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @wait_for_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wait_for_message(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  br label %4

4:                                                ; preds = %29, %1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = load i32, i32* @PM_REMOVE, align 4
  %7 = call i64 @PeekMessageA(%struct.TYPE_5__* %5, i32 0, i32 0, i32 0, i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WM_PAINT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = call i32 @DispatchMessageA(%struct.TYPE_5__* %17)
  br label %20

19:                                               ; preds = %10
  br label %30

20:                                               ; preds = %16
  br label %29

21:                                               ; preds = %4
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @QS_ALLINPUT, align 4
  %24 = call i64 @MsgWaitForMultipleObjects(i32 0, i32* null, i32 %22, i32 100, i32 %23)
  %25 = load i64, i64* @WAIT_TIMEOUT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %30

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %20
  br label %4

30:                                               ; preds = %27, %19
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i64 @PeekMessageA(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @DispatchMessageA(%struct.TYPE_5__*) #1

declare dso_local i64 @MsgWaitForMultipleObjects(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
