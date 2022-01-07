; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_check_volblocksize.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_check_volblocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPA_OLD_MAXBLOCKSIZE = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURE_LARGE_BLOCKS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@zfs_max_recordsize = common dso_local global i64 0, align 8
@EDOM = common dso_local global i32 0, align 4
@SPA_MINBLOCKSIZE = common dso_local global i64 0, align 8
@SPA_MAXBLOCKSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_check_volblocksize(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @SPA_OLD_MAXBLOCKSIZE, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @FTAG, align 4
  %14 = call i32 @spa_open(i8* %12, i32** %6, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %56

18:                                               ; preds = %11
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @SPA_FEATURE_LARGE_BLOCKS, align 4
  %21 = call i32 @spa_feature_is_enabled(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @FTAG, align 4
  %26 = call i32 @spa_close(i32* %24, i32 %25)
  %27 = load i32, i32* @ENOTSUP, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %18
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @zfs_max_recordsize, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EDOM, align 4
  %35 = call i32 @SET_ERROR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %56

36:                                               ; preds = %29
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @spa_close(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %2
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @SPA_MINBLOCKSIZE, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @SPA_MAXBLOCKSIZE, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @ISP2(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48, %44, %40
  %53 = load i32, i32* @EDOM, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %33, %23, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i32 @spa_feature_is_enabled(i32*, i32) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ISP2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
