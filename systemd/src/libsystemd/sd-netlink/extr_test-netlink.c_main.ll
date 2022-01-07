; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_test-netlink.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_test-netlink.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@RTM_GETLINK = common dso_local global i64 0, align 8
@IFLA_IFNAME = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %8 = call i32 (...) @test_match()
  %9 = call i32 (...) @test_multiple()
  %10 = call i64 @sd_netlink_open(i32** %2)
  %11 = icmp sge i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = ptrtoint i32* %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @test_route(i32* %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @test_message(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @test_container(i32* %21)
  %23 = call i32 (...) @test_array()
  %24 = call i64 @if_nametoindex(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert_se(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @test_async(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @test_slot_set(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @test_async_destroy_callback(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @test_pipe(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @test_event_loop(i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @test_link_configure(i32* %40, i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @test_get_addresses(i32* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @test_message_link_bridge(i32* %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i64, i64* @RTM_GETLINK, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @sd_rtnl_message_new_link(i32* %47, i32** %3, i64 %48, i32 %49)
  %51 = icmp sge i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = ptrtoint i32* %54 to i32
  %56 = call i32 @assert_se(i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @sd_netlink_message_get_type(i32* %57, i64* %7)
  %59 = icmp sge i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @RTM_GETLINK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert_se(i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @IFLA_IFNAME, align 4
  %69 = call i32 @sd_netlink_message_read_string(i32* %67, i32 %68, i8** %5)
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert_se(i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @sd_netlink_call(i32* %75, i32* %76, i32 0, i32** %4)
  %78 = icmp eq i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert_se(i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i64 @sd_netlink_message_get_type(i32* %81, i64* %7)
  %83 = icmp sge i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert_se(i32 %84)
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @RTM_NEWLINK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert_se(i32 %89)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32* @sd_netlink_message_unref(i32* %91)
  store i32* %92, i32** %4, align 8
  %93 = icmp eq i32* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert_se(i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @sd_netlink_call(i32* %96, i32* %97, i32 -1, i32** %4)
  %99 = load i32, i32* @EPERM, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert_se(i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = call i32* @sd_netlink_message_unref(i32* %104)
  store i32* %105, i32** %3, align 8
  %106 = icmp eq i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert_se(i32 %107)
  %109 = load i32*, i32** %4, align 8
  %110 = call i32* @sd_netlink_message_unref(i32* %109)
  store i32* %110, i32** %4, align 8
  %111 = icmp eq i32* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert_se(i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @test_link_get(i32* %114, i32 %115)
  %117 = load i32*, i32** %2, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @test_address_get(i32* %117, i32 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32* @sd_netlink_message_unref(i32* %120)
  store i32* %121, i32** %3, align 8
  %122 = icmp eq i32* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert_se(i32 %123)
  %125 = load i32*, i32** %4, align 8
  %126 = call i32* @sd_netlink_message_unref(i32* %125)
  store i32* %126, i32** %4, align 8
  %127 = icmp eq i32* %126, null
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert_se(i32 %128)
  %130 = load i32*, i32** %2, align 8
  %131 = call i32* @sd_netlink_unref(i32* %130)
  store i32* %131, i32** %2, align 8
  %132 = icmp eq i32* %131, null
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert_se(i32 %133)
  %135 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %135
}

declare dso_local i32 @test_match(...) #1

declare dso_local i32 @test_multiple(...) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_netlink_open(i32**) #1

declare dso_local i32 @test_route(i32*) #1

declare dso_local i32 @test_message(i32*) #1

declare dso_local i32 @test_container(i32*) #1

declare dso_local i32 @test_array(...) #1

declare dso_local i64 @if_nametoindex(i8*) #1

declare dso_local i32 @test_async(i32) #1

declare dso_local i32 @test_slot_set(i32) #1

declare dso_local i32 @test_async_destroy_callback(i32) #1

declare dso_local i32 @test_pipe(i32) #1

declare dso_local i32 @test_event_loop(i32) #1

declare dso_local i32 @test_link_configure(i32*, i32) #1

declare dso_local i32 @test_get_addresses(i32*) #1

declare dso_local i32 @test_message_link_bridge(i32*) #1

declare dso_local i64 @sd_rtnl_message_new_link(i32*, i32**, i64, i32) #1

declare dso_local i64 @sd_netlink_message_get_type(i32*, i64*) #1

declare dso_local i32 @sd_netlink_message_read_string(i32*, i32, i8**) #1

declare dso_local i32 @sd_netlink_call(i32*, i32*, i32, i32**) #1

declare dso_local i32* @sd_netlink_message_unref(i32*) #1

declare dso_local i32 @test_link_get(i32*, i32) #1

declare dso_local i32 @test_address_get(i32*, i32) #1

declare dso_local i32* @sd_netlink_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
