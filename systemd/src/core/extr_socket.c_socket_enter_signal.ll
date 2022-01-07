; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_enter_signal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_enter_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@SOCKET_SUCCESS = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@SOCKET_STOP_PRE_SIGTERM = common dso_local global i32 0, align 4
@SOCKET_STOP_PRE_SIGKILL = common dso_local global i32 0, align 4
@SOCKET_FINAL_SIGTERM = common dso_local global i32 0, align 4
@SOCKET_FINAL_SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to kill processes: %m\00", align 1
@SOCKET_FAILURE_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i64)* @socket_enter_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_enter_signal(%struct.TYPE_10__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_10__* %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOCKET_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @UNIT(%struct.TYPE_10__* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @state_to_kill_operation(%struct.TYPE_10__* %24, i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @unit_kill_context(i32 %21, i32* %23, i32 %26, i32 -1, i32 %29, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %85

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %40 = call i32 @now(i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @usec_add(i32 %40, i32 %43)
  %45 = call i32 @socket_arm_timer(%struct.TYPE_10__* %38, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %85

49:                                               ; preds = %37
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @socket_set_state(%struct.TYPE_10__* %50, i32 %51)
  br label %84

53:                                               ; preds = %34
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @SOCKET_STOP_PRE_SIGTERM, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load i32, i32* @SOCKET_STOP_PRE_SIGKILL, align 4
  %60 = load i64, i64* @SOCKET_SUCCESS, align 8
  call void @socket_enter_signal(%struct.TYPE_10__* %58, i32 %59, i64 %60)
  br label %83

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @SOCKET_STOP_PRE_SIGKILL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = load i64, i64* @SOCKET_SUCCESS, align 8
  %68 = call i32 @socket_enter_stop_post(%struct.TYPE_10__* %66, i64 %67)
  br label %82

69:                                               ; preds = %61
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SOCKET_FINAL_SIGTERM, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = load i32, i32* @SOCKET_FINAL_SIGKILL, align 4
  %76 = load i64, i64* @SOCKET_SUCCESS, align 8
  call void @socket_enter_signal(%struct.TYPE_10__* %74, i32 %75, i64 %76)
  br label %81

77:                                               ; preds = %69
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = load i64, i64* @SOCKET_SUCCESS, align 8
  %80 = call i32 @socket_enter_dead(%struct.TYPE_10__* %78, i64 %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %57
  br label %84

84:                                               ; preds = %83, %49
  br label %103

85:                                               ; preds = %48, %33
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = call i32 @UNIT(%struct.TYPE_10__* %86)
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @log_unit_warning_errno(i32 %87, i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @SOCKET_STOP_PRE_SIGTERM, align 4
  %92 = load i32, i32* @SOCKET_STOP_PRE_SIGKILL, align 4
  %93 = call i64 @IN_SET(i32 %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = load i64, i64* @SOCKET_FAILURE_RESOURCES, align 8
  %98 = call i32 @socket_enter_stop_post(%struct.TYPE_10__* %96, i64 %97)
  br label %103

99:                                               ; preds = %85
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = load i64, i64* @SOCKET_FAILURE_RESOURCES, align 8
  %102 = call i32 @socket_enter_dead(%struct.TYPE_10__* %100, i64 %101)
  br label %103

103:                                              ; preds = %84, %99, %95
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @unit_kill_context(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_10__*) #1

declare dso_local i32 @state_to_kill_operation(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @socket_arm_timer(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @usec_add(i32, i32) #1

declare dso_local i32 @now(i32) #1

declare dso_local i32 @socket_set_state(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @socket_enter_stop_post(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @socket_enter_dead(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @log_unit_warning_errno(i32, i32, i8*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
