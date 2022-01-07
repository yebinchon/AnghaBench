; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_handle_connection.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-server.c_ipc_handle_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_server = type { i32 }
%struct.ipc_client = type { i32, i32, i8*, i64, i32*, i32, i64, i64, %struct.sway_server* }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Event on IPC listening socket\00", align 1
@WL_EVENT_READABLE = common dso_local global i64 0, align 8
@ipc_socket = common dso_local global i32 0, align 4
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to accept IPC client connection\00", align 1
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Unable to set CLOEXEC on IPC client socket\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Unable to set NONBLOCK on IPC client socket\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to allocate ipc client\00", align 1
@ipc_client_handle_readable = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Unable to allocate ipc client write buffer\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"New client: fd %d\00", align 1
@ipc_client_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_handle_connection(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sway_server*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipc_client*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.sway_server*
  store %struct.sway_server* %14, %struct.sway_server** %8, align 8
  %15 = load i32, i32* @SWAY_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @sway_log(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @WL_EVENT_READABLE, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @ipc_socket, align 4
  %23 = call i32 @accept(i32 %22, i32* null, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @SWAY_ERROR, align 4
  %28 = call i32 @sway_log_errno(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %124

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @F_GETFD, align 4
  %32 = call i32 (i32, i32, ...) @fcntl(i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @F_SETFD, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @FD_CLOEXEC, align 4
  %39 = or i32 %37, %38
  %40 = call i32 (i32, i32, ...) @fcntl(i32 %35, i32 %36, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %34, %29
  %43 = load i32, i32* @SWAY_ERROR, align 4
  %44 = call i32 @sway_log_errno(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @close(i32 %45)
  store i32 0, i32* %4, align 4
  br label %124

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @F_GETFL, align 4
  %50 = call i32 (i32, i32, ...) @fcntl(i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @F_SETFL, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @O_NONBLOCK, align 4
  %57 = or i32 %55, %56
  %58 = call i32 (i32, i32, ...) @fcntl(i32 %53, i32 %54, i32 %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %65

60:                                               ; preds = %52, %47
  %61 = load i32, i32* @SWAY_ERROR, align 4
  %62 = call i32 @sway_log_errno(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @close(i32 %63)
  store i32 0, i32* %4, align 4
  br label %124

65:                                               ; preds = %52
  %66 = call i8* @malloc(i32 64)
  %67 = bitcast i8* %66 to %struct.ipc_client*
  store %struct.ipc_client* %67, %struct.ipc_client** %11, align 8
  %68 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %69 = icmp ne %struct.ipc_client* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @SWAY_ERROR, align 4
  %72 = call i32 (i32, i8*, ...) @sway_log(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @close(i32 %73)
  store i32 0, i32* %4, align 4
  br label %124

75:                                               ; preds = %65
  %76 = load %struct.sway_server*, %struct.sway_server** %8, align 8
  %77 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %78 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %77, i32 0, i32 8
  store %struct.sway_server* %76, %struct.sway_server** %78, align 8
  %79 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %80 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %83 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %85 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.sway_server*, %struct.sway_server** %8, align 8
  %87 = getelementptr inbounds %struct.sway_server, %struct.sway_server* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i64, i64* @WL_EVENT_READABLE, align 8
  %91 = load i32, i32* @ipc_client_handle_readable, align 4
  %92 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %93 = call i32 @wl_event_loop_add_fd(i32 %88, i32 %89, i64 %90, i32 %91, %struct.ipc_client* %92)
  %94 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %95 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %97 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %96, i32 0, i32 4
  store i32* null, i32** %97, align 8
  %98 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %99 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %98, i32 0, i32 1
  store i32 128, i32* %99, align 4
  %100 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %101 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %103 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @malloc(i32 %104)
  %106 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %107 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %109 = getelementptr inbounds %struct.ipc_client, %struct.ipc_client* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %75
  %113 = load i32, i32* @SWAY_ERROR, align 4
  %114 = call i32 (i32, i8*, ...) @sway_log(i32 %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @close(i32 %115)
  store i32 0, i32* %4, align 4
  br label %124

117:                                              ; preds = %75
  %118 = load i32, i32* @SWAY_DEBUG, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (i32, i8*, ...) @sway_log(i32 %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @ipc_client_list, align 4
  %122 = load %struct.ipc_client*, %struct.ipc_client** %11, align 8
  %123 = call i32 @list_add(i32 %121, %struct.ipc_client* %122)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %117, %112, %70, %60, %42, %26
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @sway_log_errno(i32, i8*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @wl_event_loop_add_fd(i32, i32, i64, i32, %struct.ipc_client*) #1

declare dso_local i32 @list_add(i32, %struct.ipc_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
