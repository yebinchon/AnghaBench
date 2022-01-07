; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-stat-util.c_test_device_major_minor_valid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-stat-util.c_test_device_major_minor_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT32_MAX = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_device_major_minor_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_device_major_minor_valid() #0 {
  %1 = call i32 @assert_cc(i32 1)
  %2 = call i32 @DEVICE_MAJOR_VALID(i32 0)
  %3 = call i32 @assert_se(i32 %2)
  %4 = call i32 @DEVICE_MINOR_VALID(i32 0)
  %5 = call i32 @assert_se(i32 %4)
  %6 = call i32 @DEVICE_MAJOR_VALID(i32 1)
  %7 = call i32 @assert_se(i32 %6)
  %8 = call i32 @DEVICE_MINOR_VALID(i32 1)
  %9 = call i32 @assert_se(i32 %8)
  %10 = call i32 @DEVICE_MAJOR_VALID(i32 -1)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = call i32 @DEVICE_MINOR_VALID(i32 -1)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = call i32 @DEVICE_MAJOR_VALID(i32 1024)
  %21 = call i32 @assert_se(i32 %20)
  %22 = call i32 @DEVICE_MINOR_VALID(i32 1024)
  %23 = call i32 @assert_se(i32 %22)
  %24 = call i32 @DEVICE_MAJOR_VALID(i32 4095)
  %25 = call i32 @assert_se(i32 %24)
  %26 = call i32 @DEVICE_MINOR_VALID(i32 1048575)
  %27 = call i32 @assert_se(i32 %26)
  %28 = call i32 @DEVICE_MAJOR_VALID(i32 4096)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = call i32 @DEVICE_MINOR_VALID(i32 1048576)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = call i32 @DEVICE_MAJOR_VALID(i32 33554432)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = call i32 @DEVICE_MINOR_VALID(i32 33554432)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert_se(i32 %46)
  %48 = load i32, i32* @UINT32_MAX, align 4
  %49 = call i32 @DEVICE_MAJOR_VALID(i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = load i32, i32* @UINT32_MAX, align 4
  %55 = call i32 @DEVICE_MINOR_VALID(i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_se(i32 %58)
  %60 = load i32, i32* @UINT64_MAX, align 4
  %61 = call i32 @DEVICE_MAJOR_VALID(i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert_se(i32 %64)
  %66 = load i32, i32* @UINT64_MAX, align 4
  %67 = call i32 @DEVICE_MINOR_VALID(i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert_se(i32 %70)
  %72 = call i32 @major(i32 0)
  %73 = call i32 @DEVICE_MAJOR_VALID(i32 %72)
  %74 = call i32 @assert_se(i32 %73)
  %75 = call i32 @minor(i32 0)
  %76 = call i32 @DEVICE_MINOR_VALID(i32 %75)
  %77 = call i32 @assert_se(i32 %76)
  ret void
}

declare dso_local i32 @assert_cc(i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @DEVICE_MAJOR_VALID(i32) #1

declare dso_local i32 @DEVICE_MINOR_VALID(i32) #1

declare dso_local i32 @major(i32) #1

declare dso_local i32 @minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
