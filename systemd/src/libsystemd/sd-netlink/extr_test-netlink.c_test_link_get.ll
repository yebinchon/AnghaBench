; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_test-netlink.c_test_link_get.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_test-netlink.c_test_link_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_addr = type { i32 }

@RTM_GETLINK = common dso_local global i32 0, align 4
@IFLA_CARRIER = common dso_local global i32 0, align 4
@IFLA_OPERSTATE = common dso_local global i32 0, align 4
@IFLA_LINKMODE = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i32 0, align 4
@IFLA_GROUP = common dso_local global i32 0, align 4
@IFLA_TXQLEN = common dso_local global i32 0, align 4
@IFLA_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@IFLA_NUM_RX_QUEUES = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i32 0, align 4
@IFLA_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_link_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_link_get(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ether_addr, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1500, i32* %7, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @RTM_GETLINK, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @sd_rtnl_message_new_link(i32* %12, i32** %5, i32 %13, i32 %14)
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @IFLA_CARRIER, align 4
  %24 = call i64 @sd_netlink_message_append_u8(i32* %22, i32 %23, i32 0)
  %25 = icmp sge i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @IFLA_OPERSTATE, align 4
  %30 = call i64 @sd_netlink_message_append_u8(i32* %28, i32 %29, i32 0)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @IFLA_LINKMODE, align 4
  %36 = call i64 @sd_netlink_message_append_u8(i32* %34, i32 %35, i32 0)
  %37 = icmp sge i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert_se(i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @IFLA_MTU, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @sd_netlink_message_append_u32(i32* %40, i32 %41, i32 %42)
  %44 = icmp sge i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @IFLA_GROUP, align 4
  %49 = call i64 @sd_netlink_message_append_u32(i32* %47, i32 %48, i32 0)
  %50 = icmp sge i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @IFLA_TXQLEN, align 4
  %55 = call i64 @sd_netlink_message_append_u32(i32* %53, i32 %54, i32 0)
  %56 = icmp sge i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert_se(i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @IFLA_NUM_TX_QUEUES, align 4
  %61 = call i64 @sd_netlink_message_append_u32(i32* %59, i32 %60, i32 0)
  %62 = icmp sge i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert_se(i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @IFLA_NUM_RX_QUEUES, align 4
  %67 = call i64 @sd_netlink_message_append_u32(i32* %65, i32 %66, i32 0)
  %68 = icmp sge i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert_se(i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @sd_netlink_call(i32* %71, i32* %72, i32 -1, i32** %6)
  %74 = icmp eq i32 %73, 1
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert_se(i32 %75)
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @IFLA_IFNAME, align 4
  %79 = call i64 @sd_netlink_message_read_string(i32* %77, i32 %78, i8** %8)
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert_se(i32 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @IFLA_CARRIER, align 4
  %85 = call i64 @sd_netlink_message_read_u8(i32* %83, i32 %84, i32* %9)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert_se(i32 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @IFLA_OPERSTATE, align 4
  %91 = call i64 @sd_netlink_message_read_u8(i32* %89, i32 %90, i32* %9)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert_se(i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* @IFLA_LINKMODE, align 4
  %97 = call i64 @sd_netlink_message_read_u8(i32* %95, i32 %96, i32* %9)
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert_se(i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* @IFLA_MTU, align 4
  %103 = call i64 @sd_netlink_message_read_u32(i32* %101, i32 %102, i32* %10)
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert_se(i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* @IFLA_GROUP, align 4
  %109 = call i64 @sd_netlink_message_read_u32(i32* %107, i32 %108, i32* %10)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert_se(i32 %111)
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* @IFLA_TXQLEN, align 4
  %115 = call i64 @sd_netlink_message_read_u32(i32* %113, i32 %114, i32* %10)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert_se(i32 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* @IFLA_NUM_TX_QUEUES, align 4
  %121 = call i64 @sd_netlink_message_read_u32(i32* %119, i32 %120, i32* %10)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert_se(i32 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* @IFLA_NUM_RX_QUEUES, align 4
  %127 = call i64 @sd_netlink_message_read_u32(i32* %125, i32 %126, i32* %10)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert_se(i32 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* @IFLA_ADDRESS, align 4
  %133 = call i64 @sd_netlink_message_read_ether_addr(i32* %131, i32 %132, %struct.ether_addr* %11)
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert_se(i32 %135)
  %137 = load i32*, i32** %5, align 8
  %138 = call i32* @sd_netlink_message_unref(i32* %137)
  store i32* %138, i32** %5, align 8
  %139 = icmp eq i32* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert_se(i32 %140)
  %142 = load i32*, i32** %6, align 8
  %143 = call i32* @sd_netlink_message_unref(i32* %142)
  store i32* %143, i32** %6, align 8
  %144 = icmp eq i32* %143, null
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert_se(i32 %145)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_rtnl_message_new_link(i32*, i32**, i32, i32) #1

declare dso_local i64 @sd_netlink_message_append_u8(i32*, i32, i32) #1

declare dso_local i64 @sd_netlink_message_append_u32(i32*, i32, i32) #1

declare dso_local i32 @sd_netlink_call(i32*, i32*, i32, i32**) #1

declare dso_local i64 @sd_netlink_message_read_string(i32*, i32, i8**) #1

declare dso_local i64 @sd_netlink_message_read_u8(i32*, i32, i32*) #1

declare dso_local i64 @sd_netlink_message_read_u32(i32*, i32, i32*) #1

declare dso_local i64 @sd_netlink_message_read_ether_addr(i32*, i32, %struct.ether_addr*) #1

declare dso_local i32* @sd_netlink_message_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
