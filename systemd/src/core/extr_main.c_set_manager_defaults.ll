; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_main.c_set_manager_defaults.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_main.c_set_manager_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@arg_default_timer_accuracy_usec = common dso_local global i32 0, align 4
@arg_default_std_output = common dso_local global i32 0, align 4
@arg_default_std_error = common dso_local global i32 0, align 4
@arg_default_timeout_start_usec = common dso_local global i32 0, align 4
@arg_default_timeout_stop_usec = common dso_local global i32 0, align 4
@arg_default_timeout_abort_usec = common dso_local global i32 0, align 4
@arg_default_timeout_abort_set = common dso_local global i32 0, align 4
@arg_default_restart_usec = common dso_local global i32 0, align 4
@arg_default_start_limit_interval = common dso_local global i32 0, align 4
@arg_default_start_limit_burst = common dso_local global i32 0, align 4
@arg_default_cpu_accounting = common dso_local global i64 0, align 8
@arg_default_io_accounting = common dso_local global i32 0, align 4
@arg_default_ip_accounting = common dso_local global i32 0, align 4
@arg_default_blockio_accounting = common dso_local global i32 0, align 4
@arg_default_memory_accounting = common dso_local global i32 0, align 4
@arg_default_tasks_accounting = common dso_local global i32 0, align 4
@arg_default_tasks_max = common dso_local global i32 0, align 4
@arg_default_oom_policy = common dso_local global i32 0, align 4
@arg_default_rlimit = common dso_local global i32 0, align 4
@arg_default_environment = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @set_manager_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_manager_defaults(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_7__* %3)
  %5 = load i32, i32* @arg_default_timer_accuracy_usec, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 17
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @arg_default_std_output, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 16
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @arg_default_std_error, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 15
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @arg_default_timeout_start_usec, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 14
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @arg_default_timeout_stop_usec, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @arg_default_timeout_abort_usec, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 12
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @arg_default_timeout_abort_set, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @arg_default_restart_usec, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @arg_default_start_limit_interval, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @arg_default_start_limit_burst, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* @arg_default_cpu_accounting, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i64, i64* @arg_default_cpu_accounting, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 7
  store i64 %38, i64* %40, align 8
  br label %45

41:                                               ; preds = %1
  %42 = call i64 (...) @cpu_accounting_is_cheap()
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 7
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @arg_default_io_accounting, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @arg_default_ip_accounting, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @arg_default_blockio_accounting, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @arg_default_memory_accounting, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @arg_default_tasks_accounting, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @arg_default_tasks_max, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @arg_default_oom_policy, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = load i32, i32* @arg_default_rlimit, align 4
  %69 = call i32 @manager_set_default_rlimits(%struct.TYPE_7__* %67, i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = call i32 @manager_default_environment(%struct.TYPE_7__* %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = load i32, i32* @arg_default_environment, align 4
  %74 = call i32 @manager_transient_environment_add(%struct.TYPE_7__* %72, i32 %73)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i64 @cpu_accounting_is_cheap(...) #1

declare dso_local i32 @manager_set_default_rlimits(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @manager_default_environment(%struct.TYPE_7__*) #1

declare dso_local i32 @manager_transient_environment_add(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
