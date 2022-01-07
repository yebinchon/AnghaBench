; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seat.c_collect_focus_iter.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seat.c_collect_focus_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_node = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_seat_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_node*, i8*)* @collect_focus_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_focus_iter(%struct.sway_node* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_seat*, align 8
  %6 = alloca %struct.sway_seat_node*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sway_seat*
  store %struct.sway_seat* %8, %struct.sway_seat** %5, align 8
  %9 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %10 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %11 = call %struct.sway_seat_node* @seat_node_from_node(%struct.sway_seat* %9, %struct.sway_node* %10)
  store %struct.sway_seat_node* %11, %struct.sway_seat_node** %6, align 8
  %12 = load %struct.sway_seat_node*, %struct.sway_seat_node** %6, align 8
  %13 = icmp ne %struct.sway_seat_node* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.sway_seat_node*, %struct.sway_seat_node** %6, align 8
  %17 = getelementptr inbounds %struct.sway_seat_node, %struct.sway_seat_node* %16, i32 0, i32 0
  %18 = call i32 @wl_list_remove(i32* %17)
  %19 = load %struct.sway_seat*, %struct.sway_seat** %5, align 8
  %20 = getelementptr inbounds %struct.sway_seat, %struct.sway_seat* %19, i32 0, i32 0
  %21 = load %struct.sway_seat_node*, %struct.sway_seat_node** %6, align 8
  %22 = getelementptr inbounds %struct.sway_seat_node, %struct.sway_seat_node* %21, i32 0, i32 0
  %23 = call i32 @wl_list_insert(i32* %20, i32* %22)
  br label %24

24:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.sway_seat_node* @seat_node_from_node(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
