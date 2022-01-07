; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_init_netif.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_init_netif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_tcp_txcounters = type { %struct.test_tcp_txcounters*, i32, i32, i32, i32, %struct.test_tcp_txcounters* }
%struct.netif = type { %struct.netif*, i32, i32, i32, i32, %struct.netif* }

@test_tcp_netif_output = common dso_local global i32 0, align 4
@NETIF_FLAG_UP = common dso_local global i32 0, align 4
@netif_list = common dso_local global %struct.test_tcp_txcounters* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_tcp_init_netif(%struct.netif* %0, %struct.test_tcp_txcounters* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.netif*, align 8
  %6 = alloca %struct.test_tcp_txcounters*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.netif*, align 8
  store %struct.netif* %0, %struct.netif** %5, align 8
  store %struct.test_tcp_txcounters* %1, %struct.test_tcp_txcounters** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.netif*, %struct.netif** %5, align 8
  %11 = bitcast %struct.netif* %10 to %struct.test_tcp_txcounters*
  %12 = call i32 @memset(%struct.test_tcp_txcounters* %11, i32 0, i32 32)
  %13 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %6, align 8
  %14 = icmp ne %struct.test_tcp_txcounters* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %6, align 8
  %17 = call i32 @memset(%struct.test_tcp_txcounters* %16, i32 0, i32 32)
  %18 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %6, align 8
  %19 = bitcast %struct.test_tcp_txcounters* %18 to %struct.netif*
  %20 = load %struct.netif*, %struct.netif** %5, align 8
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %20, i32 0, i32 5
  store %struct.netif* %19, %struct.netif** %21, align 8
  br label %22

22:                                               ; preds = %15, %4
  %23 = load i32, i32* @test_tcp_netif_output, align 4
  %24 = load %struct.netif*, %struct.netif** %5, align 8
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @NETIF_FLAG_UP, align 4
  %27 = load %struct.netif*, %struct.netif** %5, align 8
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.netif*, %struct.netif** %5, align 8
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ip_addr_copy(i32 %33, i32 %35)
  %37 = load %struct.netif*, %struct.netif** %5, align 8
  %38 = getelementptr inbounds %struct.netif, %struct.netif* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ip_addr_copy(i32 %39, i32 %41)
  %43 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** @netif_list, align 8
  %44 = bitcast %struct.test_tcp_txcounters* %43 to %struct.netif*
  store %struct.netif* %44, %struct.netif** %9, align 8
  br label %45

45:                                               ; preds = %54, %22
  %46 = load %struct.netif*, %struct.netif** %9, align 8
  %47 = icmp ne %struct.netif* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.netif*, %struct.netif** %9, align 8
  %50 = load %struct.netif*, %struct.netif** %5, align 8
  %51 = icmp eq %struct.netif* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %63

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.netif*, %struct.netif** %9, align 8
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %55, i32 0, i32 0
  %57 = load %struct.netif*, %struct.netif** %56, align 8
  store %struct.netif* %57, %struct.netif** %9, align 8
  br label %45

58:                                               ; preds = %45
  %59 = load %struct.netif*, %struct.netif** %5, align 8
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %59, i32 0, i32 0
  store %struct.netif* null, %struct.netif** %60, align 8
  %61 = load %struct.netif*, %struct.netif** %5, align 8
  %62 = bitcast %struct.netif* %61 to %struct.test_tcp_txcounters*
  store %struct.test_tcp_txcounters* %62, %struct.test_tcp_txcounters** @netif_list, align 8
  br label %63

63:                                               ; preds = %58, %52
  ret void
}

declare dso_local i32 @memset(%struct.test_tcp_txcounters*, i32, i32) #1

declare dso_local i32 @ip_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
