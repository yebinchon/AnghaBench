; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmShmAssertLock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_shared.c_lsmShmAssertLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSM_LOCK_NREADER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"bad eOp value passed to lsmShmAssertLock()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmShmAssertLock(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* @LSM_LOCK_NREADER, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i32 @LSM_LOCK_READER(i64 %14)
  %16 = icmp sle i32 %12, %15
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ false, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 16
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 130
  br label %33

33:                                               ; preds = %30, %27, %17
  %34 = phi i1 [ true, %27 ], [ true, %17 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @shmLockType(i32* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %53 [
    i32 128, label %41
    i32 129, label %45
    i32 130, label %49
  ]

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 128
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  br label %55

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 128
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %55

49:                                               ; preds = %33
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 130
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  br label %55

53:                                               ; preds = %33
  %54 = call i32 @assert(i32 0)
  br label %55

55:                                               ; preds = %53, %49, %45, %41
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LSM_LOCK_READER(i64) #1

declare dso_local i32 @shmLockType(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
