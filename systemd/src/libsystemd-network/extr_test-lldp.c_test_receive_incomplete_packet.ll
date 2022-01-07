; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_test_receive_incomplete_packet.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_test-lldp.c_test_receive_incomplete_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_receive_incomplete_packet.frame = private unnamed_addr constant [31 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 3, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 136, i32 204, i32 2, i32 7, i32 4, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 4, i32 4, i32 5, i32 49, i32 47, i32 51, i32 0, i32 0], align 16
@lldp_handler_calls = common dso_local global i64 0, align 8
@lldp_handler = common dso_local global i32 0, align 4
@test_fd = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_receive_incomplete_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_receive_incomplete_packet(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca [31 x i32], align 16
  store i32* %0, i32** %2, align 8
  %6 = bitcast [31 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([31 x i32]* @__const.test_receive_incomplete_packet.frame to i8*), i64 124, i1 false)
  store i64 0, i64* @lldp_handler_calls, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @lldp_handler, align 4
  %9 = call i64 @start_lldp(i32** %3, i32* %7, i32 %8, i32* null)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = load i32*, i32** @test_fd, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [31 x i32], [31 x i32]* %5, i64 0, i64 0
  %17 = call i32 @write(i32 %15, i32* %16, i32 124)
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 124
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @sd_event_run(i32* %22, i32 0)
  %24 = load i64, i64* @lldp_handler_calls, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @sd_lldp_get_neighbors(i32* %28, i32*** %4)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @stop_lldp(i32* %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @start_lldp(i32**, i32*, i32, i32*) #2

declare dso_local i32 @write(i32, i32*, i32) #2

declare dso_local i32 @sd_event_run(i32*, i32) #2

declare dso_local i64 @sd_lldp_get_neighbors(i32*, i32***) #2

declare dso_local i64 @stop_lldp(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
