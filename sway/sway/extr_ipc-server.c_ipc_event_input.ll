; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_event_input.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_event_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_input_device = type { i32 }

@IPC_EVENT_INPUT = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Sending input event\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_event_input(i8* %0, %struct.sway_input_device* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sway_input_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sway_input_device* %1, %struct.sway_input_device** %4, align 8
  %7 = load i32, i32* @IPC_EVENT_INPUT, align 4
  %8 = call i32 @ipc_has_event_listeners(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load i32, i32* @SWAY_DEBUG, align 4
  %13 = call i32 @sway_log(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = call i32* (...) @json_object_new_object()
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @json_object_new_string(i8* %16)
  %18 = call i32 @json_object_object_add(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.sway_input_device*, %struct.sway_input_device** %4, align 8
  %21 = call i32 @ipc_json_describe_input(%struct.sway_input_device* %20)
  %22 = call i32 @json_object_object_add(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @json_object_to_json_string(i32* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @IPC_EVENT_INPUT, align 4
  %27 = call i32 @ipc_send_event(i8* %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @json_object_put(i32* %28)
  br label %30

30:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @ipc_has_event_listeners(i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32* @json_object_new_object(...) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32) #1

declare dso_local i32 @json_object_new_string(i8*) #1

declare dso_local i32 @ipc_json_describe_input(%struct.sway_input_device*) #1

declare dso_local i8* @json_object_to_json_string(i32*) #1

declare dso_local i32 @ipc_send_event(i8*, i32) #1

declare dso_local i32 @json_object_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
