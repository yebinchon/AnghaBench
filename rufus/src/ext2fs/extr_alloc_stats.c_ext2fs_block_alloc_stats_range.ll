; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_stats.c_ext2fs_block_alloc_stats_range.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_stats.c_ext2fs_block_alloc_stats_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i64, i64, i32)*, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"ext2fs_block_alloc_stats_range\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Illegal block range: %llu (%u) \00", align 1
@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_block_alloc_stats_range(%struct.TYPE_13__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ext2fs_blocks_count(i32 %17)
  %19 = icmp sgt i64 %14, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @com_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %21, i64 %22)
  br label %124

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %124

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @ext2fs_mark_block_bitmap_range2(i32 %34, i64 %35, i64 %36)
  store i32 1, i32* %8, align 4
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @ext2fs_unmark_block_bitmap_range2(i32 %41, i64 %42, i64 %43)
  store i32 -1, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %106

49:                                               ; preds = %46
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @ext2fs_group_of_blk2(%struct.TYPE_13__* %50, i64 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @ext2fs_group_last_block2(%struct.TYPE_13__* %53, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* %10, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub nsw i64 %63, %64
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %62, %49
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_13__* %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %11, align 8
  %76 = mul nsw i64 %74, %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = call i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_13__* %77)
  %79 = sext i32 %78 to i64
  %80 = sdiv i64 %76, %79
  %81 = sub nsw i64 %72, %80
  %82 = call i32 @ext2fs_bg_free_blocks_count_set(%struct.TYPE_13__* %68, i32 %69, i64 %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %86 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_13__* %83, i32 %84, i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_13__* %87, i32 %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 0, %93
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %11, align 8
  %97 = mul nsw i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @ext2fs_free_blocks_count_add(i32 %92, i32 %98)
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %6, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* %7, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* %7, align 8
  br label %46

106:                                              ; preds = %46
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_13__* %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = call i32 @ext2fs_mark_bb_dirty(%struct.TYPE_13__* %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_13__*, i64, i64, i32)*, i32 (%struct.TYPE_13__*, i64, i64, i32)** %112, align 8
  %114 = icmp ne i32 (%struct.TYPE_13__*, i64, i64, i32)* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %106
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32 (%struct.TYPE_13__*, i64, i64, i32)*, i32 (%struct.TYPE_13__*, i64, i64, i32)** %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 %118(%struct.TYPE_13__* %119, i64 %120, i64 %121, i32 %122)
  br label %124

124:                                              ; preds = %20, %27, %115, %106
  ret void
}

declare dso_local i64 @ext2fs_blocks_count(i32) #1

declare dso_local i32 @com_err(i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @ext2fs_mark_block_bitmap_range2(i32, i64, i64) #1

declare dso_local i32 @ext2fs_unmark_block_bitmap_range2(i32, i64, i64) #1

declare dso_local i32 @ext2fs_group_of_blk2(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @ext2fs_group_last_block2(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ext2fs_bg_free_blocks_count_set(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_13__*) #1

declare dso_local i32 @ext2fs_bg_flags_clear(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ext2fs_group_desc_csum_set(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ext2fs_free_blocks_count_add(i32, i32) #1

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_13__*) #1

declare dso_local i32 @ext2fs_mark_bb_dirty(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
