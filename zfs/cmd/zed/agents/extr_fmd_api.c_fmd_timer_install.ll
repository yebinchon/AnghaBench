; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_timer_install.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_timer_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i8* }
%struct.sigevent = type { %struct.TYPE_8__, i32*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.itimerspec = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@FMD_SLEEP = common dso_local global i32 0, align 4
@SIGEV_THREAD = common dso_local global i32 0, align 4
@_timer_notify = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"installing timer for %d secs (%p)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @fmd_timer_install(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sigevent, align 8
  %10 = alloca %struct.itimerspec, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @FMD_SLEEP, align 4
  %14 = call %struct.TYPE_10__* @fmd_hdl_alloc(i32* %12, i32 24, i32 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %11, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %21, 1000000000
  %23 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %10, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = srem i32 %25, 1000000000
  %27 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %10, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %10, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %10, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %10, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %10, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @SIGEV_THREAD, align 4
  %40 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %9, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @_timer_notify, align 4
  %42 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %9, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %9, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %9, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %46, align 8
  %47 = load i32, i32* @CLOCK_REALTIME, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = call i32 @timer_create(i32 %47, %struct.sigevent* %9, i32* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @timer_settime(i32 %53, i32 0, %struct.itimerspec* %10, i32* null)
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %10, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @fmd_hdl_debug(i32* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  ret %struct.TYPE_10__* %63
}

declare dso_local %struct.TYPE_10__* @fmd_hdl_alloc(i32*, i32, i32) #1

declare dso_local i32 @timer_create(i32, %struct.sigevent*, i32*) #1

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, i32*) #1

declare dso_local i32 @fmd_hdl_debug(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
