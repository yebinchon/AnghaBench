; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_bitmaps.c_ext2fs_allocate_subcluster_bitmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_bitmaps.c_ext2fs_allocate_subcluster_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@ext2fs_write_bitmaps = common dso_local global i32 0, align 4
@EXT2_FLAG_64BITS = common dso_local global i32 0, align 4
@EXT2_ET_CANT_USE_LEGACY_BITMAPS = common dso_local global i64 0, align 8
@EXT2_ET_MAGIC_BLOCK_BITMAP64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_allocate_subcluster_bitmap(%struct.TYPE_10__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %16 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_10__* %14, i32 %15)
  %17 = load i32, i32* @ext2fs_write_bitmaps, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = call i64 @ext2fs_allocate_block_bitmap(%struct.TYPE_10__* %25, i8* %26, i64* %27)
  store i64 %28, i64* %4, align 8
  br label %83

29:                                               ; preds = %3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EXT2_FLAG_64BITS, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @EXT2_ET_CANT_USE_LEGACY_BITMAPS, align 8
  store i64 %37, i64* %4, align 8
  br label %83

38:                                               ; preds = %29
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = call i32 @ext2fs_blocks_count(%struct.TYPE_11__* %46)
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = call i64 @EXT2_BLOCKS_PER_GROUP(%struct.TYPE_11__* %51)
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = mul nsw i32 %53, %57
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = load i32, i32* @EXT2_ET_MAGIC_BLOCK_BITMAP64, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @ext2fs_alloc_generic_bmap(%struct.TYPE_10__* %62, i32 %63, i32 %66, i32 %67, i32 %68, i32 %69, i8* %70, i64* %11)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %38
  %75 = load i64, i64* %13, align 8
  store i64 %75, i64* %4, align 8
  br label %83

76:                                               ; preds = %38
  %77 = load i64, i64* %11, align 8
  %78 = inttoptr i64 %77 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %12, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  store i64 0, i64* %4, align 8
  br label %83

83:                                               ; preds = %76, %74, %36, %24
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ext2fs_allocate_block_bitmap(%struct.TYPE_10__*, i8*, i64*) #1

declare dso_local i32 @ext2fs_blocks_count(%struct.TYPE_11__*) #1

declare dso_local i64 @EXT2_BLOCKS_PER_GROUP(%struct.TYPE_11__*) #1

declare dso_local i64 @ext2fs_alloc_generic_bmap(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
