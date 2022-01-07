; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPBindCallback.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/extr_rostcp.c_LibTCPBindCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwip_callback_msg = type { i32, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ERR_CLSD = common dso_local global i32 0, align 4
@SOF_REUSEADDR = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @LibTCPBindCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LibTCPBindCallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lwip_callback_msg*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.lwip_callback_msg*
  store %struct.lwip_callback_msg* %6, %struct.lwip_callback_msg** %3, align 8
  %7 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %8 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %4, align 8
  %14 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %15 = call i32 @ASSERT(%struct.lwip_callback_msg* %14)
  %16 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %17 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ERR_CLSD, align 4
  %26 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %27 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  br label %53

30:                                               ; preds = %1
  %31 = load i32, i32* @SOF_REUSEADDR, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %38 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %43 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntohs(i32 %46)
  %48 = call i32 @tcp_bind(%struct.TYPE_13__* %36, i32 %41, i32 %47)
  %49 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %50 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  br label %53

53:                                               ; preds = %30, %24
  %54 = load %struct.lwip_callback_msg*, %struct.lwip_callback_msg** %3, align 8
  %55 = getelementptr inbounds %struct.lwip_callback_msg, %struct.lwip_callback_msg* %54, i32 0, i32 0
  %56 = load i32, i32* @IO_NO_INCREMENT, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @KeSetEvent(i32* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @ASSERT(%struct.lwip_callback_msg*) #1

declare dso_local i32 @tcp_bind(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
