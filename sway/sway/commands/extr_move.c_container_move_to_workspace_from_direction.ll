; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_to_workspace_from_direction.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_to_workspace_from_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sway_container = type { %struct.sway_container*, i64, i64, i64, i64 }
%struct.sway_workspace = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Reparenting container (parallel)\00", align 1
@WLR_DIRECTION_RIGHT = common dso_local global i32 0, align 4
@WLR_DIRECTION_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Reparenting container (perpendicular)\00", align 1
@config = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.sway_workspace*, i32)* @container_move_to_workspace_from_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @container_move_to_workspace_from_direction(%struct.sway_container* %0, %struct.sway_workspace* %1, i32 %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store %struct.sway_workspace* %1, %struct.sway_workspace** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %14 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %18 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @is_parallel(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %3
  %24 = load i32, i32* @SWAY_DEBUG, align 4
  %25 = call i32 @sway_log(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @WLR_DIRECTION_DOWN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %23
  br label %40

34:                                               ; preds = %29
  %35 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %36 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %34, %33
  %41 = phi i32 [ 0, %33 ], [ %39, %34 ]
  store i32 %41, i32* %7, align 4
  %42 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %43 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @workspace_insert_tiling(%struct.sway_workspace* %42, %struct.sway_container* %43, i32 %44)
  br label %76

46:                                               ; preds = %3
  %47 = load i32, i32* @SWAY_DEBUG, align 4
  %48 = call i32 @sway_log(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %54 = call %struct.sway_container* @seat_get_focus_inactive_tiling(i32 %52, %struct.sway_workspace* %53)
  store %struct.sway_container* %54, %struct.sway_container** %8, align 8
  %55 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %56 = icmp ne %struct.sway_container* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %46
  %58 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %59 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %60 = call i32 @workspace_add_tiling(%struct.sway_workspace* %58, %struct.sway_container* %59)
  br label %76

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %67, %61
  %63 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %64 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %63, i32 0, i32 0
  %65 = load %struct.sway_container*, %struct.sway_container** %64, align 8
  %66 = icmp ne %struct.sway_container* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %69 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %68, i32 0, i32 0
  %70 = load %struct.sway_container*, %struct.sway_container** %69, align 8
  store %struct.sway_container* %70, %struct.sway_container** %8, align 8
  br label %62

71:                                               ; preds = %62
  %72 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %73 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @container_move_to_container_from_direction(%struct.sway_container* %72, %struct.sway_container* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %57, %40
  ret void
}

declare dso_local i64 @is_parallel(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @workspace_insert_tiling(%struct.sway_workspace*, %struct.sway_container*, i32) #1

declare dso_local %struct.sway_container* @seat_get_focus_inactive_tiling(i32, %struct.sway_workspace*) #1

declare dso_local i32 @workspace_add_tiling(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @container_move_to_container_from_direction(%struct.sway_container*, %struct.sway_container*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
