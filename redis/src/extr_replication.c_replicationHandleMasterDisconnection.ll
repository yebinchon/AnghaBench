; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_replicationHandleMasterDisconnection.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_replicationHandleMasterDisconnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32* }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REPL_STATE_CONNECTED = common dso_local global i64 0, align 8
@REDISMODULE_EVENT_MASTER_LINK_CHANGE = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_MASTER_LINK_DOWN = common dso_local global i32 0, align 4
@REPL_STATE_CONNECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replicationHandleMasterDisconnection() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %2 = load i64, i64* @REPL_STATE_CONNECTED, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @REDISMODULE_EVENT_MASTER_LINK_CHANGE, align 4
  %6 = load i32, i32* @REDISMODULE_SUBEVENT_MASTER_LINK_DOWN, align 4
  %7 = call i32 @moduleFireServerEvent(i32 %5, i32 %6, i32* null)
  br label %8

8:                                                ; preds = %4, %0
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %9 = load i64, i64* @REPL_STATE_CONNECT, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  ret void
}

declare dso_local i32 @moduleFireServerEvent(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
