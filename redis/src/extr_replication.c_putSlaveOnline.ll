; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_putSlaveOnline.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_putSlaveOnline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }

@SLAVE_STATE_ONLINE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@sendReplyToClient = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Unable to register writable event for replica bulk transfer: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@REDISMODULE_EVENT_REPLICA_CHANGE = common dso_local global i32 0, align 4
@REDISMODULE_SUBEVENT_REPLICA_CHANGE_ONLINE = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Synchronization with replica %s succeeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putSlaveOnline(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load i32, i32* @SLAVE_STATE_ONLINE, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @sendReplyToClient, align 4
  %15 = call i64 @connSetWriteHandler(i32 %13, i32 %14)
  %16 = load i64, i64* @C_ERR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @LL_WARNING, align 4
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @serverLog(i32 %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = call i32 @freeClient(%struct.TYPE_6__* %23)
  br label %34

25:                                               ; preds = %1
  %26 = call i32 (...) @refreshGoodSlavesCount()
  %27 = load i32, i32* @REDISMODULE_EVENT_REPLICA_CHANGE, align 4
  %28 = load i32, i32* @REDISMODULE_SUBEVENT_REPLICA_CHANGE_ONLINE, align 4
  %29 = call i32 @moduleFireServerEvent(i32 %27, i32 %28, i32* null)
  %30 = load i32, i32* @LL_NOTICE, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = call i32 @replicationGetSlaveName(%struct.TYPE_6__* %31)
  %33 = call i32 @serverLog(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %25, %18
  ret void
}

declare dso_local i64 @connSetWriteHandler(i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @freeClient(%struct.TYPE_6__*) #1

declare dso_local i32 @refreshGoodSlavesCount(...) #1

declare dso_local i32 @moduleFireServerEvent(i32, i32, i32*) #1

declare dso_local i32 @replicationGetSlaveName(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
