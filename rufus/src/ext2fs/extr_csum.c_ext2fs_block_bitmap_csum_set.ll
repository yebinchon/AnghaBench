; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_block_bitmap_csum_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_csum.c_ext2fs_block_bitmap_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ext4_group_desc = type { i32, i32 }

@EXT4_BG_BLOCK_BITMAP_CSUM_HI_LOCATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_block_bitmap_csum_set(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_group_desc*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ext2fs_group_desc(%struct.TYPE_4__* %12, i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.ext4_group_desc*
  store %struct.ext4_group_desc* %18, %struct.ext4_group_desc** %11, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ext2fs_has_feature_metadata_csum(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %48

25:                                               ; preds = %4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ext2fs_crc32c_le(i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 65535
  %34 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %11, align 8
  %35 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @EXT2_DESC_SIZE(i32 %38)
  %40 = load i64, i64* @EXT4_BG_BLOCK_BITMAP_CSUM_HI_LOCATION, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 16
  %45 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %11, align 8
  %46 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %25
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @ext2fs_group_desc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i32 @ext2fs_crc32c_le(i32, i8*, i32) #1

declare dso_local i64 @EXT2_DESC_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
