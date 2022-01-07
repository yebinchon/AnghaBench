; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_begin_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_begin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Destroying workspace '%s'\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_begin_destroy(%struct.sway_workspace* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %2, align 8
  %3 = load i32, i32* @SWAY_DEBUG, align 4
  %4 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %5 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @sway_log(i32 %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %9 = call i32 @ipc_event_workspace(i32* null, %struct.sway_workspace* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %11 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %15 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %14, i32 0, i32 0
  %16 = call i32 @wl_signal_emit(i32* %13, %struct.TYPE_5__* %15)
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %18 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %23 = call i32 @workspace_detach(%struct.sway_workspace* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %26 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %29 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %28, i32 0, i32 0
  %30 = call i32 @node_set_dirty(%struct.TYPE_5__* %29)
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @ipc_event_workspace(i32*, %struct.sway_workspace*, i8*) #1

declare dso_local i32 @wl_signal_emit(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @workspace_detach(%struct.sway_workspace*) #1

declare dso_local i32 @node_set_dirty(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
