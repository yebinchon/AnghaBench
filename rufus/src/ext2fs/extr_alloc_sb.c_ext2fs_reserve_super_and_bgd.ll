; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_sb.c_ext2fs_reserve_super_and_bgd.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_sb.c_ext2fs_reserve_super_and_bgd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_reserve_super_and_bgd(%struct.TYPE_8__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @ext2fs_super_and_bgd_loc2(%struct.TYPE_8__* %13, i64 %14, i64* %7, i64* %8, i64* %9, i64* %10)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = call i64 @ext2fs_has_feature_meta_bg(%struct.TYPE_9__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  br label %37

27:                                               ; preds = %3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %27, %21
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @ext2fs_mark_block_bitmap2(i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1024
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = call i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_8__* %56)
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ext2fs_mark_block_bitmap2(i32 %60, i64 0)
  br label %62

62:                                               ; preds = %59, %55, %50, %47
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = call i64 @ext2fs_blocks_count(%struct.TYPE_9__* %73)
  %75 = icmp sge i64 %70, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %65
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = call i64 @ext2fs_blocks_count(%struct.TYPE_9__* %79)
  %81 = load i64, i64* %8, align 8
  %82 = sub nsw i64 %80, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %76, %65
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @ext2fs_mark_block_bitmap_range2(i32 %85, i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %62
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @ext2fs_mark_block_bitmap2(i32 %93, i64 %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @ext2fs_group_blocks_count(%struct.TYPE_8__* %97, i64 %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 2, %102
  %104 = load i64, i64* %10, align 8
  %105 = add nsw i64 %103, %104
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  ret i32 %110
}

declare dso_local i32 @ext2fs_super_and_bgd_loc2(%struct.TYPE_8__*, i64, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @ext2fs_has_feature_meta_bg(%struct.TYPE_9__*) #1

declare dso_local i32 @ext2fs_mark_block_bitmap2(i32, i64) #1

declare dso_local i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_8__*) #1

declare dso_local i64 @ext2fs_blocks_count(%struct.TYPE_9__*) #1

declare dso_local i32 @ext2fs_mark_block_bitmap_range2(i32, i64, i32) #1

declare dso_local i32 @ext2fs_group_blocks_count(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
