; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_stats.c_ext2fs_inode_alloc_stats2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_stats.c_ext2fs_inode_alloc_stats2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ext2fs_inode_alloc_stats2\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Illegal inode number: %lu\00", align 1
@EXT2_BG_INODE_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_inode_alloc_stats2(%struct.TYPE_17__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @ext2fs_group_of_ino(%struct.TYPE_17__* %11, i64 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @com_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  br label %129

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @ext2fs_mark_inode_bitmap2(i32 %30, i64 %31)
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @ext2fs_unmark_inode_bitmap2(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @ext2fs_bg_free_inodes_count(%struct.TYPE_17__* %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %44, %46
  %48 = call i32 @ext2fs_bg_free_inodes_count_set(%struct.TYPE_17__* %40, i32 %41, i64 %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %39
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @ext2fs_bg_used_dirs_count(%struct.TYPE_17__* %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i32 @ext2fs_bg_used_dirs_count_set(%struct.TYPE_17__* %52, i32 %53, i64 %59)
  br label %61

61:                                               ; preds = %51, %39
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @EXT2_BG_INODE_UNINIT, align 4
  %65 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_17__* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = call i64 @ext2fs_has_group_desc_csum(%struct.TYPE_17__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %117

69:                                               ; preds = %61
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @ext2fs_bg_itable_unused(%struct.TYPE_17__* %76, i32 %77)
  %79 = sub nsw i64 %75, %78
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %80, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %79, %87
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %10, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %69
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %96, %101
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %102, %107
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %6, align 8
  %111 = sub nsw i64 %109, %110
  %112 = call i32 @ext2fs_bg_itable_unused_set(%struct.TYPE_17__* %94, i32 %95, i64 %111)
  br label %113

113:                                              ; preds = %93, %69
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_17__* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %61
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, %118
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_17__* %125)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = call i32 @ext2fs_mark_ib_dirty(%struct.TYPE_17__* %127)
  br label %129

129:                                              ; preds = %117, %21
  ret void
}

declare dso_local i32 @ext2fs_group_of_ino(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @com_err(i8*, i32, i8*, i64) #1

declare dso_local i32 @ext2fs_mark_inode_bitmap2(i32, i64) #1

declare dso_local i32 @ext2fs_unmark_inode_bitmap2(i32, i64) #1

declare dso_local i32 @ext2fs_bg_free_inodes_count_set(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i64 @ext2fs_bg_free_inodes_count(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ext2fs_bg_used_dirs_count_set(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i64 @ext2fs_bg_used_dirs_count(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ext2fs_bg_flags_clear(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @ext2fs_has_group_desc_csum(%struct.TYPE_17__*) #1

declare dso_local i64 @ext2fs_bg_itable_unused(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ext2fs_bg_itable_unused_set(%struct.TYPE_17__*, i32, i64) #1

declare dso_local i32 @ext2fs_group_desc_csum_set(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_17__*) #1

declare dso_local i32 @ext2fs_mark_ib_dirty(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
