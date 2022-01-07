; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-core.c_manager_reset_config.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-core.c_manager_reset_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8*, i8*, i32, i8*, i32, i8*, i32 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@HANDLE_POWEROFF = common dso_local global i32 0, align 4
@HANDLE_SUSPEND = common dso_local global i8* null, align 8
@HANDLE_HIBERNATE = common dso_local global i32 0, align 4
@_HANDLE_ACTION_INVALID = common dso_local global i32 0, align 4
@HANDLE_IGNORE = common dso_local global i8* null, align 8
@USEC_PER_MINUTE = common dso_local global i32 0, align 4
@DEFAULT_USER_TASKS_MAX_PERCENTAGE = common dso_local global i32 0, align 4
@KILL_USER_PROCESSES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manager_reset_config(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_4__* %3)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 6, i32* %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 6, i32* %8, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* @USEC_PER_SEC, align 4
  %12 = mul nsw i32 5, %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @USEC_PER_SEC, align 4
  %16 = mul nsw i32 10, %15
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @HANDLE_POWEROFF, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 24
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** @HANDLE_SUSPEND, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 23
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @HANDLE_HIBERNATE, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 22
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @HANDLE_SUSPEND, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 21
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @_HANDLE_ACTION_INVALID, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 20
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @HANDLE_IGNORE, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 19
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store i32 0, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 7
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 8
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @USEC_PER_SEC, align 4
  %46 = mul nsw i32 30, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @USEC_PER_MINUTE, align 4
  %50 = mul nsw i32 30, %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @HANDLE_IGNORE, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 18
  store i8* %53, i8** %55, align 8
  %56 = call i32 @physical_memory_scale(i32 10, i32 100)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 17
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @DEFAULT_USER_TASKS_MAX_PERCENTAGE, align 4
  %60 = call i32 @system_tasks_max_scale(i32 %59, i32 100)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 16
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 11
  store i32 8192, i32* %64, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 12
  store i32 8192, i32* %66, align 8
  %67 = load i32, i32* @KILL_USER_PROCESSES, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 15
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 14
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strv_free(i8* %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 14
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 13
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @strv_free(i8* %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 13
  store i8* %79, i8** %81, align 8
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @physical_memory_scale(i32, i32) #1

declare dso_local i32 @system_tasks_max_scale(i32, i32) #1

declare dso_local i8* @strv_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
