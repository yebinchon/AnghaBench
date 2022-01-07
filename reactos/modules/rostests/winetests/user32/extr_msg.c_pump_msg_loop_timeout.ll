; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_pump_msg_loop_timeout.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_pump_msg_loop_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64 }
%struct.recvd_message = type { i64, i32, i8*, i32, i32, i64 }

@PM_REMOVE = common dso_local global i32 0, align 4
@WM_TIMER = common dso_local global i64 0, align 8
@WM_SYSTIMER = common dso_local global i64 0, align 8
@sent = common dso_local global i32 0, align 4
@wparam = common dso_local global i32 0, align 4
@lparam = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"msg_loop\00", align 1
@MOUSEEVENTF_MOVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @pump_msg_loop_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pump_msg_loop_timeout(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.recvd_message, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %9 = call i32 (...) @GetTickCount()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sdiv i32 %10, 2
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %74, %2
  br label %15

15:                                               ; preds = %54, %14
  %16 = load i32, i32* @PM_REMOVE, align 4
  %17 = call i64 @PeekMessageA(%struct.TYPE_4__* %5, i32 0, i32 0, i32 0, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WM_TIMER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WM_SYSTIMER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %8, i32 0, i32 5
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %8, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @sent, align 4
  %41 = load i32, i32* @wparam, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @lparam, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %8, i32 0, i32 4
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %8, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %52, align 8
  %53 = call i32 @add_message(%struct.recvd_message* %8)
  br label %54

54:                                               ; preds = %33, %29, %24
  %55 = call i32 @DispatchMessageA(%struct.TYPE_4__* %5)
  br label %15

56:                                               ; preds = %15
  %57 = call i32 (...) @GetTickCount()
  store i32 %57, i32* %7, align 4
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sdiv i32 %62, 2
  %64 = add nsw i32 %61, %63
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @MOUSEEVENTF_MOVE, align 4
  %69 = call i32 @mouse_event(i32 %68, i32 -1, i32 0, i32 0, i32 0)
  %70 = load i32, i32* @MOUSEEVENTF_MOVE, align 4
  %71 = call i32 @mouse_event(i32 %70, i32 1, i32 0, i32 0, i32 0)
  %72 = load i64, i64* @FALSE, align 8
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %67, %60, %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %7, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %14, label %80

80:                                               ; preds = %74
  ret void
}

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i64 @PeekMessageA(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @add_message(%struct.recvd_message*) #1

declare dso_local i32 @DispatchMessageA(%struct.TYPE_4__*) #1

declare dso_local i32 @mouse_event(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
