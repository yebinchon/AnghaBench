; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/api/extr_tcpip.c_tcpip_input.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/src/api/extr_tcpip.c_tcpip_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32 }
%struct.netif = type { i32 }
%struct.tcpip_msg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.netif*, %struct.pbuf* }

@mbox = common dso_local global i32 0, align 4
@ERR_VAL = common dso_local global i64 0, align 8
@MEMP_TCPIP_MSG_INPKT = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i64 0, align 8
@TCPIP_MSG_INPKT = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@NETIF_FLAG_ETHARP = common dso_local global i32 0, align 4
@NETIF_FLAG_ETHERNET = common dso_local global i32 0, align 4
@TCPIP_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcpip_input(%struct.pbuf* %0, %struct.netif* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca %struct.netif*, align 8
  %6 = alloca %struct.tcpip_msg*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %4, align 8
  store %struct.netif* %1, %struct.netif** %5, align 8
  %7 = call i32 @sys_mbox_valid(i32* @mbox)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @ERR_VAL, align 8
  store i64 %10, i64* %3, align 8
  br label %44

11:                                               ; preds = %2
  %12 = load i32, i32* @MEMP_TCPIP_MSG_INPKT, align 4
  %13 = call i64 @memp_malloc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.tcpip_msg*
  store %struct.tcpip_msg* %14, %struct.tcpip_msg** %6, align 8
  %15 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %16 = icmp eq %struct.tcpip_msg* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @ERR_MEM, align 8
  store i64 %18, i64* %3, align 8
  br label %44

19:                                               ; preds = %11
  %20 = load i32, i32* @TCPIP_MSG_INPKT, align 4
  %21 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %22 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %24 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %25 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store %struct.pbuf* %23, %struct.pbuf** %27, align 8
  %28 = load %struct.netif*, %struct.netif** %5, align 8
  %29 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %30 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.netif* %28, %struct.netif** %32, align 8
  %33 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %34 = call i64 @sys_mbox_trypost(i32* @mbox, %struct.tcpip_msg* %33)
  %35 = load i64, i64* @ERR_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load i32, i32* @MEMP_TCPIP_MSG_INPKT, align 4
  %39 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %40 = call i32 @memp_free(i32 %38, %struct.tcpip_msg* %39)
  %41 = load i64, i64* @ERR_MEM, align 8
  store i64 %41, i64* %3, align 8
  br label %44

42:                                               ; preds = %19
  %43 = load i64, i64* @ERR_OK, align 8
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %42, %37, %17, %9
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i32 @sys_mbox_valid(i32*) #1

declare dso_local i64 @memp_malloc(i32) #1

declare dso_local i64 @sys_mbox_trypost(i32*, %struct.tcpip_msg*) #1

declare dso_local i32 @memp_free(i32, %struct.tcpip_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
