; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_test-netlink.c_test_address_get.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_test-netlink.c_test_address_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.ifa_cacheinfo = type { i32 }

@RTM_GETADDR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i32 0, align 4
@IFA_LABEL = common dso_local global i32 0, align 4
@IFA_CACHEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_address_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_address_get(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.ifa_cacheinfo, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @RTM_GETADDR, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AF_INET, align 4
  %14 = call i64 @sd_rtnl_message_new_addr(i32* %10, i32** %5, i32 %11, i32 %12, i32 %13)
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @sd_netlink_call(i32* %21, i32* %22, i32 -1, i32** %6)
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @IFA_LOCAL, align 4
  %29 = call i64 @sd_netlink_message_read_in_addr(i32* %27, i32 %28, %struct.in_addr* %7)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @IFA_ADDRESS, align 4
  %35 = call i64 @sd_netlink_message_read_in_addr(i32* %33, i32 %34, %struct.in_addr* %7)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @IFA_LABEL, align 4
  %41 = call i64 @sd_netlink_message_read_string(i32* %39, i32 %40, i8** %9)
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert_se(i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @IFA_CACHEINFO, align 4
  %47 = call i64 @sd_netlink_message_read_cache_info(i32* %45, i32 %46, %struct.ifa_cacheinfo* %8)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert_se(i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32* @sd_netlink_message_unref(i32* %51)
  store i32* %52, i32** %5, align 8
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_se(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32* @sd_netlink_message_unref(i32* %56)
  store i32* %57, i32** %6, align 8
  %58 = icmp eq i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert_se(i32 %59)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_rtnl_message_new_addr(i32*, i32**, i32, i32, i32) #1

declare dso_local i32 @sd_netlink_call(i32*, i32*, i32, i32**) #1

declare dso_local i64 @sd_netlink_message_read_in_addr(i32*, i32, %struct.in_addr*) #1

declare dso_local i64 @sd_netlink_message_read_string(i32*, i32, i8**) #1

declare dso_local i64 @sd_netlink_message_read_cache_info(i32*, i32, %struct.ifa_cacheinfo*) #1

declare dso_local i32* @sd_netlink_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
