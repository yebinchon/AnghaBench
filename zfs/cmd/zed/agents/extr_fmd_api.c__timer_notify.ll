; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c__timer_notify.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c__timer_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32* }
%union.sigval = type { %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32*, %struct.TYPE_7__*, i32)* }
%struct.itimerspec = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"timer fired (%p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @_timer_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_timer_notify(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %union.sigval, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.itimerspec, align 4
  %8 = getelementptr inbounds %union.sigval, %union.sigval* %2, i32 0, i32 0
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  %9 = bitcast %union.sigval* %2 to %struct.TYPE_7__**
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @fmd_hdl_debug(i32* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @bzero(%struct.itimerspec* %7, i32 4)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @timer_settime(i32 %29, i32 0, %struct.itimerspec* %7, i32* null)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32 (i32*, %struct.TYPE_7__*, i32)*, i32 (i32*, %struct.TYPE_7__*, i32)** %32, align 8
  %34 = icmp ne i32 (i32*, %struct.TYPE_7__*, i32)* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32 (i32*, %struct.TYPE_7__*, i32)*, i32 (i32*, %struct.TYPE_7__*, i32)** %37, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %38(i32* %39, %struct.TYPE_7__* %40, i32 %43)
  br label %45

45:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @fmd_hdl_debug(i32*, i8*, i32) #1

declare dso_local i32 @bzero(%struct.itimerspec*, i32) #1

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
