; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_launcher_handle_message.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_launcher_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@ACK_FAILURE = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"TimescaleDB background worker launcher received message from non-existent backend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @launcher_handle_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @launcher_handle_message(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = call %struct.TYPE_7__* (...) @ts_bgw_message_receive()
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* @ACK_FAILURE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @BackendPidGetProc(i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* @LOG, align 4
  %22 = call i32 @errmsg(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %21, i32 %22)
  store i32 1, i32* %2, align 4
  br label %49

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GET_VXID_FROM_PGPROC(i32 %25, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %45 [
    i32 129, label %32
    i32 128, label %36
    i32 130, label %40
  ]

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = call i32 @message_start_action(i32* %33, %struct.TYPE_7__* %34)
  store i32 %35, i32* %7, align 4
  br label %45

36:                                               ; preds = %24
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = call i32 @message_stop_action(i32* %37, %struct.TYPE_7__* %38)
  store i32 %39, i32* %7, align 4
  br label %45

40:                                               ; preds = %24
  %41 = load i32*, i32** %3, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @message_restart_action(i32* %41, %struct.TYPE_7__* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %24, %40, %36, %32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ts_bgw_message_send_ack(%struct.TYPE_7__* %46, i32 %47)
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %20, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_7__* @ts_bgw_message_receive(...) #1

declare dso_local i32* @BackendPidGetProc(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @GET_VXID_FROM_PGPROC(i32, i32) #1

declare dso_local i32 @message_start_action(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @message_stop_action(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @message_restart_action(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ts_bgw_message_send_ack(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
