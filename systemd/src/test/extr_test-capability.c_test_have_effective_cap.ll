; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_test_have_effective_cap.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_test_have_effective_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_KILL = common dso_local global i64 0, align 8
@CAP_CHOWN = common dso_local global i64 0, align 8
@test_uid = common dso_local global i64 0, align 8
@test_gid = common dso_local global i64 0, align 8
@test_flags = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_have_effective_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_have_effective_cap() #0 {
  %1 = load i64, i64* @CAP_KILL, align 8
  %2 = call i32 @have_effective_cap(i64 %1)
  %3 = call i32 @assert_se(i32 %2)
  %4 = load i64, i64* @CAP_CHOWN, align 8
  %5 = call i32 @have_effective_cap(i64 %4)
  %6 = call i32 @assert_se(i32 %5)
  %7 = load i64, i64* @test_uid, align 8
  %8 = load i64, i64* @test_gid, align 8
  %9 = load i64, i64* @test_flags, align 8
  %10 = load i64, i64* @CAP_KILL, align 8
  %11 = shl i64 1, %10
  %12 = or i64 %9, %11
  %13 = call i64 @drop_privileges(i64 %7, i64 %8, i64 %12)
  %14 = icmp sge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = call i64 (...) @getuid()
  %18 = load i64, i64* @test_uid, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = call i64 (...) @getgid()
  %23 = load i64, i64* @test_gid, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  %27 = load i64, i64* @CAP_KILL, align 8
  %28 = call i32 @have_effective_cap(i64 %27)
  %29 = call i32 @assert_se(i32 %28)
  %30 = load i64, i64* @CAP_CHOWN, align 8
  %31 = call i32 @have_effective_cap(i64 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @have_effective_cap(i64) #1

declare dso_local i64 @drop_privileges(i64, i64, i64) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @getgid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
