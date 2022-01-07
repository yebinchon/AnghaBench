; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_stop.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@SERVICE_STOP = common dso_local global i32 0, align 4
@SERVICE_STOP_SIGTERM = common dso_local global i32 0, align 4
@SERVICE_STOP_SIGKILL = common dso_local global i32 0, align 4
@SERVICE_STOP_POST = common dso_local global i32 0, align 4
@SERVICE_FINAL_SIGTERM = common dso_local global i32 0, align 4
@SERVICE_FINAL_SIGKILL = common dso_local global i32 0, align 4
@SERVICE_AUTO_RESTART = common dso_local global i64 0, align 8
@SERVICE_DEAD = common dso_local global i32 0, align 4
@SERVICE_CONDITION = common dso_local global i32 0, align 4
@SERVICE_START_PRE = common dso_local global i32 0, align 4
@SERVICE_START = common dso_local global i32 0, align 4
@SERVICE_START_POST = common dso_local global i32 0, align 4
@SERVICE_RELOAD = common dso_local global i32 0, align 4
@SERVICE_STOP_WATCHDOG = common dso_local global i32 0, align 4
@SERVICE_SUCCESS = common dso_local global i32 0, align 4
@SERVICE_CLEANING = common dso_local global i64 0, align 8
@SERVICE_RUNNING = common dso_local global i32 0, align 4
@SERVICE_EXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @service_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_stop(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call %struct.TYPE_8__* @SERVICE(i32* %5)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @SERVICE_STOP, align 4
  %15 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %16 = load i32, i32* @SERVICE_STOP_SIGKILL, align 4
  %17 = load i32, i32* @SERVICE_STOP_POST, align 4
  %18 = load i32, i32* @SERVICE_FINAL_SIGTERM, align 4
  %19 = load i32, i32* @SERVICE_FINAL_SIGKILL, align 4
  %20 = call %struct.TYPE_8__* (i64, i32, i32, ...) @IN_SET(i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SERVICE_AUTO_RESTART, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i32, i32* @SERVICE_DEAD, align 4
  %32 = call i32 @service_set_state(%struct.TYPE_8__* %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %72

33:                                               ; preds = %23
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @SERVICE_CONDITION, align 4
  %38 = load i32, i32* @SERVICE_START_PRE, align 4
  %39 = load i32, i32* @SERVICE_START, align 4
  %40 = load i32, i32* @SERVICE_START_POST, align 4
  %41 = load i32, i32* @SERVICE_RELOAD, align 4
  %42 = load i32, i32* @SERVICE_STOP_WATCHDOG, align 4
  %43 = call %struct.TYPE_8__* (i64, i32, i32, ...) @IN_SET(i64 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load i32, i32* @SERVICE_STOP_SIGTERM, align 4
  %48 = load i32, i32* @SERVICE_SUCCESS, align 4
  %49 = call i32 @service_enter_signal(%struct.TYPE_8__* %46, i32 %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %72

50:                                               ; preds = %33
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SERVICE_CLEANING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = load i32, i32* @SERVICE_FINAL_SIGKILL, align 4
  %59 = load i32, i32* @SERVICE_SUCCESS, align 4
  %60 = call i32 @service_enter_signal(%struct.TYPE_8__* %57, i32 %58, i32 %59)
  store i32 0, i32* %2, align 4
  br label %72

61:                                               ; preds = %50
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @SERVICE_RUNNING, align 4
  %66 = load i32, i32* @SERVICE_EXITED, align 4
  %67 = call %struct.TYPE_8__* (i64, i32, i32, ...) @IN_SET(i64 %64, i32 %65, i32 %66)
  %68 = call i32 @assert(%struct.TYPE_8__* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = load i32, i32* @SERVICE_SUCCESS, align 4
  %71 = call i32 @service_enter_stop(%struct.TYPE_8__* %69, i32 %70)
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %61, %56, %45, %29, %22
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_8__* @SERVICE(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @IN_SET(i64, i32, i32, ...) #1

declare dso_local i32 @service_set_state(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @service_enter_signal(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @service_enter_stop(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
