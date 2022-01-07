; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_run_next.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_run_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_11__*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [28 x i8] c"Failed to run next task: %m\00", align 1
@SOCKET_START_POST = common dso_local global i64 0, align 8
@SOCKET_FAILURE_RESOURCES = common dso_local global i32 0, align 4
@SOCKET_STOP_POST = common dso_local global i64 0, align 8
@SOCKET_FINAL_SIGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @socket_run_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_run_next(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_11__* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = call i32 @assert(%struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = call i32 @assert(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = call i32 @socket_unwatch_control_pid(%struct.TYPE_11__* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = call i32 @socket_spawn(%struct.TYPE_11__* %25, %struct.TYPE_11__* %28, i32* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %36

35:                                               ; preds = %1
  br label %66

36:                                               ; preds = %34
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = call i32 @UNIT(%struct.TYPE_11__* %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @log_unit_warning_errno(i32 %38, i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SOCKET_START_POST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = load i32, i32* @SOCKET_FAILURE_RESOURCES, align 4
  %49 = call i32 @socket_enter_stop_pre(%struct.TYPE_11__* %47, i32 %48)
  br label %66

50:                                               ; preds = %36
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SOCKET_STOP_POST, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %58 = load i32, i32* @SOCKET_FAILURE_RESOURCES, align 4
  %59 = call i32 @socket_enter_dead(%struct.TYPE_11__* %57, i32 %58)
  br label %65

60:                                               ; preds = %50
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = load i32, i32* @SOCKET_FINAL_SIGTERM, align 4
  %63 = load i32, i32* @SOCKET_FAILURE_RESOURCES, align 4
  %64 = call i32 @socket_enter_signal(%struct.TYPE_11__* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  br label %66

66:                                               ; preds = %35, %65, %46
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_unwatch_control_pid(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_spawn(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

declare dso_local i32 @UNIT(%struct.TYPE_11__*) #1

declare dso_local i32 @socket_enter_stop_pre(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @socket_enter_dead(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @socket_enter_signal(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
