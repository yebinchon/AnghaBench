; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_bmap.c_ext2fs_map_cluster_block.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_bmap.c_ext2fs_map_cluster_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ext2_inode = type { i32 }

@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_map_cluster_block(%struct.TYPE_5__* %0, i32 %1, %struct.ext2_inode* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext2_inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ext2fs_has_feature_bigalloc(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %22 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %5
  store i64 0, i64* %6, align 8
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %32 = call i64 @ext2fs_extent_open2(%struct.TYPE_5__* %29, i32 %30, %struct.ext2_inode* %31, i32* %12)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %51

36:                                               ; preds = %28
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i64, i64* %10, align 8
  %42 = load i64*, i64** %11, align 8
  %43 = call i64 @implied_cluster_alloc(%struct.TYPE_5__* %37, i32 %38, %struct.ext2_inode* %39, i32 %40, i64 %41, i64* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %48

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ext2fs_extent_free(i32 %49)
  br label %51

51:                                               ; preds = %48, %35
  %52 = load i64, i64* %13, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %51, %27
  %54 = load i64, i64* %6, align 8
  ret i64 %54
}

declare dso_local i32 @ext2fs_has_feature_bigalloc(i32) #1

declare dso_local i64 @ext2fs_extent_open2(%struct.TYPE_5__*, i32, %struct.ext2_inode*, i32*) #1

declare dso_local i64 @implied_cluster_alloc(%struct.TYPE_5__*, i32, %struct.ext2_inode*, i32, i64, i64*) #1

declare dso_local i32 @ext2fs_extent_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
