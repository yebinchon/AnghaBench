; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_i_block.c_ext2fs_iblk_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_i_block.c_ext2fs_iblk_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.ext2_inode = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EXT4_HUGE_FILE_FL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_iblk_set(%struct.TYPE_8__* %0, %struct.ext2_inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.ext2_inode*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.ext2_inode* %1, %struct.ext2_inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ext2fs_has_feature_huge_file(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %15 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EXT4_HUGE_FILE_FL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %13, %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 512
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %20, %13
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = call i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_8__* %28)
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %34 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ext2fs_has_feature_huge_file(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 32
  %43 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %44 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  br label %54

47:                                               ; preds = %27
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @EOVERFLOW, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %40
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @ext2fs_has_feature_huge_file(i32) #1

declare dso_local i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
