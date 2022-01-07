; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_init.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i32 }
%struct.sway_server = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@ipc_socket = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to create IPC socket\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to set CLOEXEC on IPC socket\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to set NONBLOCK on IPC socket\00", align 1
@ipc_sockaddr = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"SWAYSOCK\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to bind IPC socket\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to listen on IPC socket\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"I3SOCK\00", align 1
@ipc_client_list = common dso_local global i32 0, align 4
@handle_display_destroy = common dso_local global i32 0, align 4
@ipc_display_destroy = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@WL_EVENT_READABLE = common dso_local global i32 0, align 4
@ipc_handle_connection = common dso_local global i32 0, align 4
@ipc_event_source = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_init(%struct.sway_server* %0) #0 {
  %2 = alloca %struct.sway_server*, align 8
  store %struct.sway_server* %0, %struct.sway_server** %2, align 8
  %3 = load i32, i32* @AF_UNIX, align 4
  %4 = load i32, i32* @SOCK_STREAM, align 4
  %5 = call i32 @socket(i32 %3, i32 %4, i32 0)
  store i32 %5, i32* @ipc_socket, align 4
  %6 = load i32, i32* @ipc_socket, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @sway_abort(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* @ipc_socket, align 4
  %12 = load i32, i32* @F_SETFD, align 4
  %13 = load i32, i32* @FD_CLOEXEC, align 4
  %14 = call i32 @fcntl(i32 %11, i32 %12, i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @sway_abort(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i32, i32* @ipc_socket, align 4
  %20 = load i32, i32* @F_SETFL, align 4
  %21 = load i32, i32* @O_NONBLOCK, align 4
  %22 = call i32 @fcntl(i32 %19, i32 %20, i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @sway_abort(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = call %struct.TYPE_6__* (...) @ipc_user_sockaddr()
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** @ipc_sockaddr, align 8
  %28 = call i32* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = call i32* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @F_OK, align 4
  %33 = call i32 @access(i32* %31, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_sockaddr, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = call i32* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @strncpy(i64* %38, i32* %39, i32 7)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_sockaddr, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 7
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %35, %30, %26
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_sockaddr, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = call i32 @unlink(i64* %48)
  %50 = load i32, i32* @ipc_socket, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_sockaddr, align 8
  %52 = bitcast %struct.TYPE_6__* %51 to %struct.sockaddr*
  %53 = call i32 @bind(i32 %50, %struct.sockaddr* %52, i32 8)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = call i32 @sway_abort(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* @ipc_socket, align 4
  %59 = call i32 @listen(i32 %58, i32 3)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @sway_abort(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_sockaddr, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = call i32 @setenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64* %66, i32 1)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ipc_sockaddr, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = call i32 @setenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64* %70, i32 1)
  %72 = call i32 (...) @create_list()
  store i32 %72, i32* @ipc_client_list, align 4
  %73 = load i32, i32* @handle_display_destroy, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ipc_display_destroy, i32 0, i32 0), align 4
  %74 = load %struct.sway_server*, %struct.sway_server** %2, align 8
  %75 = getelementptr inbounds %struct.sway_server, %struct.sway_server* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @wl_display_add_destroy_listener(i32 %76, %struct.TYPE_5__* @ipc_display_destroy)
  %78 = load %struct.sway_server*, %struct.sway_server** %2, align 8
  %79 = getelementptr inbounds %struct.sway_server, %struct.sway_server* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ipc_socket, align 4
  %82 = load i32, i32* @WL_EVENT_READABLE, align 4
  %83 = load i32, i32* @ipc_handle_connection, align 4
  %84 = load %struct.sway_server*, %struct.sway_server** %2, align 8
  %85 = call i32 @wl_event_loop_add_fd(i32 %80, i32 %81, i32 %82, i32 %83, %struct.sway_server* %84)
  store i32 %85, i32* @ipc_event_source, align 4
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @sway_abort(i8*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @ipc_user_sockaddr(...) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @access(i32*, i32) #1

declare dso_local i32 @strncpy(i64*, i32*, i32) #1

declare dso_local i32 @unlink(i64*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @setenv(i8*, i64*, i32) #1

declare dso_local i32 @create_list(...) #1

declare dso_local i32 @wl_display_add_destroy_listener(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @wl_event_loop_add_fd(i32, i32, i32, i32, %struct.sway_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
