; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_reduce_target_size.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_reduce_target_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arc_size = common dso_local global i32 0, align 4
@arc_c = common dso_local global i32 0, align 4
@arc_c_min = common dso_local global i64 0, align 8
@arc_p = common dso_local global i32 0, align 4
@arc_shrink_shift = common dso_local global i32 0, align 4
@arc_adjust_lock = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@arc_adjust_needed = common dso_local global i32 0, align 4
@arc_adjust_zthr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_reduce_target_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i64 @aggsum_value(i32* @arc_size)
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @arc_c, align 4
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %2, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %2, align 8
  %14 = sub nsw i64 %12, %13
  %15 = load i64, i64* @arc_c_min, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %2, align 8
  %20 = sub nsw i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* @arc_c, align 4
  %22 = load i32, i32* @arc_p, align 4
  %23 = load i32, i32* @arc_shrink_shift, align 4
  %24 = ashr i32 %22, %23
  %25 = sub nsw i32 0, %24
  %26 = call i32 @atomic_add_64(i32* @arc_p, i32 %25)
  %27 = load i32, i32* @arc_p, align 4
  %28 = load i32, i32* @arc_c, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @arc_c, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* @arc_p, align 4
  br label %33

33:                                               ; preds = %30, %17
  %34 = load i32, i32* @arc_c, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @arc_c_min, align 8
  %37 = icmp sge i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32, i32* @arc_p, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp sge i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  br label %48

45:                                               ; preds = %11, %1
  %46 = load i64, i64* @arc_c_min, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* @arc_c, align 4
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i64, i64* %3, align 8
  %50 = load i32, i32* @arc_c, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp sgt i64 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = call i32 @mutex_enter(i32* @arc_adjust_lock)
  %55 = load i32, i32* @B_TRUE, align 4
  store i32 %55, i32* @arc_adjust_needed, align 4
  %56 = call i32 @mutex_exit(i32* @arc_adjust_lock)
  %57 = load i32, i32* @arc_adjust_zthr, align 4
  %58 = call i32 @zthr_wakeup(i32 %57)
  br label %59

59:                                               ; preds = %53, %48
  ret void
}

declare dso_local i64 @aggsum_value(i32*) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zthr_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
