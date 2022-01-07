; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_if.c_TCPInterfaceInit.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_if.c_TCPInterfaceInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@TCPSendDataCallback = common dso_local global i32 0, align 4
@NETIF_FLAG_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TCPInterfaceInit(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.netif* %0, %struct.netif** %2, align 8
  %4 = load %struct.netif*, %struct.netif** %2, align 8
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %4, i32 0, i32 6
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.netif*, %struct.netif** %2, align 8
  %11 = getelementptr inbounds %struct.netif, %struct.netif* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load %struct.netif*, %struct.netif** %2, align 8
  %13 = getelementptr inbounds %struct.netif, %struct.netif* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.netif*, %struct.netif** %2, align 8
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @RtlCopyMemory(i32 %14, i32 %17, i32 %20)
  %22 = load i32, i32* @TCPSendDataCallback, align 4
  %23 = load %struct.netif*, %struct.netif** %2, align 8
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.netif*, %struct.netif** %2, align 8
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.netif*, %struct.netif** %2, align 8
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 101, i8* %33, align 1
  %34 = load %struct.netif*, %struct.netif** %2, align 8
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 110, i8* %37, align 1
  %38 = load i32, i32* @NETIF_FLAG_BROADCAST, align 4
  %39 = load %struct.netif*, %struct.netif** %2, align 8
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = call i32 @TCPUpdateInterfaceLinkStatus(%struct.TYPE_4__* %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = call i32 @TCPUpdateInterfaceIPInformation(%struct.TYPE_4__* %45)
  ret i32 0
}

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local i32 @TCPUpdateInterfaceLinkStatus(%struct.TYPE_4__*) #1

declare dso_local i32 @TCPUpdateInterfaceIPInformation(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
