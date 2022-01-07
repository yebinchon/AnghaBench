; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_adjust_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_adjust_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arc_adjust_lock = common dso_local global i32 0, align 4
@arc_adjust_zthr = common dso_local global i32 0, align 4
@arc_size = common dso_local global i32 0, align 4
@arc_c = common dso_local global i32 0, align 4
@arc_adjust_needed = common dso_local global i32 0, align 4
@arc_adjust_waiters_cv = common dso_local global i32 0, align 4
@arc_need_free = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @arc_adjust_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_adjust_cb(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = call i32 (...) @spl_fstrans_mark()
  store i32 %7, i32* %6, align 4
  %8 = call i64 (...) @arc_adjust()
  store i64 %8, i64* %5, align 8
  %9 = call i32 @mutex_enter(i32* @arc_adjust_lock)
  %10 = load i32, i32* @arc_adjust_zthr, align 4
  %11 = call i32 @zthr_iscancelled(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @arc_c, align 4
  %18 = call i64 @aggsum_compare(i32* @arc_size, i32 %17)
  %19 = icmp sgt i64 %18, 0
  br label %20

20:                                               ; preds = %16, %13, %2
  %21 = phi i1 [ false, %13 ], [ false, %2 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* @arc_adjust_needed, align 4
  %23 = load i32, i32* @arc_adjust_needed, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 @cv_broadcast(i32* @arc_adjust_waiters_cv)
  store i64 0, i64* @arc_need_free, align 8
  br label %27

27:                                               ; preds = %25, %20
  %28 = call i32 @mutex_exit(i32* @arc_adjust_lock)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @spl_fstrans_unmark(i32 %29)
  ret void
}

declare dso_local i32 @spl_fstrans_mark(...) #1

declare dso_local i64 @arc_adjust(...) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @zthr_iscancelled(i32) #1

declare dso_local i64 @aggsum_compare(i32*, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spl_fstrans_unmark(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
