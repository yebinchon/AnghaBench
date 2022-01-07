; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_test_last_cap_probe.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-capability.c_test_last_cap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_LAST_CAP = common dso_local global i64 0, align 8
@PR_CAPBSET_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_last_cap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_last_cap_probe() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @CAP_LAST_CAP, align 8
  store i64 %2, i64* %1, align 8
  %3 = load i32, i32* @PR_CAPBSET_READ, align 4
  %4 = load i64, i64* %1, align 8
  %5 = call i64 @prctl(i32 %3, i64 %4)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = add i64 %8, -1
  store i64 %9, i64* %1, align 8
  br label %10

10:                                               ; preds = %20, %7
  %11 = load i64, i64* %1, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* @PR_CAPBSET_READ, align 4
  %15 = load i64, i64* %1, align 8
  %16 = call i64 @prctl(i32 %14, i64 %15)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %23

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %1, align 8
  br label %10

23:                                               ; preds = %18, %10
  br label %37

24:                                               ; preds = %0
  br label %25

25:                                               ; preds = %33, %24
  %26 = load i32, i32* @PR_CAPBSET_READ, align 4
  %27 = load i64, i64* %1, align 8
  %28 = add i64 %27, 1
  %29 = call i64 @prctl(i32 %26, i64 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %36

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %1, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %1, align 8
  br label %25

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i64, i64* %1, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i64, i64* %1, align 8
  %43 = call i64 (...) @cap_last_cap()
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  ret void
}

declare dso_local i64 @prctl(i32, i64) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @cap_last_cap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
