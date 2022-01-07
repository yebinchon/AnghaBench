; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_location-geoclue2.c_run_geoclue2_loop.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_location-geoclue2.c_run_geoclue2_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@G_BUS_TYPE_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"org.freedesktop.GeoClue2\00", align 1
@G_BUS_NAME_WATCHER_FLAGS_AUTO_START = common dso_local global i32 0, align 4
@on_name_appeared = common dso_local global i32 0, align 4
@on_name_vanished = common dso_local global i32 0, align 4
@G_IO_IN = common dso_local global i32 0, align 4
@G_IO_HUP = common dso_local global i32 0, align 4
@G_IO_ERR = common dso_local global i32 0, align 4
@on_pipe_closed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @run_geoclue2_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run_geoclue2_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = call i32* (...) @g_main_context_new()
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @g_main_context_push_thread_default(i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @g_main_loop_new(i32* %13, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @G_BUS_TYPE_SYSTEM, align 4
  %19 = load i32, i32* @G_BUS_NAME_WATCHER_FLAGS_AUTO_START, align 4
  %20 = load i32, i32* @on_name_appeared, align 4
  %21 = load i32, i32* @on_name_vanished, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = call i32 @g_bus_watch_name(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, %struct.TYPE_4__* %22, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @g_io_channel_unix_new(i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @G_IO_IN, align 4
  %30 = load i32, i32* @G_IO_HUP, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @G_IO_ERR, align 4
  %33 = or i32 %31, %32
  %34 = call i32* @g_io_create_watch(i32* %28, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i64, i64* @on_pipe_closed, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = call i32 @g_source_set_callback(i32* %35, i32 %37, %struct.TYPE_4__* %38, i32* null)
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @g_source_attach(i32* %40, i32* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @g_main_loop_run(i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @g_source_unref(i32* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @g_io_channel_unref(i32* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @g_bus_unwatch_name(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @g_main_loop_unref(i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @g_main_context_unref(i32* %61)
  ret i8* null
}

declare dso_local i32* @g_main_context_new(...) #1

declare dso_local i32 @g_main_context_push_thread_default(i32*) #1

declare dso_local i32 @g_main_loop_new(i32*, i32) #1

declare dso_local i32 @g_bus_watch_name(i32, i8*, i32, i32, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32* @g_io_channel_unix_new(i32) #1

declare dso_local i32* @g_io_create_watch(i32*, i32) #1

declare dso_local i32 @g_source_set_callback(i32*, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @g_source_attach(i32*, i32*) #1

declare dso_local i32 @g_main_loop_run(i32) #1

declare dso_local i32 @g_source_unref(i32*) #1

declare dso_local i32 @g_io_channel_unref(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @g_bus_unwatch_name(i32) #1

declare dso_local i32 @g_main_loop_unref(i32) #1

declare dso_local i32 @g_main_context_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
