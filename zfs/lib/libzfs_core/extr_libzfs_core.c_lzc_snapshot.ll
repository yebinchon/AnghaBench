; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_snapshot.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@ZFS_IOC_SNAPSHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzc_snapshot(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %14 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32**, i32*** %7, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @nvlist_next_nvpair(i32* %19, i32* null)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %49

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @nvpair_name(i32* %25)
  %27 = trunc i64 %15 to i32
  %28 = call i32 @strlcpy(i8* %17, i32 %26, i32 %27)
  %29 = call i64 @strcspn(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = getelementptr inbounds i8, i8* %17, i64 %29
  store i8 0, i8* %30, align 1
  %31 = call i32* (...) @fnvlist_alloc()
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @fnvlist_add_nvlist(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @fnvlist_add_nvlist(i32* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %39)
  br label %41

41:                                               ; preds = %37, %24
  %42 = load i32, i32* @ZFS_IOC_SNAPSHOT, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32**, i32*** %7, align 8
  %45 = call i32 @lzc_ioctl(i32 %42, i8* %17, i32* %43, i32** %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @nvlist_free(i32* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %49

49:                                               ; preds = %41, %23
  %50 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @nvpair_name(i32*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #2

declare dso_local i32 @lzc_ioctl(i32, i8*, i32*, i32**) #2

declare dso_local i32 @nvlist_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
