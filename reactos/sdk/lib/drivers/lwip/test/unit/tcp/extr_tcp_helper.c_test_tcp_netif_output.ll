; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_netif_output.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/lwip/test/unit/tcp/extr_tcp_helper.c_test_tcp_netif_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i64 }
%struct.pbuf = type { i64 }
%struct.test_tcp_txcounters = type { %struct.pbuf*, i64, i32, i32 }

@PBUF_LINK = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.netif*, %struct.pbuf*, i32*)* @test_tcp_netif_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_tcp_netif_output(%struct.netif* %0, %struct.pbuf* %1, i32* %2) #0 {
  %4 = alloca %struct.netif*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.test_tcp_txcounters*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca i64, align 8
  store %struct.netif* %0, %struct.netif** %4, align 8
  store %struct.pbuf* %1, %struct.pbuf** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.netif*, %struct.netif** %4, align 8
  %11 = getelementptr inbounds %struct.netif, %struct.netif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.test_tcp_txcounters*
  store %struct.test_tcp_txcounters* %13, %struct.test_tcp_txcounters** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @LWIP_UNUSED_ARG(i32* %14)
  %16 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %7, align 8
  %17 = icmp ne %struct.test_tcp_txcounters* %16, null
  br i1 %17, label %18, label %71

18:                                               ; preds = %3
  %19 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %7, align 8
  %20 = getelementptr inbounds %struct.test_tcp_txcounters, %struct.test_tcp_txcounters* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %7, align 8
  %27 = getelementptr inbounds %struct.test_tcp_txcounters, %struct.test_tcp_txcounters* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  %32 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %7, align 8
  %33 = getelementptr inbounds %struct.test_tcp_txcounters, %struct.test_tcp_txcounters* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %18
  %37 = load i32, i32* @PBUF_LINK, align 4
  %38 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @PBUF_RAM, align 4
  %42 = call %struct.pbuf* @pbuf_alloc(i32 %37, i64 %40, i32 %41)
  store %struct.pbuf* %42, %struct.pbuf** %8, align 8
  %43 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %44 = icmp ne %struct.pbuf* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @EXPECT(i32 %45)
  %47 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %48 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %49 = call i64 @pbuf_copy(%struct.pbuf* %47, %struct.pbuf* %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @ERR_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @EXPECT(i32 %53)
  %55 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %7, align 8
  %56 = getelementptr inbounds %struct.test_tcp_txcounters, %struct.test_tcp_txcounters* %55, i32 0, i32 0
  %57 = load %struct.pbuf*, %struct.pbuf** %56, align 8
  %58 = icmp eq %struct.pbuf* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %36
  %60 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %61 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %7, align 8
  %62 = getelementptr inbounds %struct.test_tcp_txcounters, %struct.test_tcp_txcounters* %61, i32 0, i32 0
  store %struct.pbuf* %60, %struct.pbuf** %62, align 8
  br label %69

63:                                               ; preds = %36
  %64 = load %struct.test_tcp_txcounters*, %struct.test_tcp_txcounters** %7, align 8
  %65 = getelementptr inbounds %struct.test_tcp_txcounters, %struct.test_tcp_txcounters* %64, i32 0, i32 0
  %66 = load %struct.pbuf*, %struct.pbuf** %65, align 8
  %67 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %68 = call i32 @pbuf_cat(%struct.pbuf* %66, %struct.pbuf* %67)
  br label %69

69:                                               ; preds = %63, %59
  br label %70

70:                                               ; preds = %69, %18
  br label %71

71:                                               ; preds = %70, %3
  %72 = load i64, i64* @ERR_OK, align 8
  ret i64 %72
}

declare dso_local i32 @LWIP_UNUSED_ARG(i32*) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @EXPECT(i32) #1

declare dso_local i64 @pbuf_copy(%struct.pbuf*, %struct.pbuf*) #1

declare dso_local i32 @pbuf_cat(%struct.pbuf*, %struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
