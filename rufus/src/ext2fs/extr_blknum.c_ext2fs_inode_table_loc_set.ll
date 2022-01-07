; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_inode_table_loc_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_inode_table_loc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ext4_group_desc = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2fs_inode_table_loc_set(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext4_group_desc*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.ext4_group_desc* @ext4fs_group_desc(%struct.TYPE_4__* %8, i32 %11, i32 %12)
  store %struct.ext4_group_desc* %13, %struct.ext4_group_desc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %16 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ext2fs_has_feature_64bit(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = ashr i32 %24, 32
  %26 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %7, align 8
  %27 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %22, %3
  ret void
}

declare dso_local %struct.ext4_group_desc* @ext4fs_group_desc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @ext2fs_has_feature_64bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
