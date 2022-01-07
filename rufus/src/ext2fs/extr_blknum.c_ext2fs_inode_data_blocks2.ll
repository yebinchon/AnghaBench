; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_inode_data_blocks2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_inode_data_blocks2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ext2_inode = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_inode_data_blocks2(%struct.TYPE_7__* %0, %struct.ext2_inode* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.ext2_inode*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.ext2_inode* %1, %struct.ext2_inode** %4, align 8
  %5 = load %struct.ext2_inode*, %struct.ext2_inode** %4, align 8
  %6 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ext2fs_has_feature_huge_file(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.ext2_inode*, %struct.ext2_inode** %4, align 8
  %15 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 32
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %20, %13 ], [ 0, %21 ]
  %24 = or i32 %7, %23
  %25 = load %struct.ext2_inode*, %struct.ext2_inode** %4, align 8
  %26 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @EXT2_CLUSTER_SIZE(i32 %32)
  %34 = ashr i32 %33, 9
  br label %36

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ %34, %29 ], [ 0, %35 ]
  %38 = sub nsw i32 %24, %37
  ret i32 %38
}

declare dso_local i64 @ext2fs_has_feature_huge_file(i32) #1

declare dso_local i32 @EXT2_CLUSTER_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
