; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_mask_supported.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-cgroup-util.c_test_mask_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_CGROUP_CONTROLLER_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"'%s' is supported: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mask_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mask_supported() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 @cg_mask_supported(i32* %1)
  %4 = icmp sge i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert_se(i32 %5)
  store i64 0, i64* %2, align 8
  br label %7

7:                                                ; preds = %20, %0
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @_CGROUP_CONTROLLER_MAX, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = call i8* @cgroup_controller_to_string(i64 %12)
  %14 = load i32, i32* %1, align 4
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @CGROUP_CONTROLLER_TO_MASK(i64 %15)
  %17 = and i32 %14, %16
  %18 = call i8* @yes_no(i32 %17)
  %19 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %18)
  br label %20

20:                                               ; preds = %11
  %21 = load i64, i64* %2, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %2, align 8
  br label %7

23:                                               ; preds = %7
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @cg_mask_supported(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @cgroup_controller_to_string(i64) #1

declare dso_local i8* @yes_no(i32) #1

declare dso_local i32 @CGROUP_CONTROLLER_TO_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
