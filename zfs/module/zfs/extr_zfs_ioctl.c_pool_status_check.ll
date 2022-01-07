; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_pool_status_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_pool_status_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POOL_NAME = common dso_local global i64 0, align 8
@DATASET_NAME = common dso_local global i64 0, align 8
@ENTITY_NAME = common dso_local global i64 0, align 8
@POOL_CHECK_NONE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@POOL_CHECK_SUSPENDED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@POOL_CHECK_READONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pool_status_check(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @POOL_NAME, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @DATASET_NAME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ENTITY_NAME, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %13, %3
  %22 = phi i1 [ true, %13 ], [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @POOL_CHECK_NONE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %67

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @FTAG, align 4
  %33 = call i32 @spa_open(i8* %31, i32** %8, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @POOL_CHECK_SUSPENDED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @spa_suspended(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %9, align 4
  br label %61

48:                                               ; preds = %41, %36
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @POOL_CHECK_READONLY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @spa_writeable(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @EROFS, align 4
  %59 = call i32 @SET_ERROR(i32 %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %53, %48
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @spa_close(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %30
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %29
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i64 @spa_suspended(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spa_writeable(i32*) #1

declare dso_local i32 @spa_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
