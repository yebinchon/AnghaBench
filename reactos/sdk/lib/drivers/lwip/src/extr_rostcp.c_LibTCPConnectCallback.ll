; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPConnectCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPConnectCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwip_callback_msg = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@ERR_CLSD = common dso_local global i64 0, align 8
@InternalRecvEventHandler = common dso_local global i32 0, align 4
@InternalSendEventHandler = common dso_local global i32 0, align 4
@InternalConnectEventHandler = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@ERR_INPROGRESS = common dso_local global i64 0, align 8
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @LibTCPConnectCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LibTCPConnectCallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lwip_callback_msg*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.lwip_callback_msg*
  store %struct.lwip_callback_msg* %6, %struct.lwip_callback_msg** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @ASSERT(i8* %7)
  %9 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %10 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i64, i64* @ERR_CLSD, align 8
  %19 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %20 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  br label %78

23:                                               ; preds = %1
  %24 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %25 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @InternalRecvEventHandler, align 4
  %33 = call i32 @tcp_recv(i32 %31, i32 %32)
  %34 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %35 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @InternalSendEventHandler, align 4
  %43 = call i32 @tcp_sent(i32 %41, i32 %42)
  %44 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %45 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %53 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %58 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ntohs(i32 %61)
  %63 = load i32, i32* @InternalConnectEventHandler, align 4
  %64 = call i64 @tcp_connect(i32 %51, i32 %56, i32 %62, i32 %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @ERR_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %23
  %69 = load i64, i64* @ERR_INPROGRESS, align 8
  br label %72

70:                                               ; preds = %23
  %71 = load i64, i64* %4, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  %74 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %75 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %17
  %79 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %80 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %79, i32 0, i32 0
  %81 = load i32, i32* @IO_NO_INCREMENT, align 4
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i32 @KeSetEvent(i32* %80, i32 %81, i32 %82)
  ret void
}

declare dso_local i32 @ASSERT(i8*) #1

declare dso_local i32 @tcp_recv(i32, i32) #1

declare dso_local i32 @tcp_sent(i32, i32) #1

declare dso_local i64 @tcp_connect(i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
