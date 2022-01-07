; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_get_workspaces_callback.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_get_workspaces_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32, i32 }
%struct.sway_seat = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"focused\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_workspace*, i8*)* @ipc_get_workspaces_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipc_get_workspaces_callback(%struct.sway_workspace* %0, i8* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sway_seat*, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sway_workspace* %0, %struct.sway_workspace** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %11 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %10, i32 0, i32 1
  %12 = call i32* @ipc_json_describe_node(i32* %11)
  store i32* %12, i32** %5, align 8
  %13 = call %struct.sway_seat* (...) @input_manager_get_default_seat()
  store %struct.sway_seat* %13, %struct.sway_seat** %6, align 8
  %14 = load %struct.sway_seat*, %struct.sway_seat** %6, align 8
  %15 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %14)
  store %struct.sway_workspace* %15, %struct.sway_workspace** %7, align 8
  %16 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %18 = icmp eq %struct.sway_workspace* %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @json_object_object_del(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @json_object_new_boolean(i32 %23)
  %25 = call i32 @json_object_object_add(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @json_object_array_add(i32* %27, i32* %28)
  %30 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %31 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.sway_workspace* @output_get_active_workspace(i32 %32)
  store %struct.sway_workspace* %33, %struct.sway_workspace** %7, align 8
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %35 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %36 = icmp eq %struct.sway_workspace* %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @json_object_new_boolean(i32 %39)
  %41 = call i32 @json_object_object_add(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  ret void
}

declare dso_local i32* @ipc_json_describe_node(i32*) #1

declare dso_local %struct.sway_seat* @input_manager_get_default_seat(...) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i32 @json_object_object_del(i32*, i8*) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32) #1

declare dso_local i32 @json_object_new_boolean(i32) #1

declare dso_local i32 @json_object_array_add(i32*, i32*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
