; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_enter_start_chown.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_enter_start_chown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to listen on sockets: %m\00", align 1
@SOCKET_EXEC_START_CHOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to fork 'start-chown' task: %m\00", align 1
@SOCKET_START_CHOWN = common dso_local global i32 0, align 4
@SOCKET_FAILURE_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @socket_enter_start_chown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_enter_start_chown(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_11__* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = call i32 @socket_open_fds(%struct.TYPE_11__* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = call i32 @UNIT(%struct.TYPE_11__* %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @log_unit_warning_errno(i32 %12, i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @isempty(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @isempty(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = call i32 @socket_unwatch_control_pid(%struct.TYPE_11__* %28)
  %30 = load i32, i32* @SOCKET_EXEC_START_CHOWN, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i32 @socket_chown(%struct.TYPE_11__* %35, i32* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = call i32 @UNIT(%struct.TYPE_11__* %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @log_unit_warning_errno(i32 %43, i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %54

46:                                               ; preds = %27
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = load i32, i32* @SOCKET_START_CHOWN, align 4
  %49 = call i32 @socket_set_state(%struct.TYPE_11__* %47, i32 %48)
  br label %53

50:                                               ; preds = %21
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = call i32 @socket_enter_start_post(%struct.TYPE_11__* %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %58

54:                                               ; preds = %41, %10
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = load i32, i32* @SOCKET_FAILURE_RESOURCES, align 4
  %57 = call i32 @socket_enter_stop_pre(%struct.TYPE_11__* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %53
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_open_fds(%struct.TYPE_11__*) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

declare dso_local i32 @UNIT(%struct.TYPE_11__*) #1

declare dso_local i32 @isempty(i32) #1

declare dso_local i32 @socket_unwatch_control_pid(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_chown(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @socket_set_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @socket_enter_start_post(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_enter_stop_pre(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
