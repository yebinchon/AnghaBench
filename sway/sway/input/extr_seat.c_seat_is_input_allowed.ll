; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_is_input_allowed.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_is_input_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { %struct.wl_client* }
%struct.wl_client = type { i32 }
%struct.wlr_surface = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seat_is_input_allowed(%struct.sway_seat* %0, %struct.wlr_surface* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.wlr_surface*, align 8
  %5 = alloca %struct.wl_client*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %4, align 8
  %6 = load %struct.wlr_surface*, %struct.wlr_surface** %4, align 8
  %7 = getelementptr inbounds %struct.wlr_surface, %struct.wlr_surface* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.wl_client* @wl_resource_get_client(i32 %8)
  store %struct.wl_client* %9, %struct.wl_client** %5, align 8
  %10 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %11 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %10, i32 0, i32 0
  %12 = load %struct.wl_client*, %struct.wl_client** %11, align 8
  %13 = icmp ne %struct.wl_client* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %16 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %15, i32 0, i32 0
  %17 = load %struct.wl_client*, %struct.wl_client** %16, align 8
  %18 = load %struct.wl_client*, %struct.wl_client** %5, align 8
  %19 = icmp eq %struct.wl_client* %17, %18
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local %struct.wl_client* @wl_resource_get_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
