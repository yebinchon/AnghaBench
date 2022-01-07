; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPListenCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPListenCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwip_callback_msg = type { i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@InternalAcceptEventHandler = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @LibTCPListenCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LibTCPListenCallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lwip_callback_msg*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.lwip_callback_msg*
  store %struct.lwip_callback_msg* %5, %struct.lwip_callback_msg** %3, align 8
  %6 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %7 = call i32 @ASSERT(%struct.lwip_callback_msg* %6)
  %8 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %9 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %18 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %55

21:                                               ; preds = %1
  %22 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %23 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %31 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @tcp_listen_with_backlog(i32 %29, i32 %34)
  %36 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %37 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32* %35, i32** %39, align 8
  %40 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %41 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %21
  %47 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %48 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @InternalAcceptEventHandler, align 4
  %53 = call i32 @tcp_accept(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %21
  br label %55

55:                                               ; preds = %54, %16
  %56 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %57 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %56, i32 0, i32 0
  %58 = load i32, i32* @IO_NO_INCREMENT, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = call i32 @KeSetEvent(i32* %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @ASSERT(%struct.lwip_callback_msg*) #1

declare dso_local i32* @tcp_listen_with_backlog(i32, i32) #1

declare dso_local i32 @tcp_accept(i32*, i32) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
