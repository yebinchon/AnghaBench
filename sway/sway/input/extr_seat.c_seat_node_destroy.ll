; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_node_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_seat_node_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat_node = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_seat_node*)* @seat_node_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_node_destroy(%struct.sway_seat_node* %0) #0 {
  %2 = alloca %struct.sway_seat_node*, align 8
  store %struct.sway_seat_node* %0, %struct.sway_seat_node** %2, align 8
  %3 = load %struct.sway_seat_node*, %struct.sway_seat_node** %2, align 8
  %4 = getelementptr inbounds %struct.sway_seat_node, %struct.sway_seat_node* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @wl_list_remove(i32* %5)
  %7 = load %struct.sway_seat_node*, %struct.sway_seat_node** %2, align 8
  %8 = getelementptr inbounds %struct.sway_seat_node, %struct.sway_seat_node* %7, i32 0, i32 0
  %9 = call i32 @wl_list_remove(i32* %8)
  %10 = load %struct.sway_seat_node*, %struct.sway_seat_node** %2, align 8
  %11 = call i32 @free(%struct.sway_seat_node* %10)
  ret void
}

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @free(%struct.sway_seat_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
