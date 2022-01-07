; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_workspace_move_to_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_workspace_move_to_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sway_seat* }
%struct.sway_seat = type { i32 }
%struct.sway_workspace = type { i32, %struct.sway_output* }
%struct.sway_output = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.sway_node = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Expected output to have a workspace\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_workspace*, %struct.sway_output*)* @workspace_move_to_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workspace_move_to_output(%struct.sway_workspace* %0, %struct.sway_output* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.sway_workspace*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sway_workspace*, align 8
  %10 = alloca %struct.sway_node*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %3, align 8
  store %struct.sway_output* %1, %struct.sway_output** %4, align 8
  %11 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %12 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %11, i32 0, i32 1
  %13 = load %struct.sway_output*, %struct.sway_output** %12, align 8
  %14 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %15 = icmp eq %struct.sway_output* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %77

17:                                               ; preds = %2
  %18 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %19 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %18, i32 0, i32 1
  %20 = load %struct.sway_output*, %struct.sway_output** %19, align 8
  store %struct.sway_output* %20, %struct.sway_output** %5, align 8
  %21 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %22 = call i32 @workspace_detach(%struct.sway_workspace* %21)
  %23 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %24 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %23)
  store %struct.sway_workspace* %24, %struct.sway_workspace** %6, align 8
  %25 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %26 = call i32 @sway_assert(%struct.sway_workspace* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %77

29:                                               ; preds = %17
  %30 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %31 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %32 = call i32 @output_add_workspace(%struct.sway_output* %30, %struct.sway_workspace* %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.sway_seat*, %struct.sway_seat** %35, align 8
  store %struct.sway_seat* %36, %struct.sway_seat** %7, align 8
  %37 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %38 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %29
  %44 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %45 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @workspace_next_name(i32 %48)
  store i8* %49, i8** %8, align 8
  %50 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call %struct.sway_workspace* @workspace_create(%struct.sway_output* %50, i8* %51)
  store %struct.sway_workspace* %52, %struct.sway_workspace** %9, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %56 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %57 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %56, i32 0, i32 0
  %58 = call i32 @seat_set_raw_focus(%struct.sway_seat* %55, i32* %57)
  br label %59

59:                                               ; preds = %43, %29
  %60 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %61 = call i32 @workspace_consider_destroy(%struct.sway_workspace* %60)
  %62 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %63 = call i32 @output_sort_workspaces(%struct.sway_output* %62)
  %64 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %65 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %66 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %65, i32 0, i32 0
  %67 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %64, i32* %66)
  store %struct.sway_node* %67, %struct.sway_node** %10, align 8
  %68 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %69 = load %struct.sway_node*, %struct.sway_node** %10, align 8
  %70 = call i32 @seat_set_focus(%struct.sway_seat* %68, %struct.sway_node* %69)
  %71 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %72 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %73 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %74 = call i32 @workspace_output_raise_priority(%struct.sway_workspace* %71, %struct.sway_output* %72, %struct.sway_output* %73)
  %75 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %76 = call i32 @ipc_event_workspace(i32* null, %struct.sway_workspace* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %59, %28, %16
  ret void
}

declare dso_local i32 @workspace_detach(%struct.sway_workspace*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @sway_assert(%struct.sway_workspace*, i8*) #1

declare dso_local i32 @output_add_workspace(%struct.sway_output*, %struct.sway_workspace*) #1

declare dso_local i8* @workspace_next_name(i32) #1

declare dso_local %struct.sway_workspace* @workspace_create(%struct.sway_output*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @seat_set_raw_focus(%struct.sway_seat*, i32*) #1

declare dso_local i32 @workspace_consider_destroy(%struct.sway_workspace*) #1

declare dso_local i32 @output_sort_workspaces(%struct.sway_output*) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @workspace_output_raise_priority(%struct.sway_workspace*, %struct.sway_output*, %struct.sway_output*) #1

declare dso_local i32 @ipc_event_workspace(i32*, %struct.sway_workspace*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
