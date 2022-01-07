; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_fix_extents_checksums.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_fix_extents_checksums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ext2_inode = type { i32 }
%struct.ext2fs_extent = type { i32 }

@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4
@EXT2_ET_INODE_NOT_EXTENT = common dso_local global i64 0, align 8
@EXT2_FLAG_IGNORE_CSUM_ERRORS = common dso_local global i32 0, align 4
@EXT2_EXTENT_ROOT = common dso_local global i32 0, align 4
@EXT2_EXTENT_FLAGS_LEAF = common dso_local global i32 0, align 4
@EXT2_EXTENT_LAST_SIB = common dso_local global i32 0, align 4
@EXT2_EXTENT_NEXT = common dso_local global i32 0, align 4
@EXT2_ET_EXTENT_CSUM_INVALID = common dso_local global i64 0, align 8
@EXT2_ET_EXTENT_NO_NEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_fix_extents_checksums(%struct.TYPE_4__* %0, i32 %1, %struct.ext2_inode* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext2fs_extent, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ext2fs_has_feature_metadata_csum(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %22 = icmp ne %struct.ext2_inode* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %25 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %3
  store i64 0, i64* %4, align 8
  br label %100

31:                                               ; preds = %23, %20
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ext2_inode*, %struct.ext2_inode** %7, align 8
  %35 = call i64 @ext2fs_extent_open2(%struct.TYPE_4__* %32, i32 %33, %struct.ext2_inode* %34, i32* %8)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @EXT2_ET_INODE_NOT_EXTENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %4, align 8
  br label %100

45:                                               ; preds = %31
  %46 = load i32, i32* @EXT2_FLAG_IGNORE_CSUM_ERRORS, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EXT2_EXTENT_ROOT, align 4
  %54 = call i64 @ext2fs_extent_get(i32 %52, i32 %53, %struct.ext2fs_extent* %9)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %88

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %84, %58
  %60 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @EXT2_EXTENT_FLAGS_LEAF, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @EXT2_EXTENT_LAST_SIB, align 4
  %68 = call i64 @ext2fs_extent_get(i32 %66, i32 %67, %struct.ext2fs_extent* %9)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %87

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @EXT2_EXTENT_NEXT, align 4
  %76 = call i64 @ext2fs_extent_get(i32 %74, i32 %75, %struct.ext2fs_extent* %9)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @EXT2_ET_EXTENT_CSUM_INVALID, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @update_path(i32 %81)
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %80, %73
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %10, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %59, label %87

87:                                               ; preds = %84, %71
  br label %88

88:                                               ; preds = %87, %57
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @EXT2_ET_EXTENT_NO_NEXT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i64 0, i64* %10, align 8
  br label %93

93:                                               ; preds = %92, %88
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @ext2fs_extent_free(i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* %10, align 8
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %93, %43, %30
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local i32 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i64 @ext2fs_extent_open2(%struct.TYPE_4__*, i32, %struct.ext2_inode*, i32*) #1

declare dso_local i64 @ext2fs_extent_get(i32, i32, %struct.ext2fs_extent*) #1

declare dso_local i64 @update_path(i32) #1

declare dso_local i32 @ext2fs_extent_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
