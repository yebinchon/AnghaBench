; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_if.c_TCPUpdateInterfaceIPInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/tcp/extr_if.c_TCPUpdateInterfaceIPInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ip_addr = type { i64 }

@ADE_UNICAST = common dso_local global i32 0, align 4
@ADE_ADDRMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TCPUpdateInterfaceIPInformation(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.ip_addr, align 8
  %5 = alloca %struct.ip_addr, align 8
  %6 = alloca %struct.ip_addr, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = load i32, i32* @ADE_UNICAST, align 4
  %10 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i32 0, i32 0
  %11 = ptrtoint i64* %10 to i32
  %12 = call i32 @GetInterfaceIPv4Address(%struct.TYPE_4__* %8, i32 %9, i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = load i32, i32* @ADE_ADDRMASK, align 4
  %15 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %5, i32 0, i32 0
  %16 = ptrtoint i64* %15 to i32
  %17 = call i32 @GetInterfaceIPv4Address(%struct.TYPE_4__* %13, i32 %14, i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netif_set_addr(i32 %20, %struct.ip_addr* %4, %struct.ip_addr* %5, %struct.ip_addr* %6)
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netif_set_up(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netif_set_default(i32 %32)
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_set_down(i32 %37)
  br label %39

39:                                               ; preds = %34, %25
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @GetInterfaceIPv4Address(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @netif_set_addr(i32, %struct.ip_addr*, %struct.ip_addr*, %struct.ip_addr*) #1

declare dso_local i32 @netif_set_up(i32) #1

declare dso_local i32 @netif_set_default(i32) #1

declare dso_local i32 @netif_set_down(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
