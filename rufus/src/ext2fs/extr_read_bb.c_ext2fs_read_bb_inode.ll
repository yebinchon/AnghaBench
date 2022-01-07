; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_read_bb.c_ext2fs_read_bb_inode.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_read_bb.c_ext2fs_read_bb_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.read_bb_record = type { i64, i64 }
%struct.ext2_inode = type { i32, i32 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_BAD_INO = common dso_local global i32 0, align 4
@EXT4_HUGE_FILE_FL = common dso_local global i32 0, align 4
@BLOCK_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@mark_bad_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_read_bb_inode(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.read_bb_record, align 8
  %8 = alloca %struct.ext2_inode, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %12 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_6__* %10, i32 %11)
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %64, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = load i32, i32* @EXT2_BAD_INO, align 4
  %19 = call i64 @ext2fs_read_inode(%struct.TYPE_6__* %17, i32 %18, %struct.ext2_inode* %8)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %81

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ext2fs_has_feature_huge_file(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EXT4_HUGE_FILE_FL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32, %24
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 512
  %44 = sdiv i32 %39, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 20
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 50
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 50, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %9, align 4
  %53 = icmp sgt i32 %52, 50000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 500, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i64*, i64** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @ext2fs_badblocks_list_create(i64* %56, i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  br label %81

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %2
  %65 = load i64*, i64** %5, align 8
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.read_bb_record, %struct.read_bb_record* %7, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  %68 = getelementptr inbounds %struct.read_bb_record, %struct.read_bb_record* %7, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = load i32, i32* @EXT2_BAD_INO, align 4
  %71 = load i32, i32* @BLOCK_FLAG_READ_ONLY, align 4
  %72 = load i32, i32* @mark_bad_block, align 4
  %73 = call i64 @ext2fs_block_iterate2(%struct.TYPE_6__* %69, i32 %70, i32 %71, i32 0, i32 %72, %struct.read_bb_record* %7)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i64, i64* %6, align 8
  store i64 %77, i64* %3, align 8
  br label %81

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.read_bb_record, %struct.read_bb_record* %7, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %3, align 8
  br label %81

81:                                               ; preds = %78, %76, %61, %22
  %82 = load i64, i64* %3, align 8
  ret i64 %82
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_6__*, i32, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_has_feature_huge_file(i32) #1

declare dso_local i64 @ext2fs_badblocks_list_create(i64*, i32) #1

declare dso_local i64 @ext2fs_block_iterate2(%struct.TYPE_6__*, i32, i32, i32, i32, %struct.read_bb_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
