; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_inode_size_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blknum.c_ext2fs_inode_size_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.ext2_inode = type { i32, i32, i32 }

@EXT2_ET_FILE_TOO_BIG = common dso_local global i32 0, align 4
@EXT2_GOOD_OLD_REV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_inode_size_set(%struct.TYPE_7__* %0, %struct.ext2_inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.ext2_inode*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.ext2_inode* %1, %struct.ext2_inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %9 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @LINUX_S_ISREG(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @EXT2_ET_FILE_TOO_BIG, align 4
  store i32 %18, i32* %4, align 4
  br label %60

19:                                               ; preds = %13, %3
  %20 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %21 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @LINUX_S_ISREG(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @ext2fs_needs_large_file_feature(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 @ext2fs_has_feature_large_file(%struct.TYPE_8__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EXT2_GOOD_OLD_REV, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35, %29
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @ext2fs_set_feature_large_file(%struct.TYPE_8__* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = call i32 @ext2fs_update_dynamic_rev(%struct.TYPE_7__* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = call i32 @ext2fs_mark_super_dirty(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %43, %35, %25, %19
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %55 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 32
  %58 = load %struct.ext2_inode*, %struct.ext2_inode** %6, align 8
  %59 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @LINUX_S_ISREG(i32) #1

declare dso_local i64 @ext2fs_needs_large_file_feature(i32) #1

declare dso_local i32 @ext2fs_has_feature_large_file(%struct.TYPE_8__*) #1

declare dso_local i32 @ext2fs_set_feature_large_file(%struct.TYPE_8__*) #1

declare dso_local i32 @ext2fs_update_dynamic_rev(%struct.TYPE_7__*) #1

declare dso_local i32 @ext2fs_mark_super_dirty(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
