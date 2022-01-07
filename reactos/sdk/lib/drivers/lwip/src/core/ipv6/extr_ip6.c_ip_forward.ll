; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/ipv6/extr_ip6.c_ip_forward.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/core/ipv6/extr_ip6.c_ip_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pbuf = type { i32 }
%struct.ip_hdr = type { i64, i64, i32 }
%struct.netif = type { i32 (%struct.netif*, %struct.pbuf*, %struct.ip_addr*)* }
%struct.ip_addr = type opaque
%struct.ip_addr.0 = type { i32 }

@PERF_START = common dso_local global i32 0, align 4
@IP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ip_input: no forwarding route found for \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ip_forward: forwarding packet to \00", align 1
@ip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"ip_forward\00", align 1
@ICMP_TE_TTL = common dso_local global i32 0, align 4
@IP_PROTO_ICMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pbuf*, %struct.ip_hdr*)* @ip_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_forward(%struct.pbuf* %0, %struct.ip_hdr* %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca %struct.ip_hdr*, align 8
  %5 = alloca %struct.netif*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store %struct.ip_hdr* %1, %struct.ip_hdr** %4, align 8
  %6 = load i32, i32* @PERF_START, align 4
  %7 = load %struct.ip_hdr*, %struct.ip_hdr** %4, align 8
  %8 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %7, i32 0, i32 2
  %9 = bitcast i32* %8 to %struct.ip_addr.0*
  %10 = call %struct.netif* @ip_route(%struct.ip_addr.0* %9)
  store %struct.netif* %10, %struct.netif** %5, align 8
  %11 = icmp eq %struct.netif* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @IP_DEBUG, align 4
  %14 = call i32 @LWIP_DEBUGF(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @IP_DEBUG, align 4
  %16 = call i32 @LWIP_DEBUGF(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %18 = call i32 @pbuf_free(%struct.pbuf* %17)
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.ip_hdr*, %struct.ip_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %27 = call i32 @pbuf_free(%struct.pbuf* %26)
  br label %48

28:                                               ; preds = %19
  %29 = load i32, i32* @IP_DEBUG, align 4
  %30 = call i32 @LWIP_DEBUGF(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @IP_DEBUG, align 4
  %32 = call i32 @LWIP_DEBUGF(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ip, i32 0, i32 1), align 4
  %34 = call i32 @IP_STATS_INC(i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ip, i32 0, i32 0), align 4
  %36 = call i32 @IP_STATS_INC(i32 %35)
  %37 = call i32 @PERF_STOP(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.netif*, %struct.netif** %5, align 8
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %38, i32 0, i32 0
  %40 = load i32 (%struct.netif*, %struct.pbuf*, %struct.ip_addr*)*, i32 (%struct.netif*, %struct.pbuf*, %struct.ip_addr*)** %39, align 8
  %41 = load %struct.netif*, %struct.netif** %5, align 8
  %42 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %43 = load %struct.ip_hdr*, %struct.ip_hdr** %4, align 8
  %44 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %43, i32 0, i32 2
  %45 = bitcast i32* %44 to %struct.ip_addr.0*
  %46 = bitcast %struct.ip_addr.0* %45 to %struct.ip_addr*
  %47 = call i32 %40(%struct.netif* %41, %struct.pbuf* %42, %struct.ip_addr* %46)
  br label %48

48:                                               ; preds = %28, %25, %12
  ret void
}

declare dso_local %struct.netif* @ip_route(%struct.ip_addr.0*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @IP_STATS_INC(i32) #1

declare dso_local i32 @PERF_STOP(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
