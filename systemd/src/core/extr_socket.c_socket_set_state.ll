; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_set_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32*, i32 }

@SOCKET_START_PRE = common dso_local global i32 0, align 4
@SOCKET_START_CHOWN = common dso_local global i32 0, align 4
@SOCKET_START_POST = common dso_local global i32 0, align 4
@SOCKET_STOP_PRE = common dso_local global i32 0, align 4
@SOCKET_STOP_PRE_SIGTERM = common dso_local global i32 0, align 4
@SOCKET_STOP_PRE_SIGKILL = common dso_local global i32 0, align 4
@SOCKET_STOP_POST = common dso_local global i32 0, align 4
@SOCKET_FINAL_SIGTERM = common dso_local global i32 0, align 4
@SOCKET_FINAL_SIGKILL = common dso_local global i32 0, align 4
@SOCKET_CLEANING = common dso_local global i32 0, align 4
@_SOCKET_EXEC_COMMAND_INVALID = common dso_local global i32 0, align 4
@SOCKET_LISTENING = common dso_local global i64 0, align 8
@SOCKET_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Changed %s -> %s\00", align 1
@state_translation_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @socket_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_set_state(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @UNIT(%struct.TYPE_8__* %14)
  %16 = call i32 @bus_unit_send_pending_change_signal(i32 %15, i32 0)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @SOCKET_START_PRE, align 4
  %26 = load i32, i32* @SOCKET_START_CHOWN, align 4
  %27 = load i32, i32* @SOCKET_START_POST, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* @SOCKET_STOP_PRE, align 4
  %30 = load i32, i32* @SOCKET_STOP_PRE_SIGTERM, align 4
  %31 = load i32, i32* @SOCKET_STOP_PRE_SIGKILL, align 4
  %32 = load i32, i32* @SOCKET_STOP_POST, align 4
  %33 = load i32, i32* @SOCKET_FINAL_SIGTERM, align 4
  %34 = load i32, i32* @SOCKET_FINAL_SIGKILL, align 4
  %35 = load i32, i32* @SOCKET_CLEANING, align 4
  %36 = call i32 (i64, i32, i32, i64, i32, i32, i32, i32, i32, ...) @IN_SET(i64 %24, i32 %25, i32 %26, i64 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %17
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sd_event_source_unref(i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = call i32 @socket_unwatch_control_pid(%struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @_SOCKET_EXEC_COMMAND_INVALID, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %38, %17
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @SOCKET_LISTENING, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = call i32 @socket_unwatch_fds(%struct.TYPE_8__* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i64, i64* %4, align 8
  %61 = load i32, i32* @SOCKET_START_CHOWN, align 4
  %62 = load i32, i32* @SOCKET_START_POST, align 4
  %63 = load i64, i64* @SOCKET_LISTENING, align 8
  %64 = load i32, i32* @SOCKET_RUNNING, align 4
  %65 = load i32, i32* @SOCKET_STOP_PRE, align 4
  %66 = load i32, i32* @SOCKET_STOP_PRE_SIGTERM, align 4
  %67 = load i32, i32* @SOCKET_STOP_PRE_SIGKILL, align 4
  %68 = load i32, i32* @SOCKET_CLEANING, align 4
  %69 = call i32 (i64, i32, i32, i64, i32, i32, i32, i32, i32, ...) @IN_SET(i64 %60, i32 %61, i32 %62, i64 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = call i32 @socket_close_fds(%struct.TYPE_8__* %72)
  br label %74

74:                                               ; preds = %71, %59
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = call i32 @UNIT(%struct.TYPE_8__* %79)
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @socket_state_to_string(i64 %81)
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @socket_state_to_string(i64 %83)
  %85 = call i32 @log_unit_debug(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %78, %74
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = call i32 @UNIT(%struct.TYPE_8__* %87)
  %89 = load i32*, i32** @state_translation_table, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** @state_translation_table, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @unit_notify(i32 %88, i32 %92, i32 %96, i32 0)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @bus_unit_send_pending_change_signal(i32, i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_8__*) #1

declare dso_local i32 @IN_SET(i64, i32, i32, i64, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @socket_unwatch_control_pid(%struct.TYPE_8__*) #1

declare dso_local i32 @socket_unwatch_fds(%struct.TYPE_8__*) #1

declare dso_local i32 @socket_close_fds(%struct.TYPE_8__*) #1

declare dso_local i32 @log_unit_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @socket_state_to_string(i64) #1

declare dso_local i32 @unit_notify(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
