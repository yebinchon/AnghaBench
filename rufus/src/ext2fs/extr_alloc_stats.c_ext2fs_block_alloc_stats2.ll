; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_stats.c_ext2fs_block_alloc_stats2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_stats.c_ext2fs_block_alloc_stats2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i64, i32)*, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"ext2fs_block_alloc_stats\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Illegal block number: %lu\00", align 1
@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_block_alloc_stats2(%struct.TYPE_12__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @ext2fs_group_of_blk2(%struct.TYPE_12__* %8, i64 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @ext2fs_blocks_count(i32 %14)
  %16 = icmp sge i64 %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @com_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  br label %79

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ext2fs_mark_block_bitmap2(i32 %26, i64 %27)
  br label %35

29:                                               ; preds = %20
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @ext2fs_unmark_block_bitmap2(i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_12__* %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = call i32 @ext2fs_bg_free_blocks_count_set(%struct.TYPE_12__* %36, i32 %37, i64 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %48 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_12__* %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_12__* %49, i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 0, %55
  %57 = sext i32 %56 to i64
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = call i64 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_12__* %58)
  %60 = mul nsw i64 %57, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @ext2fs_free_blocks_count_add(i32 %54, i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_12__* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = call i32 @ext2fs_mark_bb_dirty(%struct.TYPE_12__* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_12__*, i64, i32)*, i32 (%struct.TYPE_12__*, i64, i32)** %68, align 8
  %70 = icmp ne i32 (%struct.TYPE_12__*, i64, i32)* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %35
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_12__*, i64, i32)*, i32 (%struct.TYPE_12__*, i64, i32)** %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 %74(%struct.TYPE_12__* %75, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %17, %71, %35
  ret void
}

declare dso_local i32 @ext2fs_group_of_blk2(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @ext2fs_blocks_count(i32) #1

declare dso_local i32 @com_err(i8*, i32, i8*, i64) #1

declare dso_local i32 @ext2fs_mark_block_bitmap2(i32, i64) #1

declare dso_local i32 @ext2fs_unmark_block_bitmap2(i32, i64) #1

declare dso_local i32 @ext2fs_bg_free_blocks_count_set(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ext2fs_bg_flags_clear(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ext2fs_group_desc_csum_set(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ext2fs_free_blocks_count_add(i32, i32) #1

declare dso_local i64 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_12__*) #1

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_12__*) #1

declare dso_local i32 @ext2fs_mark_bb_dirty(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
