; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_cursor_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_handle_cursor_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i64 }
%struct.wl_listener = type { i32 }
%struct.wlr_event_pointer_button = type { i64, i32, i32, i32 }

@button = common dso_local global i32 0, align 4
@WLR_BUTTON_PRESSED = common dso_local global i64 0, align 8
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Pressed button count was wrong\00", align 1
@cursor = common dso_local global %struct.sway_cursor* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_cursor_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cursor_button(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca %struct.wlr_event_pointer_button*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %9 = ptrtoint %struct.sway_cursor* %8 to i32
  %10 = load i32, i32* @button, align 4
  %11 = call %struct.sway_cursor* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_cursor* %11, %struct.sway_cursor** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.wlr_event_pointer_button*
  store %struct.wlr_event_pointer_button* %13, %struct.wlr_event_pointer_button** %6, align 8
  %14 = load %struct.wlr_event_pointer_button*, %struct.wlr_event_pointer_button** %6, align 8
  %15 = getelementptr inbounds %struct.wlr_event_pointer_button, %struct.wlr_event_pointer_button* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WLR_BUTTON_PRESSED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %21 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %26 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %31 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  br label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @SWAY_ERROR, align 4
  %36 = call i32 @sway_log(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %40 = call i32 @cursor_handle_activity(%struct.sway_cursor* %39)
  %41 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %42 = load %struct.wlr_event_pointer_button*, %struct.wlr_event_pointer_button** %6, align 8
  %43 = getelementptr inbounds %struct.wlr_event_pointer_button, %struct.wlr_event_pointer_button* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.wlr_event_pointer_button*, %struct.wlr_event_pointer_button** %6, align 8
  %46 = getelementptr inbounds %struct.wlr_event_pointer_button, %struct.wlr_event_pointer_button* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wlr_event_pointer_button*, %struct.wlr_event_pointer_button** %6, align 8
  %49 = getelementptr inbounds %struct.wlr_event_pointer_button, %struct.wlr_event_pointer_button* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wlr_event_pointer_button*, %struct.wlr_event_pointer_button** %6, align 8
  %52 = getelementptr inbounds %struct.wlr_event_pointer_button, %struct.wlr_event_pointer_button* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dispatch_cursor_button(%struct.sway_cursor* %41, i32 %44, i32 %47, i32 %50, i64 %53)
  %55 = call i32 (...) @transaction_commit_dirty()
  ret void
}

declare dso_local %struct.sway_cursor* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @cursor_handle_activity(%struct.sway_cursor*) #1

declare dso_local i32 @dispatch_cursor_button(%struct.sway_cursor*, i32, i32, i32, i64) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
