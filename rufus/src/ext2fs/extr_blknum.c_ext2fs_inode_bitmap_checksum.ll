; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_inode_bitmap_checksum.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_inode_bitmap_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ext4_group_desc = type { i32, i64 }

@EXT4_BG_INODE_BITMAP_CSUM_HI_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_inode_bitmap_checksum(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_group_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.ext4_group_desc* @ext4fs_group_desc(%struct.TYPE_4__* %7, i32 %10, i32 %11)
  store %struct.ext4_group_desc* %12, %struct.ext4_group_desc** %5, align 8
  %13 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %5, align 8
  %14 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @EXT2_DESC_SIZE(i32 %18)
  %20 = load i64, i64* @EXT4_BG_INODE_BITMAP_CSUM_HI_END, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %5, align 8
  %24 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %22, %2
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.ext4_group_desc* @ext4fs_group_desc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @EXT2_DESC_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
