; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_dispatch_cursor_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_dispatch_cursor_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i32 }
%struct.wlr_input_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispatch_cursor_button(%struct.sway_cursor* %0, %struct.wlr_input_device* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sway_cursor*, align 8
  %7 = alloca %struct.wlr_input_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sway_cursor* %0, %struct.sway_cursor** %6, align 8
  store %struct.wlr_input_device* %1, %struct.wlr_input_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* %8, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = call i64 (...) @get_current_time_msec()
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %13, %5
  %16 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %17 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.wlr_input_device*, %struct.wlr_input_device** %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @seatop_button(i32 %18, i64 %19, %struct.wlr_input_device* %20, i64 %21, i32 %22)
  ret void
}

declare dso_local i64 @get_current_time_msec(...) #1

declare dso_local i32 @seatop_button(i32, i64, %struct.wlr_input_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
