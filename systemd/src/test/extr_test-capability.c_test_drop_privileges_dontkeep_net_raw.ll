; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_test_drop_privileges_dontkeep_net_raw.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_test_drop_privileges_dontkeep_net_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@test_uid = common dso_local global i64 0, align 8
@test_gid = common dso_local global i64 0, align 8
@test_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_drop_privileges_dontkeep_net_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_drop_privileges_dontkeep_net_raw() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @AF_INET, align 4
  %3 = load i32, i32* @SOCK_RAW, align 4
  %4 = load i32, i32* @IPPROTO_UDP, align 4
  %5 = call i32 @socket(i32 %2, i32 %3, i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp sge i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @safe_close(i32 %10)
  %12 = load i64, i64* @test_uid, align 8
  %13 = load i64, i64* @test_gid, align 8
  %14 = load i32, i32* @test_flags, align 4
  %15 = call i64 @drop_privileges(i64 %12, i64 %13, i32 %14)
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = call i64 (...) @getuid()
  %20 = load i64, i64* @test_uid, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = call i64 (...) @getgid()
  %25 = load i64, i64* @test_gid, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = call i32 (...) @show_capabilities()
  %30 = load i32, i32* @AF_INET, align 4
  %31 = load i32, i32* @SOCK_RAW, align 4
  %32 = load i32, i32* @IPPROTO_UDP, align 4
  %33 = call i32 @socket(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i64 @drop_privileges(i64, i64, i32) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @getgid(...) #1

declare dso_local i32 @show_capabilities(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
