; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_replicationSetMaster.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_replicationSetMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32* }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED = common dso_local global i32 0, align 4
@REDISMODULE_EVENT_REPLROLECHANGED_NOW_REPLICA = common dso_local global i32 0, align 4
@REPL_STATE_CONNECTED = common dso_local global i64 0, align 8
@REDISMODULE_EVENT_MASTER_LINK_CHANGE = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_MASTER_LINK_DOWN = common dso_local global i32 0, align 4
@REPL_STATE_CONNECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replicationSetMaster(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %7 = icmp eq i32* %6, null
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %10 = call i32 @sdsfree(i32* %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32* @sdsnew(i8* %11)
  store i32* %12, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %18 = call i32 @freeClient(i64 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = call i32 (...) @disconnectAllBlockedClients()
  %21 = call i32 (...) @disconnectSlaves()
  %22 = call i32 (...) @cancelReplicationHandshake()
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call i32 (...) @replicationDiscardCachedMaster()
  %27 = call i32 (...) @replicationCacheMasterUsingMyself()
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* @REDISMODULE_EVENT_REPLICATION_ROLE_CHANGED, align 4
  %30 = load i32, i32* @REDISMODULE_EVENT_REPLROLECHANGED_NOW_REPLICA, align 4
  %31 = call i32 @moduleFireServerEvent(i32 %29, i32 %30, i32* null)
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %33 = load i64, i64* @REPL_STATE_CONNECTED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @REDISMODULE_EVENT_MASTER_LINK_CHANGE, align 4
  %37 = load i32, i32* @REDISMODULE_SUBEVENT_MASTER_LINK_DOWN, align 4
  %38 = call i32 @moduleFireServerEvent(i32 %36, i32 %37, i32* null)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i64, i64* @REPL_STATE_CONNECT, align 8
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32* @sdsnew(i8*) #1

declare dso_local i32 @freeClient(i64) #1

declare dso_local i32 @disconnectAllBlockedClients(...) #1

declare dso_local i32 @disconnectSlaves(...) #1

declare dso_local i32 @cancelReplicationHandshake(...) #1

declare dso_local i32 @replicationDiscardCachedMaster(...) #1

declare dso_local i32 @replicationCacheMasterUsingMyself(...) #1

declare dso_local i32 @moduleFireServerEvent(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
