; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_focus_parent.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_focus_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container*, %struct.sway_seat* }
%struct.sway_container = type { i32, i64 }
%struct.sway_seat = type { i32 }
%struct.cmd_results = type { i32 }
%struct.sway_node = type { i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* ()* @focus_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @focus_parent() #0 {
  %1 = alloca %struct.cmd_results*, align 8
  %2 = alloca %struct.sway_seat*, align 8
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_node*, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  store %struct.sway_seat* %8, %struct.sway_seat** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  store %struct.sway_container* %12, %struct.sway_container** %3, align 8
  %13 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %14 = icmp ne %struct.sway_container* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %0
  %16 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %0
  %21 = load i32, i32* @CMD_SUCCESS, align 4
  %22 = call %struct.cmd_results* @cmd_results_new(i32 %21, i32* null)
  store %struct.cmd_results* %22, %struct.cmd_results** %1, align 8
  br label %38

23:                                               ; preds = %15
  %24 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 0
  %26 = call %struct.sway_node* @node_get_parent(i32* %25)
  store %struct.sway_node* %26, %struct.sway_node** %4, align 8
  %27 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %28 = icmp ne %struct.sway_node* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %31 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %32 = call i32 @seat_set_focus(%struct.sway_seat* %30, %struct.sway_node* %31)
  %33 = load %struct.sway_seat*, %struct.sway_seat** %2, align 8
  %34 = call i32 @seat_consider_warp_to_focus(%struct.sway_seat* %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* @CMD_SUCCESS, align 4
  %37 = call %struct.cmd_results* @cmd_results_new(i32 %36, i32* null)
  store %struct.cmd_results* %37, %struct.cmd_results** %1, align 8
  br label %38

38:                                               ; preds = %35, %20
  %39 = load %struct.cmd_results*, %struct.cmd_results** %1, align 8
  ret %struct.cmd_results* %39
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

declare dso_local %struct.sway_node* @node_get_parent(i32*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @seat_consider_warp_to_focus(%struct.sway_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
