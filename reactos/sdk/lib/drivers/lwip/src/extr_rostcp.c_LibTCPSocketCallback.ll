; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPSocketCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPSocketCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwip_callback_msg = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@InternalErrorEventHandler = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @LibTCPSocketCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LibTCPSocketCallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lwip_callback_msg*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.lwip_callback_msg*
  store %struct.lwip_callback_msg* %5, %struct.lwip_callback_msg** %3, align 8
  %6 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %7 = call i32 @ASSERT(%struct.lwip_callback_msg* %6)
  %8 = call i64 (...) @tcp_new()
  %9 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %10 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i64 %8, i64* %12, align 8
  %13 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %14 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %21 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %26 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @tcp_arg(i64 %24, i32 %29)
  %31 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %32 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @InternalErrorEventHandler, align 4
  %37 = call i32 @tcp_err(i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %19, %1
  %39 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %40 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %39, i32 0, i32 0
  %41 = load i32, i32* @IO_NO_INCREMENT, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = call i32 @KeSetEvent(i32* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @ASSERT(%struct.lwip_callback_msg*) #1

declare dso_local i64 @tcp_new(...) #1

declare dso_local i32 @tcp_arg(i64, i32) #1

declare dso_local i32 @tcp_err(i64, i32) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
