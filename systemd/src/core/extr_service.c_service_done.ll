; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_done.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_service.c_service_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32*, i32*, i32, i32, i8*, i8* }

@_SERVICE_EXEC_COMMAND_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @service_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_done(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.TYPE_9__* @SERVICE(i32* %4)
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_9__* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 17
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @mfree(i8* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 17
  store i8* %11, i8** %13, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 16
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @mfree(i8* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 16
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 15
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @exec_runtime_unref(i32 %22, i32 0)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @_SERVICE_EXEC_COMMAND_MAX, align 4
  %30 = call i32 @exec_command_free_array(i32 %28, i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 13
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 12
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 11
  %37 = call i32 @dynamic_creds_unref(i32* %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 10
  %40 = call i32 @exit_status_set_free(i32* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 9
  %43 = call i32 @exit_status_set_free(i32* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 8
  %46 = call i32 @exit_status_set_free(i32* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = call i32 @service_unwatch_main_pid(%struct.TYPE_9__* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = call i32 @service_unwatch_control_pid(%struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = call i32 @service_unwatch_pid_file(%struct.TYPE_9__* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 7
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %1
  %58 = load i32*, i32** %2, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 7
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @unit_unwatch_bus_name(i32* %58, i8* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 7
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @mfree(i8* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %57, %1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 6
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @mfree(i8* %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 5
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @mfree(i8* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @mfree(i8* %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = call i32 @service_close_socket_fd(%struct.TYPE_9__* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @socket_peer_unref(i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = call i32 @unit_ref_unset(i32* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = call i32 @service_stop_watchdog(%struct.TYPE_9__* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @sd_event_source_unref(i8* %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @sd_event_source_unref(i8* %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @service_release_resources(i32* %113)
  ret void
}

declare dso_local %struct.TYPE_9__* @SERVICE(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i8* @mfree(i8*) #1

declare dso_local i32 @exec_runtime_unref(i32, i32) #1

declare dso_local i32 @exec_command_free_array(i32, i32) #1

declare dso_local i32 @dynamic_creds_unref(i32*) #1

declare dso_local i32 @exit_status_set_free(i32*) #1

declare dso_local i32 @service_unwatch_main_pid(%struct.TYPE_9__*) #1

declare dso_local i32 @service_unwatch_control_pid(%struct.TYPE_9__*) #1

declare dso_local i32 @service_unwatch_pid_file(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_unwatch_bus_name(i32*, i8*) #1

declare dso_local i32 @service_close_socket_fd(%struct.TYPE_9__*) #1

declare dso_local i32 @socket_peer_unref(i32) #1

declare dso_local i32 @unit_ref_unset(i32*) #1

declare dso_local i32 @service_stop_watchdog(%struct.TYPE_9__*) #1

declare dso_local i8* @sd_event_source_unref(i8*) #1

declare dso_local i32 @service_release_resources(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
