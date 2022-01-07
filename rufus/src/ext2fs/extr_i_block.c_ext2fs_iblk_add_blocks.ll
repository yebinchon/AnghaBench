; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_i_block.c_ext2fs_iblk_add_blocks.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_i_block.c_ext2fs_iblk_add_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.ext2_inode = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@EXT4_HUGE_FILE_FL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_iblk_add_blocks(%struct.TYPE_8__* %0, %struct.ext2_inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.ext2_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.ext2_inode* %1, %struct.ext2_inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %10 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ext2fs_has_feature_huge_file(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %19 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = shl i64 %22, 32
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %17, %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ext2fs_has_feature_huge_file(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %34 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @EXT4_HUGE_FILE_FL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 512
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = call i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_8__* %47)
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ext2fs_has_feature_huge_file(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load i64, i64* %8, align 8
  %62 = lshr i64 %61, 32
  %63 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %64 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i64 %62, i64* %66, align 8
  br label %73

67:                                               ; preds = %46
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %68, 4294967295
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @EOVERFLOW, align 4
  store i32 %71, i32* %4, align 4
  br label %78

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i64, i64* %8, align 8
  %75 = and i64 %74, 4294967295
  %76 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %77 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %70
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @ext2fs_has_feature_huge_file(i32) #1

declare dso_local i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
