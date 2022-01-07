; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_capability-util.c_capability_update_inherited_set.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_capability-util.c_capability_update_inherited_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_INHERITABLE = common dso_local global i32 0, align 4
@CAP_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @capability_update_inherited_set(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i64, i64* %6, align 8
  %10 = call i64 (...) @cap_last_cap()
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @UINT64_C(i32 1)
  %15 = load i64, i64* %6, align 8
  %16 = shl i64 %14, %15
  %17 = and i64 %13, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CAP_INHERITABLE, align 4
  %23 = load i32, i32* @CAP_SET, align 4
  %24 = call i64 @cap_set_flag(i32 %21, i32 %22, i32 1, i64* %7, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @errno, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %8

34:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @cap_last_cap(...) #1

declare dso_local i64 @UINT64_C(i32) #1

declare dso_local i64 @cap_set_flag(i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
