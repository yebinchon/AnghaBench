; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-acd.c_client_run.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-acd.c_client_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.ether_addr = type { i32 }

@acd_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"starting IPv4ACD client\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.in_addr*, %struct.ether_addr*, i32*)* @client_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_run(i32 %0, %struct.in_addr* %1, %struct.ether_addr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.ether_addr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.in_addr* %1, %struct.in_addr** %6, align 8
  store %struct.ether_addr* %2, %struct.ether_addr** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = call i64 @sd_ipv4acd_new(i32** %9)
  %11 = icmp sge i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32*, i32** %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @sd_ipv4acd_attach_event(i32* %14, i32* %15, i32 0)
  %17 = icmp sge i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @sd_ipv4acd_set_ifindex(i32* %20, i32 %21)
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.ether_addr*, %struct.ether_addr** %7, align 8
  %28 = call i64 @sd_ipv4acd_set_mac(i32* %26, %struct.ether_addr* %27)
  %29 = icmp sge i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %34 = call i64 @sd_ipv4acd_set_address(i32* %32, %struct.in_addr* %33)
  %35 = icmp sge i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @acd_handler, align 4
  %40 = call i64 @sd_ipv4acd_set_callback(i32* %38, i32 %39, i32* null)
  %41 = icmp sge i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert_se(i32 %42)
  %44 = call i32 @log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load i32*, i32** %9, align 8
  %46 = call i64 @sd_ipv4acd_start(i32* %45)
  %47 = icmp sge i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @sd_event_loop(i32* %50)
  %52 = icmp sge i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_se(i32 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @sd_ipv4acd_unref(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert_se(i32 %59)
  %61 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %61
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_ipv4acd_new(i32**) #1

declare dso_local i64 @sd_ipv4acd_attach_event(i32*, i32*, i32) #1

declare dso_local i64 @sd_ipv4acd_set_ifindex(i32*, i32) #1

declare dso_local i64 @sd_ipv4acd_set_mac(i32*, %struct.ether_addr*) #1

declare dso_local i64 @sd_ipv4acd_set_address(i32*, %struct.in_addr*) #1

declare dso_local i64 @sd_ipv4acd_set_callback(i32*, i32, i32*) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i64 @sd_ipv4acd_start(i32*) #1

declare dso_local i64 @sd_event_loop(i32*) #1

declare dso_local i32 @sd_ipv4acd_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
