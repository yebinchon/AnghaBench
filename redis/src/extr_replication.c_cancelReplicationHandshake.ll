; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_cancelReplicationHandshake.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_cancelReplicationHandshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REPL_STATE_TRANSFER = common dso_local global i64 0, align 8
@REPL_STATE_CONNECT = common dso_local global i8* null, align 8
@REPL_STATE_CONNECTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cancelReplicationHandshake() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %3 = load i64, i64* @REPL_STATE_TRANSFER, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i32 (...) @replicationAbortSyncTransfer()
  %7 = load i8*, i8** @REPL_STATE_CONNECT, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  br label %22

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %11 = load i64, i64* @REPL_STATE_CONNECTING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = call i64 (...) @slaveIsInHandshakeState()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %9
  %17 = call i32 (...) @undoConnectWithMaster()
  %18 = load i8*, i8** @REPL_STATE_CONNECT, align 8
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  br label %21

20:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %23

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %5
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @replicationAbortSyncTransfer(...) #1

declare dso_local i64 @slaveIsInHandshakeState(...) #1

declare dso_local i32 @undoConnectWithMaster(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
