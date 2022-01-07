; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_set_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_scope.c_scope_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }

@SCOPE_STOP_SIGTERM = common dso_local global i32 0, align 4
@SCOPE_STOP_SIGKILL = common dso_local global i32 0, align 4
@SCOPE_DEAD = common dso_local global i32 0, align 4
@SCOPE_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s changed %s -> %s\00", align 1
@state_translation_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @scope_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scope_set_state(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_10__* %6)
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call %struct.TYPE_11__* @UNIT(%struct.TYPE_10__* %14)
  %16 = call i32 @bus_unit_send_pending_change_signal(%struct.TYPE_11__* %15, i32 0)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @SCOPE_STOP_SIGTERM, align 4
  %26 = load i32, i32* @SCOPE_STOP_SIGKILL, align 4
  %27 = call i64 @IN_SET(i64 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %17
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sd_event_source_unref(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %29, %17
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* @SCOPE_DEAD, align 4
  %39 = load i32, i32* @SCOPE_FAILED, align 4
  %40 = call i64 @IN_SET(i64 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = call %struct.TYPE_11__* @UNIT(%struct.TYPE_10__* %43)
  %45 = call i32 @unit_unwatch_all_pids(%struct.TYPE_11__* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = call %struct.TYPE_11__* @UNIT(%struct.TYPE_10__* %46)
  %48 = call i32 @unit_dequeue_rewatch_pids(%struct.TYPE_11__* %47)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = call %struct.TYPE_11__* @UNIT(%struct.TYPE_10__* %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @scope_state_to_string(i64 %58)
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @scope_state_to_string(i64 %60)
  %62 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %53, %49
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = call %struct.TYPE_11__* @UNIT(%struct.TYPE_10__* %64)
  %66 = load i32*, i32** @state_translation_table, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @state_translation_table, align 8
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @unit_notify(%struct.TYPE_11__* %65, i32 %69, i32 %73, i32 0)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @bus_unit_send_pending_change_signal(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @UNIT(%struct.TYPE_10__*) #1

declare dso_local i64 @IN_SET(i64, i32, i32) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @unit_unwatch_all_pids(%struct.TYPE_11__*) #1

declare dso_local i32 @unit_dequeue_rewatch_pids(%struct.TYPE_11__*) #1

declare dso_local i32 @log_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @scope_state_to_string(i64) #1

declare dso_local i32 @unit_notify(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
