; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_evict_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_evict_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbuf_evict_lock = common dso_local global i32 0, align 4
@callb_generic_cpr = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@dbuf_evict_thread_exit = common dso_local global i64 0, align 8
@dbuf_evict_cv = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dbuf_evict_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbuf_evict_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @callb_generic_cpr, align 4
  %5 = load i32, i32* @FTAG, align 4
  %6 = call i32 @CALLB_CPR_INIT(i32* %3, i32* @dbuf_evict_lock, i32 %4, i32 %5)
  %7 = call i32 @mutex_enter(i32* @dbuf_evict_lock)
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i64, i64* @dbuf_evict_thread_exit, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %22, %12
  %14 = call i64 (...) @dbuf_cache_above_lowater()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @dbuf_evict_thread_exit, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = call i32 @CALLB_CPR_SAFE_BEGIN(i32* %3)
  %24 = call i32 @SEC2NSEC(i32 1)
  %25 = call i32 @MSEC2NSEC(i32 1)
  %26 = call i32 @cv_timedwait_sig_hires(i32* @dbuf_evict_cv, i32* @dbuf_evict_lock, i32 %24, i32 %25, i32 0)
  %27 = call i32 @CALLB_CPR_SAFE_END(i32* %3, i32* @dbuf_evict_lock)
  br label %13

28:                                               ; preds = %20
  %29 = call i32 @mutex_exit(i32* @dbuf_evict_lock)
  br label %30

30:                                               ; preds = %39, %28
  %31 = call i64 (...) @dbuf_cache_above_lowater()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* @dbuf_evict_thread_exit, align 8
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = call i32 (...) @dbuf_evict_one()
  br label %30

41:                                               ; preds = %37
  %42 = call i32 @mutex_enter(i32* @dbuf_evict_lock)
  br label %8

43:                                               ; preds = %8
  %44 = load i64, i64* @B_FALSE, align 8
  store i64 %44, i64* @dbuf_evict_thread_exit, align 8
  %45 = call i32 @cv_broadcast(i32* @dbuf_evict_cv)
  %46 = call i32 @CALLB_CPR_EXIT(i32* %3)
  %47 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local i32 @CALLB_CPR_INIT(i32*, i32*, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @dbuf_cache_above_lowater(...) #1

declare dso_local i32 @CALLB_CPR_SAFE_BEGIN(i32*) #1

declare dso_local i32 @cv_timedwait_sig_hires(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @SEC2NSEC(i32) #1

declare dso_local i32 @MSEC2NSEC(i32) #1

declare dso_local i32 @CALLB_CPR_SAFE_END(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dbuf_evict_one(...) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @CALLB_CPR_EXIT(i32*) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
