; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_event_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_event_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32 }

@IPC_EVENT_WORKSPACE = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Sending workspace::%s event\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"current\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_event_workspace(%struct.sway_workspace* %0, %struct.sway_workspace* %1, i8* %2) #0 {
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %4, align 8
  store %struct.sway_workspace* %1, %struct.sway_workspace** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @IPC_EVENT_WORKSPACE, align 4
  %10 = call i32 @ipc_has_event_listeners(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %53

13:                                               ; preds = %3
  %14 = load i32, i32* @SWAY_DEBUG, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @sway_log(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32* (...) @json_object_new_object()
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @json_object_new_string(i8* %19)
  %21 = call i32 @json_object_object_add(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %20)
  %22 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %23 = icmp ne %struct.sway_workspace* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %27 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %26, i32 0, i32 0
  %28 = call i32* @ipc_json_describe_node_recursive(i32* %27)
  %29 = call i32 @json_object_object_add(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %28)
  br label %33

30:                                               ; preds = %13
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @json_object_object_add(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %35 = icmp ne %struct.sway_workspace* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %39 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %38, i32 0, i32 0
  %40 = call i32* @ipc_json_describe_node_recursive(i32* %39)
  %41 = call i32 @json_object_object_add(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %40)
  br label %45

42:                                               ; preds = %33
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @json_object_object_add(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @json_object_to_json_string(i32* %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @IPC_EVENT_WORKSPACE, align 4
  %50 = call i32 @ipc_send_event(i8* %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @json_object_put(i32* %51)
  br label %53

53:                                               ; preds = %45, %12
  ret void
}

declare dso_local i32 @ipc_has_event_listeners(i32) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local i32* @json_object_new_object(...) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_new_string(i8*) #1

declare dso_local i32* @ipc_json_describe_node_recursive(i32*) #1

declare dso_local i8* @json_object_to_json_string(i32*) #1

declare dso_local i32 @ipc_send_event(i8*, i32) #1

declare dso_local i32 @json_object_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
