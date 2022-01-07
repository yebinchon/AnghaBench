; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_misc.c_uu_set_error.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_misc.c_uu_set_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_uu_main_thread = common dso_local global i64 0, align 8
@_uu_main_error = common dso_local global i64 0, align 8
@uu_error_key_setup = common dso_local global i32 0, align 4
@uu_key_lock = common dso_local global i32 0, align 4
@uu_error_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uu_set_error(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @_uu_main_thread, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  store i64 %6, i64* @_uu_main_error, align 8
  br label %30

7:                                                ; preds = %1
  %8 = load i32, i32* @uu_error_key_setup, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = call i32 @pthread_mutex_lock(i32* @uu_key_lock)
  %12 = load i32, i32* @uu_error_key_setup, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = call i64 @pthread_key_create(i32* @uu_error_key, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 -1, i32* @uu_error_key_setup, align 4
  br label %19

18:                                               ; preds = %14
  store i32 1, i32* @uu_error_key_setup, align 4
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %10
  %21 = call i32 @pthread_mutex_unlock(i32* @uu_key_lock)
  br label %22

22:                                               ; preds = %20, %7
  %23 = load i32, i32* @uu_error_key_setup, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @uu_error_key, align 4
  %27 = load i64, i64* %2, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @pthread_setspecific(i32 %26, i8* %28)
  br label %30

30:                                               ; preds = %5, %25, %22
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_key_create(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_setspecific(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
