; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_handle_ctrl_alt_del.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_handle_ctrl_alt_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@EMERGENCY_ACTION_NONE = common dso_local global i64 0, align 8
@SPECIAL_CTRL_ALT_DEL_TARGET = common dso_local global i32 0, align 4
@JOB_REPLACE_IRREVERSIBLY = common dso_local global i32 0, align 4
@EMERGENCY_ACTION_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Ctrl-Alt-Del was pressed more than 7 times within 2s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @manager_handle_ctrl_alt_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manager_handle_ctrl_alt_del(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %5 = call i64 @ratelimit_below(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EMERGENCY_ACTION_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %7, %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = load i32, i32* @SPECIAL_CTRL_ALT_DEL_TARGET, align 4
  %16 = load i32, i32* @JOB_REPLACE_IRREVERSIBLY, align 4
  %17 = call i32 @manager_start_target(%struct.TYPE_5__* %14, i32 %15, i32 %16)
  br label %25

18:                                               ; preds = %7
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @EMERGENCY_ACTION_WARN, align 4
  %24 = call i32 @emergency_action(%struct.TYPE_5__* %19, i64 %22, i32 %23, i32* null, i32 -1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18, %13
  ret void
}

declare dso_local i64 @ratelimit_below(i32*) #1

declare dso_local i32 @manager_start_target(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @emergency_action(%struct.TYPE_5__*, i64, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
