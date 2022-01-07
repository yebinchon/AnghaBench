; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_enter_start_pre.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_enter_start_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i64* }

@SOCKET_EXEC_START_PRE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to run 'start-pre' task: %m\00", align 1
@SOCKET_START_PRE = common dso_local global i32 0, align 4
@SOCKET_FAILURE_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @socket_enter_start_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_enter_start_pre(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_10__* %4)
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call i32 @socket_unwatch_control_pid(%struct.TYPE_10__* %6)
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = call i32 @UNIT(%struct.TYPE_10__* %8)
  %10 = call i32 @unit_warn_leftover_processes(i32 %9)
  %11 = load i64, i64* @SOCKET_EXEC_START_PRE, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @SOCKET_EXEC_START_PRE, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = call i32 @socket_spawn(%struct.TYPE_10__* %27, i64 %30, i32* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = call i32 @UNIT(%struct.TYPE_10__* %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @log_unit_warning_errno(i32 %38, i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %49

41:                                               ; preds = %26
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = load i32, i32* @SOCKET_START_PRE, align 4
  %44 = call i32 @socket_set_state(%struct.TYPE_10__* %42, i32 %43)
  br label %48

45:                                               ; preds = %1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = call i32 @socket_enter_start_chown(%struct.TYPE_10__* %46)
  br label %48

48:                                               ; preds = %45, %41
  br label %53

49:                                               ; preds = %36
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = load i32, i32* @SOCKET_FAILURE_RESOURCES, align 4
  %52 = call i32 @socket_enter_dead(%struct.TYPE_10__* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @socket_unwatch_control_pid(%struct.TYPE_10__*) #1

declare dso_local i32 @unit_warn_leftover_processes(i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_10__*) #1

declare dso_local i32 @socket_spawn(%struct.TYPE_10__*, i64, i32*) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

declare dso_local i32 @socket_set_state(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @socket_enter_start_chown(%struct.TYPE_10__*) #1

declare dso_local i32 @socket_enter_dead(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
