; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_bitmaps.c_ext2fs_allocate_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_bitmaps.c_ext2fs_allocate_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@ext2fs_write_bitmaps = common dso_local global i32 0, align 4
@EXT2_FLAG_64BITS = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_BLOCK_BITMAP64 = common dso_local global i32 0, align 4
@EXT2_ET_CANT_USE_LEGACY_BITMAPS = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_BLOCK_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_allocate_block_bitmap(%struct.TYPE_9__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %13 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_9__* %11, i32 %12)
  %14 = load i32, i32* @ext2fs_write_bitmaps, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @EXT2FS_B2C(%struct.TYPE_9__* %17, i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = call i64 @ext2fs_blocks_count(%struct.TYPE_10__* %27)
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @EXT2FS_B2C(%struct.TYPE_9__* %24, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = call i64 @EXT2_CLUSTERS_PER_GROUP(%struct.TYPE_10__* %33)
  %35 = trunc i64 %34 to i32
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = mul nsw i32 %35, %39
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EXT2_FLAG_64BITS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = load i32, i32* @EXT2_ET_MAGIC_BLOCK_BITMAP64, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @ext2fs_alloc_generic_bmap(%struct.TYPE_9__* %51, i32 %52, i32 %55, i32 %56, i32 %57, i32 %58, i8* %59, i32* %60)
  store i32 %61, i32* %4, align 4
  br label %79

62:                                               ; preds = %3
  %63 = load i32, i32* %9, align 4
  %64 = icmp ugt i32 %63, -1
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp ugt i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %62
  %69 = load i32, i32* @EXT2_ET_CANT_USE_LEGACY_BITMAPS, align 4
  store i32 %69, i32* %4, align 4
  br label %79

70:                                               ; preds = %65
  %71 = load i32, i32* @EXT2_ET_MAGIC_BLOCK_BITMAP, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @ext2fs_make_generic_bitmap(i32 %71, %struct.TYPE_9__* %72, i32 %73, i32 %74, i32 %75, i8* %76, i32 0, i32* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %70, %68, %50
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @EXT2FS_B2C(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @ext2fs_blocks_count(%struct.TYPE_10__*) #1

declare dso_local i64 @EXT2_CLUSTERS_PER_GROUP(%struct.TYPE_10__*) #1

declare dso_local i32 @ext2fs_alloc_generic_bmap(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ext2fs_make_generic_bitmap(i32, %struct.TYPE_9__*, i32, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
