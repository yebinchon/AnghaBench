; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_export_state_files.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_export_state_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unit_export_state_files(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_10__* %4)
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MANAGER_IS_SYSTEM(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %45

18:                                               ; preds = %11
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @MANAGER_IS_TEST_RUN(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %45

25:                                               ; preds = %18
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = call i32 @unit_export_invocation_id(%struct.TYPE_10__* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = call i32* @unit_get_exec_context(%struct.TYPE_10__* %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @unit_export_log_level_max(%struct.TYPE_10__* %33, i32* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @unit_export_log_extra_fields(%struct.TYPE_10__* %36, i32* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @unit_export_log_ratelimit_interval(%struct.TYPE_10__* %39, i32* %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @unit_export_log_ratelimit_burst(%struct.TYPE_10__* %42, i32* %43)
  br label %45

45:                                               ; preds = %10, %17, %24, %32, %25
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @MANAGER_IS_SYSTEM(i32) #1

declare dso_local i64 @MANAGER_IS_TEST_RUN(i32) #1

declare dso_local i32 @unit_export_invocation_id(%struct.TYPE_10__*) #1

declare dso_local i32* @unit_get_exec_context(%struct.TYPE_10__*) #1

declare dso_local i32 @unit_export_log_level_max(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @unit_export_log_extra_fields(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @unit_export_log_ratelimit_interval(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @unit_export_log_ratelimit_burst(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
