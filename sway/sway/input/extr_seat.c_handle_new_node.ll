; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_handle_new_node.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_handle_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_seat = type { i32 }
%struct.wl_listener = type { i32 }
%struct.sway_node = type { i32 }

@new_node = common dso_local global i32 0, align 4
@seat = common dso_local global %struct.sway_seat* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_new_node(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca %struct.sway_node*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %9 = ptrtoint %struct.sway_seat* %8 to i32
  %10 = load i32, i32* @new_node, align 4
  %11 = call %struct.sway_seat* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_seat* %11, %struct.sway_seat** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.sway_node*
  store %struct.sway_node* %13, %struct.sway_node** %6, align 8
  %14 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %15 = load %struct.sway_node*, %struct.sway_node** %6, align 8
  %16 = call i32 @seat_node_from_node(%struct.sway_seat* %14, %struct.sway_node* %15)
  ret void
}

declare dso_local %struct.sway_seat* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local i32 @seat_node_from_node(%struct.sway_seat*, %struct.sway_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
