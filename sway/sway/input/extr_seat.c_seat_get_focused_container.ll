; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_get_focused_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_get_focused_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_node = type { i64, %struct.sway_container* }

@N_CONTAINER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @seat_get_focused_container(%struct.sway_seat* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_node*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  %5 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %6 = call %struct.sway_node* @seat_get_focus(%struct.sway_seat* %5)
  store %struct.sway_node* %6, %struct.sway_node** %4, align 8
  %7 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %8 = icmp ne %struct.sway_node* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %11 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @N_CONTAINER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %17 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %16, i32 0, i32 1
  %18 = load %struct.sway_container*, %struct.sway_container** %17, align 8
  store %struct.sway_container* %18, %struct.sway_container** %2, align 8
  br label %20

19:                                               ; preds = %9, %1
  store %struct.sway_container* null, %struct.sway_container** %2, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  ret %struct.sway_container* %21
}

declare dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
