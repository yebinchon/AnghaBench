; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_send_unfocus.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_send_unfocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i64, i32, i32 }
%struct.sway_seat = type { i32, i32 }

@N_WORKSPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_node*, %struct.sway_seat*)* @seat_send_unfocus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_send_unfocus(%struct.sway_node* %0, %struct.sway_seat* %1) #0 {
  %3 = alloca %struct.sway_node*, align 8
  %4 = alloca %struct.sway_seat*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %3, align 8
  store %struct.sway_seat* %1, %struct.sway_seat** %4, align 8
  %5 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %6 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @sway_cursor_constrain(i32 %7, i32* null)
  %9 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %10 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @wlr_seat_keyboard_clear_focus(i32 %11)
  %13 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %14 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @N_WORKSPACE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %20 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %23 = call i32 @workspace_for_each_container(i32 %21, i32 (i32, %struct.sway_seat*)* @send_unfocus, %struct.sway_seat* %22)
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %26 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %29 = call i32 @send_unfocus(i32 %27, %struct.sway_seat* %28)
  %30 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %31 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sway_seat*, %struct.sway_seat** %4, align 8
  %34 = call i32 @container_for_each_child(i32 %32, i32 (i32, %struct.sway_seat*)* @send_unfocus, %struct.sway_seat* %33)
  br label %35

35:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @sway_cursor_constrain(i32, i32*) #1

declare dso_local i32 @wlr_seat_keyboard_clear_focus(i32) #1

declare dso_local i32 @workspace_for_each_container(i32, i32 (i32, %struct.sway_seat*)*, %struct.sway_seat*) #1

declare dso_local i32 @send_unfocus(i32, %struct.sway_seat*) #1

declare dso_local i32 @container_for_each_child(i32, i32 (i32, %struct.sway_seat*)*, %struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
