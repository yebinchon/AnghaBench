; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_rw_bitmaps.c_mark_uninit_bg_group_blocks.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_rw_bitmaps.c_mark_uninit_bg_group_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }

@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @mark_uninit_bg_group_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_uninit_bg_group_blocks(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %60, %1
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %19 = call i32 @ext2fs_bg_flags_test(%struct.TYPE_8__* %16, i64 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %60

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ext2fs_reserve_super_and_bgd(%struct.TYPE_8__* %23, i64 %24, i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @ext2fs_inode_table_loc(%struct.TYPE_8__* %27, i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ext2fs_mark_block_bitmap_range2(i32 %33, i64 %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %22
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @ext2fs_block_bitmap_loc(%struct.TYPE_8__* %40, i64 %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @ext2fs_mark_block_bitmap2(i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i64 @ext2fs_inode_bitmap_loc(%struct.TYPE_8__* %50, i64 %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @ext2fs_mark_block_bitmap2(i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i64, i64* %3, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %9

63:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @ext2fs_bg_flags_test(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @ext2fs_reserve_super_and_bgd(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i64 @ext2fs_inode_table_loc(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ext2fs_mark_block_bitmap_range2(i32, i64, i32) #1

declare dso_local i64 @ext2fs_block_bitmap_loc(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ext2fs_mark_block_bitmap2(i32, i64) #1

declare dso_local i64 @ext2fs_inode_bitmap_loc(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
