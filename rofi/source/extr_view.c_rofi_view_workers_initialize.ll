; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_workers_initialize.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_workers_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Setup Threadpool, start\00", align 1
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@rofi_view_call_thread = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@tpool = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to setup thread pool: '%s'\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Setup Threadpool, done\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_view_workers_initialize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = call i32 @TICK_N(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  %7 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %8 = call i64 @sysconf(i32 %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @MIN(i64 %12, i64 128)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  br label %14

14:                                               ; preds = %11, %6
  br label %15

15:                                               ; preds = %14, %0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  %16 = load i32, i32* @rofi_view_call_thread, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @g_thread_pool_new(i32 %16, i32* null, i32 %17, i32 %18, %struct.TYPE_6__** %2)
  store i32 %19, i32* @tpool, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = call i32 @g_thread_pool_set_max_idle_time(i32 60000)
  %24 = load i32, i32* @tpool, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  %26 = call i32 @g_thread_pool_set_max_threads(i32 %24, i32 %25, %struct.TYPE_6__** %2)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @g_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = call i32 @g_error_free(%struct.TYPE_6__* %35)
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %27
  %40 = call i32 @TICK_N(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TICK_N(i8*) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @g_thread_pool_new(i32, i32*, i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @g_thread_pool_set_max_idle_time(i32) #1

declare dso_local i32 @g_thread_pool_set_max_threads(i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @g_warning(i8*, i32) #1

declare dso_local i32 @g_error_free(%struct.TYPE_6__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
