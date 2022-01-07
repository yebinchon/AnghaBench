; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPSocket.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.lwip_callback_msg = type { %struct.TYPE_6__, i32, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tcp_pcb* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@MessageLookasideList = common dso_local global i32 0, align 4
@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LibTCPSocketCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcp_pcb* @LibTCPSocket(i8* %0) #0 {
  %2 = alloca %struct.tcp_pcb*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lwip_callback_msg*, align 8
  %5 = alloca %struct.tcp_pcb*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call %struct.lwip_callback_msg* @ExAllocateFromNPagedLookasideList(i32* @MessageLookasideList)
  store %struct.lwip_callback_msg* %6, %struct.lwip_callback_msg** %4, align 8
  %7 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %4, align 8
  %8 = icmp ne %struct.lwip_callback_msg* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %4, align 8
  %11 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %10, i32 0, i32 1
  %12 = load i32, i32* @NotificationEvent, align 4
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @KeInitializeEvent(i32* %11, i32 %12, i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %4, align 8
  %17 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i8* %15, i8** %19, align 8
  %20 = load i32, i32* @LibTCPSocketCallback, align 4
  %21 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %4, align 8
  %22 = call i32 @tcpip_callback_with_block(i32 %20, %struct.lwip_callback_msg* %21, i32 1)
  %23 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %4, align 8
  %24 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %23, i32 0, i32 1
  %25 = call i64 @WaitForEventSafely(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %9
  %28 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %4, align 8
  %29 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.tcp_pcb*, %struct.tcp_pcb** %31, align 8
  store %struct.tcp_pcb* %32, %struct.tcp_pcb** %5, align 8
  br label %34

33:                                               ; preds = %9
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %5, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %4, align 8
  %36 = call i32 @ExFreeToNPagedLookasideList(i32* @MessageLookasideList, %struct.lwip_callback_msg* %35)
  %37 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8
  store %struct.tcp_pcb* %37, %struct.tcp_pcb** %2, align 8
  br label %39

38:                                               ; preds = %1
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %2, align 8
  br label %39

39:                                               ; preds = %38, %34
  %40 = load %struct.tcp_pcb*, %struct.tcp_pcb** %2, align 8
  ret %struct.tcp_pcb* %40
}

declare dso_local %struct.lwip_callback_msg* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @tcpip_callback_with_block(i32, %struct.lwip_callback_msg*, i32) #1

declare dso_local i64 @WaitForEventSafely(i32*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.lwip_callback_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
