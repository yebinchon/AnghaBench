; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_down.c_handle_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_down.c_handle_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wlr_input_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat*, i32, %struct.wlr_input_device*, i32, i32)* @handle_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_button(%struct.sway_seat* %0, i32 %1, %struct.wlr_input_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlr_input_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sway_seat* %0, %struct.sway_seat** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wlr_input_device* %2, %struct.wlr_input_device** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @seat_pointer_notify_button(%struct.sway_seat* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %17 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %24 = call i32 @seatop_begin_default(%struct.sway_seat* %23)
  br label %25

25:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @seat_pointer_notify_button(%struct.sway_seat*, i32, i32, i32) #1

declare dso_local i32 @seatop_begin_default(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
