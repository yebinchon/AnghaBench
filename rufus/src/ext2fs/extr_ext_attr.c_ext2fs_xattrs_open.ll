; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattrs_open.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_ext2fs_xattrs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ext2_xattr_handle = type { i32, %struct.TYPE_3__*, i32, i64, i32, i32 }

@EXT2_ET_MISSING_EA_FEATURE = common dso_local global i64 0, align 8
@EXT2_ET_MAGIC_EA_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_xattrs_open(%struct.TYPE_3__* %0, i32 %1, %struct.ext2_xattr_handle** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_xattr_handle**, align 8
  %8 = alloca %struct.ext2_xattr_handle*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_xattr_handle** %2, %struct.ext2_xattr_handle*** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ext2fs_has_feature_xattr(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ext2fs_has_feature_inline_data(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* @EXT2_ET_MISSING_EA_FEATURE, align 8
  store i64 %22, i64* %4, align 8
  br label %57

23:                                               ; preds = %15, %3
  %24 = call i64 @ext2fs_get_memzero(i32 40, %struct.ext2_xattr_handle** %8)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %4, align 8
  br label %57

29:                                               ; preds = %23
  %30 = load i32, i32* @EXT2_ET_MAGIC_EA_HANDLE, align 4
  %31 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %8, align 8
  %32 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %8, align 8
  %34 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %8, align 8
  %36 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %8, align 8
  %39 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %38, i32 0, i32 4
  %40 = call i64 @ext2fs_get_arrayzero(i32 %37, i32 4, i32* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = call i32 @ext2fs_free_mem(%struct.ext2_xattr_handle** %8)
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %4, align 8
  br label %57

46:                                               ; preds = %29
  %47 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %8, align 8
  %48 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %8, align 8
  %51 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %8, align 8
  %54 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %53, i32 0, i32 1
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %54, align 8
  %55 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %8, align 8
  %56 = load %struct.ext2_xattr_handle**, %struct.ext2_xattr_handle*** %7, align 8
  store %struct.ext2_xattr_handle* %55, %struct.ext2_xattr_handle** %56, align 8
  store i64 0, i64* %4, align 8
  br label %57

57:                                               ; preds = %46, %43, %27, %21
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i32 @ext2fs_has_feature_xattr(i32) #1

declare dso_local i32 @ext2fs_has_feature_inline_data(i32) #1

declare dso_local i64 @ext2fs_get_memzero(i32, %struct.ext2_xattr_handle**) #1

declare dso_local i64 @ext2fs_get_arrayzero(i32, i32, i32*) #1

declare dso_local i32 @ext2fs_free_mem(%struct.ext2_xattr_handle**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
