; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_set_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_timer.c_timer_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i8*, i8*, i8* }

@TIMER_WAITING = common dso_local global i64 0, align 8
@USEC_INFINITY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Changed %s -> %s\00", align 1
@state_translation_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @timer_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_set_state(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_5__* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = call i32 @UNIT(%struct.TYPE_5__* %14)
  %16 = call i32 @bus_unit_send_pending_change_signal(i32 %15, i32 0)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @TIMER_WAITING, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %17
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @sd_event_source_unref(i8* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @sd_event_source_unref(i8* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @USEC_INFINITY, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @USEC_INFINITY, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %27, %17
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = call i32 @UNIT(%struct.TYPE_5__* %51)
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @timer_state_to_string(i64 %53)
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @timer_state_to_string(i64 %55)
  %57 = call i32 @log_unit_debug(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %50, %46
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = call i32 @UNIT(%struct.TYPE_5__* %59)
  %61 = load i32*, i32** @state_translation_table, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @state_translation_table, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @unit_notify(i32 %60, i32 %64, i32 %68, i32 0)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @bus_unit_send_pending_change_signal(i32, i32) #1

declare dso_local i32 @UNIT(%struct.TYPE_5__*) #1

declare dso_local i8* @sd_event_source_unref(i8*) #1

declare dso_local i32 @log_unit_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @timer_state_to_string(i64) #1

declare dso_local i32 @unit_notify(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
