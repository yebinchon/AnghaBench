; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_test_receive_basic_packet.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_test_receive_basic_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_receive_basic_packet.frame = internal constant [52 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 3, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 136, i32 204, i32 2, i32 7, i32 4, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 4, i32 4, i32 5, i32 49, i32 47, i32 51, i32 6, i32 2, i32 0, i32 120, i32 8, i32 4, i32 80, i32 111, i32 114, i32 116, i32 10, i32 3, i32 83, i32 89, i32 83, i32 12, i32 4, i32 102, i32 111, i32 111, i32 0, i32 0, i32 0], align 16
@lldp_handler_calls = common dso_local global i32 0, align 4
@lldp_handler = common dso_local global i32 0, align 4
@test_fd = common dso_local global i32* null, align 8
@SD_LLDP_CHASSIS_SUBTYPE_MAC_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"\00\01\02\03\04\05\00", align 1
@SD_LLDP_PORT_SUBTYPE_INTERFACE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"1/3\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Port\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SYS\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_receive_basic_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_receive_basic_packet(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* @lldp_handler_calls, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @lldp_handler, align 4
  %12 = call i64 @start_lldp(i32** %3, i32* %10, i32 %11, i32* null)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert_se(i32 %14)
  %16 = load i32*, i32** @test_fd, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @write(i32 %18, i32* getelementptr inbounds ([52 x i32], [52 x i32]* @test_receive_basic_packet.frame, i64 0, i64 0), i32 208)
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 208
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @sd_event_run(i32* %24, i32 0)
  %26 = load i32, i32* @lldp_handler_calls, align 4
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert_se(i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @sd_lldp_get_neighbors(i32* %30, i32*** %4)
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert_se(i32 %33)
  %35 = load i32**, i32*** %4, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @sd_lldp_neighbor_get_chassis_id(i32* %37, i32* %5, i8** %6, i64* %8)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SD_LLDP_CHASSIS_SUBTYPE_MAC_ADDRESS, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @ETH_ALEN, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert_se(i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* @ETH_ALEN, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_se(i32 %58)
  %60 = load i32**, i32*** %4, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @sd_lldp_neighbor_get_port_id(i32* %62, i32* %5, i8** %6, i64* %8)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert_se(i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @SD_LLDP_PORT_SUBTYPE_INTERFACE_NAME, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert_se(i32 %70)
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %72, 3
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert_se(i32 %74)
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @memcmp(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert_se(i32 %80)
  %82 = load i32**, i32*** %4, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @sd_lldp_neighbor_get_port_description(i32* %84, i8** %9)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert_se(i32 %87)
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @streq(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %91 = call i32 @assert_se(i32 %90)
  %92 = load i32**, i32*** %4, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i64 @sd_lldp_neighbor_get_system_name(i32* %94, i8** %9)
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert_se(i32 %97)
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @streq(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %101 = call i32 @assert_se(i32 %100)
  %102 = load i32**, i32*** %4, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i64 @sd_lldp_neighbor_get_system_description(i32* %104, i8** %9)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert_se(i32 %107)
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @streq(i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %111 = call i32 @assert_se(i32 %110)
  %112 = load i32**, i32*** %4, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @sd_lldp_neighbor_get_ttl(i32* %114, i32* %7)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert_se(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %119, 120
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert_se(i32 %121)
  %123 = load i32**, i32*** %4, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @sd_lldp_neighbor_unref(i32* %125)
  %127 = load i32**, i32*** %4, align 8
  %128 = call i32 @free(i32** %127)
  %129 = load i32*, i32** %3, align 8
  %130 = call i64 @stop_lldp(i32* %129)
  %131 = icmp eq i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert_se(i32 %132)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @start_lldp(i32**, i32*, i32, i32*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @sd_event_run(i32*, i32) #1

declare dso_local i32 @sd_lldp_get_neighbors(i32*, i32***) #1

declare dso_local i64 @sd_lldp_neighbor_get_chassis_id(i32*, i32*, i8**, i64*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @sd_lldp_neighbor_get_port_id(i32*, i32*, i8**, i64*) #1

declare dso_local i64 @sd_lldp_neighbor_get_port_description(i32*, i8**) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i64 @sd_lldp_neighbor_get_system_name(i32*, i8**) #1

declare dso_local i64 @sd_lldp_neighbor_get_system_description(i32*, i8**) #1

declare dso_local i64 @sd_lldp_neighbor_get_ttl(i32*, i32*) #1

declare dso_local i32 @sd_lldp_neighbor_unref(i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i64 @stop_lldp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
