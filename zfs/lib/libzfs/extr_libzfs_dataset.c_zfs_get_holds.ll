; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_get_holds.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_get_holds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot get holds for '%s'\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pool must be upgraded\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@EZFS_NOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_get_holds(%struct.TYPE_3__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32**, i32*** %4, align 8
  %12 = call i32 @lzc_get_holds(i32 %10, i32** %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %20 = load i32, i32* @TEXT_DOMAIN, align 4
  %21 = call i8* @dgettext(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @snprintf(i8* %19, i32 1024, i8* %21, i32 %24)
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %46 [
    i32 128, label %27
    i32 130, label %36
    i32 129, label %41
  ]

27:                                               ; preds = %15
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @TEXT_DOMAIN, align 4
  %30 = call i8* @dgettext(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @zfs_error_aux(i32* %28, i8* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @EZFS_BADVERSION, align 4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %35 = call i32 @zfs_error(i32* %32, i32 %33, i8* %34)
  store i32 %35, i32* %5, align 4
  br label %51

36:                                               ; preds = %15
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @EZFS_BADTYPE, align 4
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %40 = call i32 @zfs_error(i32* %37, i32 %38, i8* %39)
  store i32 %40, i32* %5, align 4
  br label %51

41:                                               ; preds = %15
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @EZFS_NOENT, align 4
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %45 = call i32 @zfs_error(i32* %42, i32 %43, i8* %44)
  store i32 %45, i32* %5, align 4
  br label %51

46:                                               ; preds = %15
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @errno, align 4
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %50 = call i32 @zfs_standard_error_fmt(i32* %47, i32 %48, i8* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %41, %36, %27
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @lzc_get_holds(i32, i32**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i32 @zfs_standard_error_fmt(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
