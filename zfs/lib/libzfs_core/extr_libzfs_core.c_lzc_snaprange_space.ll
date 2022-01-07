; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_snaprange_space.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_snaprange_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"firstsnap\00", align 1
@ZFS_IOC_SPACE_SNAPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"used\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzc_snaprange_space(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = trunc i64 %16 to i32
  %21 = call i32 @strlcpy(i8* %18, i8* %19, i32 %20)
  %22 = call i8* @strchr(i8* %18, i8 signext 64)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %49

27:                                               ; preds = %3
  %28 = load i8*, i8** %13, align 8
  store i8 0, i8* %28, align 1
  %29 = call i32* (...) @fnvlist_alloc()
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @fnvlist_add_string(i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @ZFS_IOC_SPACE_SNAPS, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @lzc_ioctl(i32 %33, i8* %34, i32* %35, i32** %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @nvlist_free(i32* %37)
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @fnvlist_lookup_uint64(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %27
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @fnvlist_free(i32* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %49

49:                                               ; preds = %45, %25
  %50 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i32 @lzc_ioctl(i32, i8*, i32*, i32**) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @fnvlist_lookup_uint64(i32*, i8*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
