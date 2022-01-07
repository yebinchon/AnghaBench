; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_pid_to_ptr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-process-util.c_test_pid_to_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT16_MAX = common dso_local global i32 0, align 4
@INT16_MIN = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pid_to_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pid_to_ptr() #0 {
  %1 = call i32 @PTR_TO_PID(i32* null)
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i32* @PID_TO_PTR(i32 0)
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i32* @PID_TO_PTR(i32 1)
  %10 = call i32 @PTR_TO_PID(i32* %9)
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = call i32* @PID_TO_PTR(i32 2)
  %15 = call i32 @PTR_TO_PID(i32* %14)
  %16 = icmp eq i32 %15, 2
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = call i32* @PID_TO_PTR(i32 -1)
  %20 = call i32 @PTR_TO_PID(i32* %19)
  %21 = icmp eq i32 %20, -1
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = call i32* @PID_TO_PTR(i32 -2)
  %25 = call i32 @PTR_TO_PID(i32* %24)
  %26 = icmp eq i32 %25, -2
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  %29 = load i32, i32* @INT16_MAX, align 4
  %30 = call i32* @PID_TO_PTR(i32 %29)
  %31 = call i32 @PTR_TO_PID(i32* %30)
  %32 = load i32, i32* @INT16_MAX, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  %36 = load i32, i32* @INT16_MIN, align 4
  %37 = call i32* @PID_TO_PTR(i32 %36)
  %38 = call i32 @PTR_TO_PID(i32* %37)
  %39 = load i32, i32* @INT16_MIN, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @PTR_TO_PID(i32*) #1

declare dso_local i32* @PID_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
