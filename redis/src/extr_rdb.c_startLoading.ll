; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_startLoading.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_startLoading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RDBFLAGS_AOF_PREAMBLE = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_LOADING_AOF_START = common dso_local global i32 0, align 4
@RDBFLAGS_REPLICATION = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_LOADING_REPL_START = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_LOADING_RDB_START = common dso_local global i32 0, align 4
@REDISMODULE_EVENT_LOADING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startLoading(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %6 = call i32 @time(i32* null)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %7 = load i64, i64* %3, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RDBFLAGS_AOF_PREAMBLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @REDISMODULE_SUBEVENT_LOADING_AOF_START, align 4
  store i32 %13, i32* %5, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RDBFLAGS_REPLICATION, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @REDISMODULE_SUBEVENT_LOADING_REPL_START, align 4
  store i32 %20, i32* %5, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @REDISMODULE_SUBEVENT_LOADING_RDB_START, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i32, i32* @REDISMODULE_EVENT_LOADING, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @moduleFireServerEvent(i32 %25, i32 %26, i32* null)
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @moduleFireServerEvent(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
