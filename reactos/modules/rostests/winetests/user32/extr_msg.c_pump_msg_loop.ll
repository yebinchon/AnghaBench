; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_pump_msg_loop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_pump_msg_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.recvd_message = type { i64, i32, i8*, i32, i32, i32 }

@PM_REMOVE = common dso_local global i32 0, align 4
@WM_MOUSEMOVE = common dso_local global i64 0, align 8
@WM_TIMER = common dso_local global i64 0, align 8
@wparam = common dso_local global i32 0, align 4
@lparam = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pump_msg_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pump_msg_loop(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.recvd_message, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %56, %26, %2
  %8 = load i32, i32* @PM_REMOVE, align 4
  %9 = call i64 @PeekMessageA(%struct.TYPE_6__* %5, i32 0, i32 0, i32 0, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WM_MOUSEMOVE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WM_TIMER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @ignore_message(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16, %11
  br label %7

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %6, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %6, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @wparam, align 4
  %35 = load i32, i32* @lparam, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %6, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %6, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %44, align 8
  %45 = call i32 @add_message(%struct.recvd_message* %6)
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %27
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @TranslateAcceleratorA(i32 %49, i32 %50, %struct.TYPE_6__* %5)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48, %27
  %54 = call i32 @TranslateMessage(%struct.TYPE_6__* %5)
  %55 = call i32 @DispatchMessageA(%struct.TYPE_6__* %5)
  br label %56

56:                                               ; preds = %53, %48
  br label %7

57:                                               ; preds = %7
  ret void
}

declare dso_local i64 @PeekMessageA(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i64 @ignore_message(i64) #1

declare dso_local i32 @add_message(%struct.recvd_message*) #1

declare dso_local i32 @TranslateAcceleratorA(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @TranslateMessage(%struct.TYPE_6__*) #1

declare dso_local i32 @DispatchMessageA(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
