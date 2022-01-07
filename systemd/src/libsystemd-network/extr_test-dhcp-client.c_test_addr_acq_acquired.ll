; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp-client.c_test_addr_acq_acquired.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-dhcp-client.c_test_addr_acq_acquired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@SD_DHCP_CLIENT_EVENT_IP_ACQUIRE = common dso_local global i32 0, align 4
@SD_DHCP_CLIENT_EVENT_SELECTING = common dso_local global i32 0, align 4
@test_addr_acq_ack = common dso_local global i32* null, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"  DHCP address acquired\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @test_addr_acq_acquired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_addr_acq_acquired(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.in_addr*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @assert_se(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SD_DHCP_CLIENT_EVENT_IP_ACQUIRE, align 4
  %18 = load i32, i32* @SD_DHCP_CLIENT_EVENT_SELECTING, align 4
  %19 = call i32 @IN_SET(i32 %16, i32 %17, i32 %18)
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @sd_dhcp_client_get_lease(i32* %21, i32** %8)
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @sd_dhcp_lease_get_address(i32* %29, %struct.in_addr* %9)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  %34 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %35 = load i32*, i32** @test_addr_acq_ack, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 44
  %37 = call i64 @memcmp(i32* %34, i32* %36, i32 4)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert_se(i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @sd_dhcp_lease_get_netmask(i32* %41, %struct.in_addr* %9)
  %43 = icmp sge i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert_se(i32 %44)
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %9, i32 0, i32 0
  %47 = load i32*, i32** @test_addr_acq_ack, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 285
  %49 = call i64 @memcmp(i32* %46, i32* %48, i32 4)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @sd_dhcp_lease_get_router(i32* %53, %struct.in_addr** %10)
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert_se(i32 %56)
  %58 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %59 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %58, i64 0
  %60 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %59, i32 0, i32 0
  %61 = load i32*, i32** @test_addr_acq_ack, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 308
  %63 = call i64 @memcmp(i32* %60, i32* %62, i32 4)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert_se(i32 %65)
  %67 = load i64, i64* @verbose, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %3
  %70 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %3
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @sd_event_exit(i32* %72, i32 0)
  ret i32 0
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i64 @sd_dhcp_client_get_lease(i32*, i32**) #1

declare dso_local i64 @sd_dhcp_lease_get_address(i32*, %struct.in_addr*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @sd_dhcp_lease_get_netmask(i32*, %struct.in_addr*) #1

declare dso_local i32 @sd_dhcp_lease_get_router(i32*, %struct.in_addr**) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sd_event_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
