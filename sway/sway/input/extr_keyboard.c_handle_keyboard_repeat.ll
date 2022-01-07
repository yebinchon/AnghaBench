; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_handle_keyboard_repeat.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_keyboard.c_handle_keyboard_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_keyboard = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.wlr_keyboard* }
%struct.wlr_keyboard = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to update key repeat timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @handle_keyboard_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_keyboard_repeat(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sway_keyboard*, align 8
  %4 = alloca %struct.wlr_keyboard*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sway_keyboard*
  store %struct.sway_keyboard* %6, %struct.sway_keyboard** %3, align 8
  %7 = load %struct.sway_keyboard*, %struct.sway_keyboard** %3, align 8
  %8 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %14, align 8
  store %struct.wlr_keyboard* %15, %struct.wlr_keyboard** %4, align 8
  %16 = load %struct.sway_keyboard*, %struct.sway_keyboard** %3, align 8
  %17 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %1
  %21 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %4, align 8
  %22 = getelementptr inbounds %struct.wlr_keyboard, %struct.wlr_keyboard* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.sway_keyboard*, %struct.sway_keyboard** %3, align 8
  %28 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.wlr_keyboard*, %struct.wlr_keyboard** %4, align 8
  %31 = getelementptr inbounds %struct.wlr_keyboard, %struct.wlr_keyboard* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 1000, %33
  %35 = call i64 @wl_event_source_timer_update(i32 %29, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @SWAY_DEBUG, align 4
  %39 = call i32 @sway_log(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %26
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %struct.sway_keyboard*, %struct.sway_keyboard** %3, align 8
  %43 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sway_keyboard*, %struct.sway_keyboard** %3, align 8
  %48 = getelementptr inbounds %struct.sway_keyboard, %struct.sway_keyboard* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @seat_execute_command(i32 %46, i64 %49)
  %51 = call i32 (...) @transaction_commit_dirty()
  br label %52

52:                                               ; preds = %41, %1
  ret i32 0
}

declare dso_local i64 @wl_event_source_timer_update(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @seat_execute_command(i32, i64) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
