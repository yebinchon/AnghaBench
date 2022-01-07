; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_replicationSendAck.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_replicationSendAck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CLIENT_MASTER_FORCE_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"REPLCONF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replicationSendAck() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %1, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %28

5:                                                ; preds = %0
  %6 = load i32, i32* @CLIENT_MASTER_FORCE_REPLY, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %12 = call i32 @addReplyArrayLen(%struct.TYPE_6__* %11, i32 3)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %14 = call i32 @addReplyBulkCString(%struct.TYPE_6__* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %16 = call i32 @addReplyBulkCString(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @addReplyBulkLongLong(%struct.TYPE_6__* %17, i32 %20)
  %22 = load i32, i32* @CLIENT_MASTER_FORCE_REPLY, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %5, %0
  ret void
}

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @addReplyBulkCString(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
