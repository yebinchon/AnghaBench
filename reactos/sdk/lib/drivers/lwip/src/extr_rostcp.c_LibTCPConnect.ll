; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPConnect.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_addr = type { i32 }
%struct.lwip_callback_msg = type { %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.ip_addr*, i32 }

@MessageLookasideList = common dso_local global i32 0, align 4
@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LibTCPConnectCallback = common dso_local global i32 0, align 4
@ERR_CLSD = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LibTCPConnect(i32 %0, %struct.ip_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lwip_callback_msg*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ip_addr* %1, %struct.ip_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call %struct.lwip_callback_msg* @ExAllocateFromNPagedLookasideList(i32* @MessageLookasideList)
  store %struct.lwip_callback_msg* %10, %struct.lwip_callback_msg** %8, align 8
  %11 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %8, align 8
  %12 = icmp ne %struct.lwip_callback_msg* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %3
  %14 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %8, align 8
  %15 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %14, i32 0, i32 1
  %16 = load i32, i32* @NotificationEvent, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32 @KeInitializeEvent(i32* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %8, align 8
  %21 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 8
  %24 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %25 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %8, align 8
  %26 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store %struct.ip_addr* %24, %struct.ip_addr** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %8, align 8
  %31 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* @LibTCPConnectCallback, align 4
  %35 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %8, align 8
  %36 = call i32 @tcpip_callback_with_block(i32 %34, %struct.lwip_callback_msg* %35, i32 1)
  %37 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %8, align 8
  %38 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %37, i32 0, i32 1
  %39 = call i64 @WaitForEventSafely(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %13
  %42 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %8, align 8
  %43 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  br label %49

47:                                               ; preds = %13
  %48 = load i32, i32* @ERR_CLSD, align 4
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %8, align 8
  %51 = call i32 @ExFreeToNPagedLookasideList(i32* @MessageLookasideList, %struct.lwip_callback_msg* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @ERR_MEM, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
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
