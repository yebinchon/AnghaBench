; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_focus_mode.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_focus.c_focus_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_results = type { i32 }
%struct.sway_workspace = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_container = type { i32 }

@CMD_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to find a %s container in workspace\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tiling\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_workspace*, %struct.sway_seat*, i32)* @focus_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @focus_mode(%struct.sway_workspace* %0, %struct.sway_seat* %1, i32 %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %5, align 8
  store %struct.sway_seat* %1, %struct.sway_seat** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sway_container* null, %struct.sway_container** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %13 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %14 = call %struct.sway_container* @seat_get_focus_inactive_floating(%struct.sway_seat* %12, %struct.sway_workspace* %13)
  store %struct.sway_container* %14, %struct.sway_container** %8, align 8
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %18 = call %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat* %16, %struct.sway_workspace* %17)
  store %struct.sway_container* %18, %struct.sway_container** %8, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %21 = icmp ne %struct.sway_container* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %24 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %25 = call i32 @seat_set_focus_container(%struct.sway_seat* %23, %struct.sway_container* %24)
  %26 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %27 = call i32 @seat_consider_warp_to_focus(%struct.sway_seat* %26)
  br label %35

28:                                               ; preds = %19
  %29 = load i32, i32* @CMD_FAILURE, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %34 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %33)
  store %struct.cmd_results* %34, %struct.cmd_results** %4, align 8
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @CMD_SUCCESS, align 4
  %37 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %36, i8* null)
  store %struct.cmd_results* %37, %struct.cmd_results** %4, align 8
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %39
}

declare dso_local %struct.sway_container* @seat_get_focus_inactive_floating(%struct.sway_seat*, %struct.sway_workspace*) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_tiling(%struct.sway_seat*, %struct.sway_workspace*) #1

declare dso_local i32 @seat_set_focus_container(%struct.sway_seat*, %struct.sway_container*) #1

declare dso_local i32 @seat_consider_warp_to_focus(%struct.sway_seat*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
