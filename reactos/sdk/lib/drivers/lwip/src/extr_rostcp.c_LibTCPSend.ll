; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPSend.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwip_callback_msg = type { %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i32 }

@MessageLookasideList = common dso_local global i32 0, align 4
@NotificationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERR_CLSD = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i64 0, align 8
@ERR_MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LibTCPSend(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.lwip_callback_msg*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call %struct.lwip_callback_msg* @ExAllocateFromNPagedLookasideList(i32* @MessageLookasideList)
  store %struct.lwip_callback_msg* %14, %struct.lwip_callback_msg** %13, align 8
  %15 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %16 = icmp ne %struct.lwip_callback_msg* %15, null
  br i1 %16, label %17, label %76

17:                                               ; preds = %5
  %18 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %19 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %18, i32 0, i32 1
  %20 = load i32, i32* @NotificationEvent, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @KeInitializeEvent(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %25 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %30 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %35 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %17
  %41 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %42 = call i32 @LibTCPSendCallback(%struct.lwip_callback_msg* %41)
  br label %46

43:                                               ; preds = %17
  %44 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %45 = call i32 @tcpip_callback_with_block(i32 (%struct.lwip_callback_msg*)* @LibTCPSendCallback, %struct.lwip_callback_msg* %44, i32 1)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %48 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %47, i32 0, i32 1
  %49 = call i64 @WaitForEventSafely(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %53 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %12, align 8
  br label %59

57:                                               ; preds = %46
  %58 = load i64, i64* @ERR_CLSD, align 8
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* @ERR_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %65 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  br label %72

70:                                               ; preds = %59
  %71 = load i32*, i32** %10, align 8
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %13, align 8
  %74 = call i32 @ExFreeToNPagedLookasideList(i32* @MessageLookasideList, %struct.lwip_callback_msg* %73)
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %6, align 8
  br label %78

76:                                               ; preds = %5
  %77 = load i64, i64* @ERR_MEM, align 8
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local %struct.lwip_callback_msg* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @LibTCPSendCallback(%struct.lwip_callback_msg*) #1

declare dso_local i32 @tcpip_callback_with_block(i32 (%struct.lwip_callback_msg*)*, %struct.lwip_callback_msg*, i32) #1

declare dso_local i64 @WaitForEventSafely(i32*) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, %struct.lwip_callback_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
