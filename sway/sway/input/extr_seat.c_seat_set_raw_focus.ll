; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_set_raw_focus.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_set_raw_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32 }
%struct.sway_node = type { i32 }
%struct.sway_seat_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seat_set_raw_focus(%struct.sway_seat* %0, %struct.sway_node* %1) #0 {
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_node*, align 8
  %5 = alloca %struct.sway_seat_node*, align 8
  %6 = alloca %struct.sway_node*, align 8
  store %struct.sway_seat* %0, %struct.sway_seat** %3, align 8
  store %struct.sway_node* %1, %struct.sway_node** %4, align 8
  %7 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %8 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %9 = call %struct.sway_seat_node* @seat_node_from_node(%struct.sway_seat* %7, %struct.sway_node* %8)
  store %struct.sway_seat_node* %9, %struct.sway_seat_node** %5, align 8
  %10 = load %struct.sway_seat_node*, %struct.sway_seat_node** %5, align 8
  %11 = getelementptr inbounds %struct.sway_seat_node, %struct.sway_seat_node* %10, i32 0, i32 0
  %12 = call i32 @wl_list_remove(i32* %11)
  %13 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %14 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %13, i32 0, i32 0
  %15 = load %struct.sway_seat_node*, %struct.sway_seat_node** %5, align 8
  %16 = getelementptr inbounds %struct.sway_seat_node, %struct.sway_seat_node* %15, i32 0, i32 0
  %17 = call i32 @wl_list_insert(i32* %14, i32* %16)
  %18 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %19 = call i32 @node_set_dirty(%struct.sway_node* %18)
  %20 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %21 = call %struct.sway_node* @node_get_parent(%struct.sway_node* %20)
  store %struct.sway_node* %21, %struct.sway_node** %6, align 8
  %22 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %23 = icmp ne %struct.sway_node* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %26 = call i32 @node_set_dirty(%struct.sway_node* %25)
  br label %27

27:                                               ; preds = %24, %2
  ret void
}

declare dso_local %struct.sway_seat_node* @seat_node_from_node(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @node_set_dirty(%struct.sway_node*) #1

declare dso_local %struct.sway_node* @node_get_parent(%struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
