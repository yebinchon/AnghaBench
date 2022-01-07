; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_test_set_ambient_caps.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_test_set_ambient_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PR_CAP_AMBIENT = common dso_local global i32 0, align 4
@PR_CAP_AMBIENT_IS_SET = common dso_local global i32 0, align 4
@CAP_CHOWN = common dso_local global i32 0, align 4
@CAP_INHERITABLE = common dso_local global i32 0, align 4
@CAP_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_ambient_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_ambient_caps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %5 = load i32, i32* @PR_CAP_AMBIENT_IS_SET, align 4
  %6 = load i32, i32* @CAP_CHOWN, align 4
  %7 = call i32 @prctl(i32 %4, i32 %5, i32 %6, i32 0, i32 0)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert_se(i32 %9)
  %11 = call i32 @UINT64_C(i32 1)
  %12 = load i32, i32* @CAP_CHOWN, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @capability_ambient_set_apply(i32 %14, i32 1)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = call i32 (...) @cap_get_proc()
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @CAP_CHOWN, align 4
  %23 = load i32, i32* @CAP_INHERITABLE, align 4
  %24 = call i32 @cap_get_flag(i32 %21, i32 %22, i32 %23, i64* %3)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @CAP_SET, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @cap_free(i32 %34)
  %36 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %37 = load i32, i32* @PR_CAP_AMBIENT_IS_SET, align 4
  %38 = load i32, i32* @CAP_CHOWN, align 4
  %39 = call i32 @prctl(i32 %36, i32 %37, i32 %38, i32 0, i32 0)
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @prctl(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @capability_ambient_set_apply(i32, i32) #1

declare dso_local i32 @cap_get_proc(...) #1

declare dso_local i32 @cap_get_flag(i32, i32, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
