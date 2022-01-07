; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_dir_expand.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_dir_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.ext2_inode = type { i32, i32 }

@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@BMAP_SET = common dso_local global i32 0, align 4
@EXT4_INLINE_DATA_DOTDOT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32, %struct.ext2_inode*, i8*, i64)* @ext2fs_inline_data_dir_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_inline_data_dir_expand(%struct.TYPE_11__* %0, i32 %1, %struct.ext2_inode* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext2_inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ext2fs_get_memzero(i32 %17, i8** %14)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* %12, align 8
  store i64 %22, i64* %6, align 8
  br label %102

23:                                               ; preds = %5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @ext2fs_inline_data_convert_dir(%struct.TYPE_11__* %24, i32 %25, i8* %26, i8* %27, i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %99

33:                                               ; preds = %23
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = call i64 @ext2fs_new_block2(%struct.TYPE_11__* %34, i32 0, i32 0, i32* %13)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %99

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ext2fs_write_dir_block4(%struct.TYPE_11__* %40, i32 %41, i8* %42, i32 0, i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %99

48:                                               ; preds = %39
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ext2fs_has_feature_extents(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %56 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %57 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %64 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %69 = call i64 @ext2fs_iblk_add_blocks(%struct.TYPE_11__* %67, %struct.ext2_inode* %68, i32 1)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %99

73:                                               ; preds = %60
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %78 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %82 = load i32, i32* @BMAP_SET, align 4
  %83 = call i64 @ext2fs_bmap2(%struct.TYPE_11__* %79, i32 %80, %struct.ext2_inode* %81, i32 0, i32 %82, i32 0, i32 0, i32* %13)
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %99

87:                                               ; preds = %73
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %91 = call i64 @ext2fs_write_inode(%struct.TYPE_11__* %88, i32 %89, %struct.ext2_inode* %90)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %99

95:                                               ; preds = %87
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @ext2fs_block_alloc_stats(%struct.TYPE_11__* %96, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %95, %94, %86, %72, %47, %38, %32
  %100 = call i32 @ext2fs_free_mem(i8** %14)
  %101 = load i64, i64* %12, align 8
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %99, %21
  %103 = load i64, i64* %6, align 8
  ret i64 %103
}

declare dso_local i64 @ext2fs_get_memzero(i32, i8**) #1

declare dso_local i64 @ext2fs_inline_data_convert_dir(%struct.TYPE_11__*, i32, i8*, i8*, i64) #1

declare dso_local i64 @ext2fs_new_block2(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i64 @ext2fs_write_dir_block4(%struct.TYPE_11__*, i32, i8*, i32, i32) #1

declare dso_local i64 @ext2fs_has_feature_extents(i32) #1

declare dso_local i64 @ext2fs_iblk_add_blocks(%struct.TYPE_11__*, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_bmap2(%struct.TYPE_11__*, i32, %struct.ext2_inode*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ext2fs_write_inode(%struct.TYPE_11__*, i32, %struct.ext2_inode*) #1

declare dso_local i32 @ext2fs_block_alloc_stats(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
