; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_target.c_target_set_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_target.c_target_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s changed %s -> %s\00", align 1
@state_translation_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @target_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_set_state(%struct.TYPE_8__* %0, i64 %1) #0 {
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
  %15 = call %struct.TYPE_9__* @UNIT(%struct.TYPE_8__* %14)
  %16 = call i32 @bus_unit_send_pending_change_signal(%struct.TYPE_9__* %15, i32 0)
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
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = call %struct.TYPE_9__* @UNIT(%struct.TYPE_8__* %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @target_state_to_string(i64 %32)
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @target_state_to_string(i64 %34)
  %36 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %27, %17
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = call %struct.TYPE_9__* @UNIT(%struct.TYPE_8__* %38)
  %40 = load i32*, i32** @state_translation_table, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** @state_translation_table, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @unit_notify(%struct.TYPE_9__* %39, i32 %43, i32 %47, i32 0)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @bus_unit_send_pending_change_signal(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @UNIT(%struct.TYPE_8__*) #1

declare dso_local i32 @log_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @target_state_to_string(i64) #1

declare dso_local i32 @unit_notify(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
