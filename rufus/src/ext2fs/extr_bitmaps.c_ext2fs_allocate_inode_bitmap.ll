; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_bitmaps.c_ext2fs_allocate_inode_bitmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_bitmaps.c_ext2fs_allocate_inode_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@ext2fs_write_bitmaps = common dso_local global i32 0, align 4
@EXT2_FLAG_64BITS = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_INODE_BITMAP64 = common dso_local global i32 0, align 4
@EXT2_ET_CANT_USE_LEGACY_BITMAPS = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_INODE_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_allocate_inode_bitmap(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %13 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__* %11, i32 %12)
  %14 = load i32, i32* @ext2fs_write_bitmaps, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  store i32 1, i32* %8, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @EXT2_INODES_PER_GROUP(%struct.TYPE_8__* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul i32 %25, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EXT2_FLAG_64BITS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %3
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load i32, i32* @EXT2_ET_MAGIC_INODE_BITMAP64, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @ext2fs_alloc_generic_bmap(%struct.TYPE_7__* %37, i32 %38, i32 %41, i32 %42, i32 %43, i32 %44, i8* %45, i32* %46)
  store i32 %47, i32* %4, align 4
  br label %65

48:                                               ; preds = %3
  %49 = load i32, i32* %9, align 4
  %50 = icmp ugt i32 %49, -1
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = icmp ugt i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %48
  %55 = load i32, i32* @EXT2_ET_CANT_USE_LEGACY_BITMAPS, align 4
  store i32 %55, i32* %4, align 4
  br label %65

56:                                               ; preds = %51
  %57 = load i32, i32* @EXT2_ET_MAGIC_INODE_BITMAP, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @ext2fs_make_generic_bitmap(i32 %57, %struct.TYPE_7__* %58, i32 %59, i32 %60, i32 %61, i8* %62, i32 0, i32* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %56, %54, %36
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(%struct.TYPE_8__*) #1

declare dso_local i32 @ext2fs_alloc_generic_bmap(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ext2fs_make_generic_bitmap(i32, %struct.TYPE_7__*, i32, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
