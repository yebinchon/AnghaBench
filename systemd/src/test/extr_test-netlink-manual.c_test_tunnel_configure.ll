; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-netlink-manual.c_test_tunnel_configure.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-netlink-manual.c_test_tunnel_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ipip\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to load module 'ipip'\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sit\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to load module 'sit'\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"not root\00", align 1
@RTM_NEWLINK = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"ipip-tunnel\00", align 1
@IFLA_MTU = common dso_local global i32 0, align 4
@IFLA_LINKINFO = common dso_local global i32 0, align 4
@IFLA_INFO_DATA = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"192.168.21.1\00", align 1
@IFLA_IPTUN_LOCAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"192.168.21.2\00", align 1
@IFLA_IPTUN_REMOTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"sit-tunnel\00", align 1
@IFLA_IPTUN_PROTO = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"192.168.21.3\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"192.168.21.4\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @test_tunnel_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tunnel_configure(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.in_addr, align 4
  %8 = alloca %struct.in_addr, align 4
  store i32* %0, i32** %3, align 8
  %9 = call i32 @load_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @log_tests_skipped_errno(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  br label %188

15:                                               ; preds = %1
  %16 = call i32 @load_module(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @log_tests_skipped_errno(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %188

22:                                               ; preds = %15
  %23 = call i64 (...) @getuid()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @log_tests_skipped(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 %26, i32* %2, align 4
  br label %188

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @RTM_NEWLINK, align 4
  %30 = call i64 @sd_rtnl_message_new_link(i32* %28, i32** %5, i32 %29, i32 0)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @IFLA_IFNAME, align 4
  %39 = call i64 @sd_netlink_message_append_string(i32* %37, i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp sge i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @IFLA_MTU, align 4
  %45 = call i64 @sd_netlink_message_append_u32(i32* %43, i32 %44, i32 1234)
  %46 = icmp sge i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_se(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @IFLA_LINKINFO, align 4
  %51 = call i64 @sd_netlink_message_open_container(i32* %49, i32 %50)
  %52 = icmp sge i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_se(i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @IFLA_INFO_DATA, align 4
  %57 = call i64 @sd_netlink_message_open_container_union(i32* %55, i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = icmp sge i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert_se(i32 %59)
  %61 = load i32, i32* @AF_INET, align 4
  %62 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %63 = call i32 @inet_pton(i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @IFLA_IPTUN_LOCAL, align 4
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @sd_netlink_message_append_u32(i32* %64, i32 %65, i32 %67)
  %69 = icmp sge i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert_se(i32 %70)
  %72 = load i32, i32* @AF_INET, align 4
  %73 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %74 = call i32 @inet_pton(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @IFLA_IPTUN_REMOTE, align 4
  %77 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @sd_netlink_message_append_u32(i32* %75, i32 %76, i32 %78)
  %80 = icmp sge i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert_se(i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = call i64 @sd_netlink_message_close_container(i32* %83)
  %85 = icmp sge i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert_se(i32 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i64 @sd_netlink_message_close_container(i32* %88)
  %90 = icmp sge i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert_se(i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @sd_netlink_call(i32* %93, i32* %94, i32 -1, i32 0)
  %96 = icmp eq i32 %95, 1
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert_se(i32 %97)
  %99 = load i32*, i32** %5, align 8
  %100 = call i32* @sd_netlink_message_unref(i32* %99)
  store i32* %100, i32** %5, align 8
  %101 = icmp eq i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert_se(i32 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* @RTM_NEWLINK, align 4
  %106 = call i64 @sd_rtnl_message_new_link(i32* %104, i32** %6, i32 %105, i32 0)
  %107 = icmp sge i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert_se(i32 %108)
  %110 = load i32*, i32** %6, align 8
  %111 = ptrtoint i32* %110 to i32
  %112 = call i32 @assert_se(i32 %111)
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* @IFLA_IFNAME, align 4
  %115 = call i64 @sd_netlink_message_append_string(i32* %113, i32 %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %116 = icmp sge i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert_se(i32 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* @IFLA_MTU, align 4
  %121 = call i64 @sd_netlink_message_append_u32(i32* %119, i32 %120, i32 1234)
  %122 = icmp sge i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert_se(i32 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* @IFLA_LINKINFO, align 4
  %127 = call i64 @sd_netlink_message_open_container(i32* %125, i32 %126)
  %128 = icmp sge i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert_se(i32 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* @IFLA_INFO_DATA, align 4
  %133 = call i64 @sd_netlink_message_open_container_union(i32* %131, i32 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %134 = icmp sge i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert_se(i32 %135)
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @IFLA_IPTUN_PROTO, align 4
  %139 = load i32, i32* @IPPROTO_IPIP, align 4
  %140 = call i64 @sd_netlink_message_append_u8(i32* %137, i32 %138, i32 %139)
  %141 = icmp sge i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert_se(i32 %142)
  %144 = load i32, i32* @AF_INET, align 4
  %145 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %146 = call i32 @inet_pton(i32 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %145)
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* @IFLA_IPTUN_LOCAL, align 4
  %149 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %7, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @sd_netlink_message_append_u32(i32* %147, i32 %148, i32 %150)
  %152 = icmp sge i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert_se(i32 %153)
  %155 = load i32, i32* @AF_INET, align 4
  %156 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %157 = call i32 @inet_pton(i32 %155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32* %156)
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* @IFLA_IPTUN_REMOTE, align 4
  %160 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @sd_netlink_message_append_u32(i32* %158, i32 %159, i32 %161)
  %163 = icmp sge i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert_se(i32 %164)
  %166 = load i32*, i32** %6, align 8
  %167 = call i64 @sd_netlink_message_close_container(i32* %166)
  %168 = icmp sge i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert_se(i32 %169)
  %171 = load i32*, i32** %6, align 8
  %172 = call i64 @sd_netlink_message_close_container(i32* %171)
  %173 = icmp sge i64 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert_se(i32 %174)
  %176 = load i32*, i32** %3, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @sd_netlink_call(i32* %176, i32* %177, i32 -1, i32 0)
  %179 = icmp eq i32 %178, 1
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert_se(i32 %180)
  %182 = load i32*, i32** %6, align 8
  %183 = call i32* @sd_netlink_message_unref(i32* %182)
  store i32* %183, i32** %6, align 8
  %184 = icmp eq i32* %183, null
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert_se(i32 %185)
  %187 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %27, %25, %19, %12
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @load_module(i8*) #1

declare dso_local i32 @log_tests_skipped_errno(i32, i8*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @log_tests_skipped(i8*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_rtnl_message_new_link(i32*, i32**, i32, i32) #1

declare dso_local i64 @sd_netlink_message_append_string(i32*, i32, i8*) #1

declare dso_local i64 @sd_netlink_message_append_u32(i32*, i32, i32) #1

declare dso_local i64 @sd_netlink_message_open_container(i32*, i32) #1

declare dso_local i64 @sd_netlink_message_open_container_union(i32*, i32, i8*) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i64 @sd_netlink_message_close_container(i32*) #1

declare dso_local i32 @sd_netlink_call(i32*, i32*, i32, i32) #1

declare dso_local i32* @sd_netlink_message_unref(i32*) #1

declare dso_local i64 @sd_netlink_message_append_u8(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
