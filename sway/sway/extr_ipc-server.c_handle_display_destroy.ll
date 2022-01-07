; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_handle_display_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_handle_display_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.wl_listener = type { i32 }

@ipc_event_source = common dso_local global i64 0, align 8
@ipc_socket = common dso_local global i32 0, align 4
@ipc_sockaddr = common dso_local global %struct.TYPE_7__* null, align 8
@ipc_client_list = common dso_local global %struct.TYPE_6__* null, align 8
@ipc_display_destroy = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_display_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_display_destroy(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @ipc_event_source, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i64, i64* @ipc_event_source, align 8
  %9 = call i32 @wl_event_source_remove(i64 %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* @ipc_socket, align 4
  %12 = call i32 @close(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ipc_sockaddr, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @unlink(i32 %15)
  br label %17

17:                                               ; preds = %22, %10
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_client_list, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_client_list, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_client_list, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ipc_client_disconnect(i32 %32)
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_client_list, align 8
  %36 = call i32 @list_free(%struct.TYPE_6__* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ipc_sockaddr, align 8
  %38 = call i32 @free(%struct.TYPE_7__* %37)
  %39 = call i32 @wl_list_remove(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipc_display_destroy, i32 0, i32 0))
  ret void
}

declare dso_local i32 @wl_event_source_remove(i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @ipc_client_disconnect(i32) #1

declare dso_local i32 @list_free(%struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
