; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_event_shutdown.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_event_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_EVENT_SHUTDOWN = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Sending shutdown::%s event\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"change\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_event_shutdown(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @IPC_EVENT_SHUTDOWN, align 4
  %6 = call i32 @ipc_has_event_listeners(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @SWAY_DEBUG, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @sway_log(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i32* (...) @json_object_new_object()
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @json_object_new_string(i8* %15)
  %17 = call i32 @json_object_object_add(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @json_object_to_json_string(i32* %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @IPC_EVENT_SHUTDOWN, align 4
  %22 = call i32 @ipc_send_event(i8* %20, i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @json_object_put(i32* %23)
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @ipc_has_event_listeners(i32) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local i32* @json_object_new_object(...) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32) #1

declare dso_local i32 @json_object_new_string(i8*) #1

declare dso_local i8* @json_object_to_json_string(i32*) #1

declare dso_local i32 @ipc_send_event(i8*, i32) #1

declare dso_local i32 @json_object_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
