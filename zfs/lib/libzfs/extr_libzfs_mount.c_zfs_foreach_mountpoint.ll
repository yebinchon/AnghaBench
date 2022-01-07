; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_foreach_mountpoint.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_mount.c_zfs_foreach_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"ZFS_SERIAL_MOUNT\00", align 1
@mountpoint_cmp = common dso_local global i32 0, align 4
@mount_tp_nthr = common dso_local global i32 0, align 4
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_foreach_mountpoint(i32* %0, i32** %1, i64 %2, i32 (i32*, i8*)* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (i32*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (i32*, i8*)* %3, i32 (i32*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = call i64 (...) @getzoneid()
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = call i32* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32* %22, null
  br label %24

24:                                               ; preds = %21, %6
  %25 = phi i1 [ true, %6 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32**, i32*** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* @mountpoint_cmp, align 4
  %30 = call i32 @qsort(i32** %27, i64 %28, i32 8, i32 %29)
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %10, align 8
  %41 = load i32**, i32*** %8, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 %40(i32* %45, i8* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %34

51:                                               ; preds = %34
  br label %93

52:                                               ; preds = %24
  %53 = load i32, i32* @mount_tp_nthr, align 4
  %54 = call i32* @tpool_create(i32 1, i32 %53, i32 0, i32* null)
  store i32* %54, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %83, %52
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %9, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %55
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* @GLOBAL_ZONEID, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i32**, i32*** %8, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %71 = call i64 @zfs_prop_get_int(i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %88

74:                                               ; preds = %64, %60
  %75 = load i32*, i32** %7, align 8
  %76 = load i32**, i32*** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @zfs_dispatch_mount(i32* %75, i32** %76, i64 %77, i32 %78, i32 (i32*, i8*)* %79, i8* %80, i32* %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32**, i32*** %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @non_descendant_idx(i32** %84, i64 %85, i32 %86)
  store i32 %87, i32* %17, align 4
  br label %55

88:                                               ; preds = %73, %55
  %89 = load i32*, i32** %16, align 8
  %90 = call i32 @tpool_wait(i32* %89)
  %91 = load i32*, i32** %16, align 8
  %92 = call i32 @tpool_destroy(i32* %91)
  br label %93

93:                                               ; preds = %88, %51
  ret void
}

declare dso_local i64 @getzoneid(...) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @qsort(i32**, i64, i32, i32) #1

declare dso_local i32* @tpool_create(i32, i32, i32, i32*) #1

declare dso_local i64 @zfs_prop_get_int(i32*, i32) #1

declare dso_local i32 @zfs_dispatch_mount(i32*, i32**, i64, i32, i32 (i32*, i8*)*, i8*, i32*) #1

declare dso_local i32 @non_descendant_idx(i32**, i64, i32) #1

declare dso_local i32 @tpool_wait(i32*) #1

declare dso_local i32 @tpool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
