; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_processModuleLoadingProgressEvent.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_processModuleLoadingProgressEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@processModuleLoadingProgressEvent.next_event = internal global i64 0, align 8
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@REDISMODULE_LOADING_PROGRESS_VERSION = common dso_local global i32 0, align 4
@REDISMODULE_EVENT_LOADING_PROGRESS = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_LOADING_PROGRESS_AOF = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_LOADING_PROGRESS_RDB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processModuleLoadingProgressEvent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i64 (...) @ustime()
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @processModuleLoadingProgressEvent.next_event, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %15 = shl i32 %14, 10
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %20 = load i32, i32* @REDISMODULE_LOADING_PROGRESS_VERSION, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i32, i32* @REDISMODULE_EVENT_LOADING_PROGRESS, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @REDISMODULE_SUBEVENT_LOADING_PROGRESS_AOF, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @REDISMODULE_SUBEVENT_LOADING_PROGRESS_RDB, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @moduleFireServerEvent(i32 %25, i32 %33, %struct.TYPE_4__* %5)
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 4
  %37 = sdiv i32 1000000, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  store i64 %39, i64* @processModuleLoadingProgressEvent.next_event, align 8
  br label %40

40:                                               ; preds = %32, %1
  ret void
}

declare dso_local i64 @ustime(...) #1

declare dso_local i32 @moduleFireServerEvent(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
