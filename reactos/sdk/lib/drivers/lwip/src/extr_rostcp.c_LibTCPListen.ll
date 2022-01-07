; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPListen.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPListen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwip_callback_msg = type { %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@MessageLookasideList = common dso_local global i32 0, align 4
@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LibTCPListenCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @LibTCPListen(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lwip_callback_msg*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = call %struct.lwip_callback_msg* @ExAllocateFromNPagedLookasideList(i32* @MessageLookasideList)
  store %struct.lwip_callback_msg* %8, %struct.lwip_callback_msg** %6, align 8
  %9 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %6, align 8
  %10 = icmp ne %struct.lwip_callback_msg* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %6, align 8
  %13 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %12, i32 0, i32 1
  %14 = load i32, i32* @NotificationEvent, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @KeInitializeEvent(i32* %13, i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %6, align 8
  %19 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %6, align 8
  %24 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @LibTCPListenCallback, align 4
  %28 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %6, align 8
  %29 = call i32 @tcpip_callback_with_block(i32 %27, %struct.lwip_callback_msg* %28, i32 1)
  %30 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %6, align 8
  %31 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %30, i32 0, i32 1
  %32 = call i64 @WaitForEventSafely(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %11
  %35 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %6, align 8
  %36 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %7, align 8
  br label %41

40:                                               ; preds = %11
  store i32* null, i32** %7, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %6, align 8
  %43 = call i32 @ExFreeToNPagedLookasideList(i32* @MessageLookasideList, %struct.lwip_callback_msg* %42)
  %44 = load i32*, i32** %7, align 8
  store i32* %44, i32** %3, align 8
  br label %46

45:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
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
