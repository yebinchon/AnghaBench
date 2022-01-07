; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_get_focus.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_get_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat_node = type { %struct.sway_node* }
%struct.sway_node = type { i32 }
%struct.sway_seat = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@link = common dso_local global i32 0, align 4
@current = common dso_local global %struct.sway_seat_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_node* @seat_get_focus(%struct.sway_seat* %0) #0 {
  %2 = alloca %struct.sway_node*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_seat_node*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  %5 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %6 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.sway_node* null, %struct.sway_node** %2, align 8
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %12 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %11, i32 0, i32 0
  %13 = call i64 @wl_list_empty(%struct.TYPE_2__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.sway_node* null, %struct.sway_node** %2, align 8
  br label %28

16:                                               ; preds = %10
  %17 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %18 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sway_seat_node*, %struct.sway_seat_node** %4, align 8
  %22 = ptrtoint %struct.sway_seat_node* %21 to i32
  %23 = load i32, i32* @link, align 4
  %24 = call %struct.sway_seat_node* @wl_container_of(i32 %20, i32 %22, i32 %23)
  store %struct.sway_seat_node* %24, %struct.sway_seat_node** %4, align 8
  %25 = load %struct.sway_seat_node*, %struct.sway_seat_node** %4, align 8
  %26 = getelementptr inbounds %struct.sway_seat_node, %struct.sway_seat_node* %25, i32 0, i32 0
  %27 = load %struct.sway_node*, %struct.sway_node** %26, align 8
  store %struct.sway_node* %27, %struct.sway_node** %2, align 8
  br label %28

28:                                               ; preds = %16, %15, %9
  %29 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  ret %struct.sway_node* %29
}

declare dso_local i64 @wl_list_empty(%struct.TYPE_2__*) #1

declare dso_local %struct.sway_seat_node* @wl_container_of(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
