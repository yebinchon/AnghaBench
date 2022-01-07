; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_focus_child.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_focus_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_node*, %struct.sway_seat* }
%struct.sway_node = type { i32 }
%struct.sway_seat = type { i32 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* ()* @focus_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @focus_child() #0 {
  %1 = alloca %struct.sway_seat*, align 8
  %2 = alloca %struct.sway_node*, align 8
  %3 = alloca %struct.sway_node*, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  store %struct.sway_seat* %7, %struct.sway_seat** %1, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  store %struct.sway_node* %11, %struct.sway_node** %2, align 8
  %12 = load %struct.sway_seat*, %struct.sway_seat** %1, align 8
  %13 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %14 = call %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat* %12, %struct.sway_node* %13)
  store %struct.sway_node* %14, %struct.sway_node** %3, align 8
  %15 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %16 = icmp ne %struct.sway_node* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load %struct.sway_seat*, %struct.sway_seat** %1, align 8
  %19 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %20 = call i32 @seat_set_focus(%struct.sway_seat* %18, %struct.sway_node* %19)
  %21 = load %struct.sway_seat*, %struct.sway_seat** %1, align 8
  %22 = call i32 @seat_consider_warp_to_focus(%struct.sway_seat* %21)
  br label %23

23:                                               ; preds = %17, %0
  %24 = load i32, i32* @CMD_SUCCESS, align 4
  %25 = call %struct.cmd_results* @cmd_results_new(i32 %24, i32* null)
  ret %struct.cmd_results* %25
}

declare dso_local %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @seat_consider_warp_to_focus(%struct.sway_seat*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
