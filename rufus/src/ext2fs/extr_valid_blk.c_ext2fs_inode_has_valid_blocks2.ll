; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_valid_blk.c_ext2fs_inode_has_valid_blocks2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_valid_blk.c_ext2fs_inode_has_valid_blocks2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode = type { i64, i32, i64*, i32, i32 }

@EXT2_N_BLOCKS = common dso_local global i32 0, align 4
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_inode_has_valid_blocks2(i32 %0, %struct.ext2_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext2_inode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ext2_inode* %1, %struct.ext2_inode** %5, align 8
  %6 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %7 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @LINUX_S_ISDIR(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %13 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @LINUX_S_ISREG(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %19 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @LINUX_S_ISLNK(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %74

24:                                               ; preds = %17, %11, %2
  %25 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %26 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @LINUX_S_ISLNK(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %33 = call i64 @ext2fs_file_acl_block(i32 %31, %struct.ext2_inode* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %37 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %74

41:                                               ; preds = %35
  br label %64

42:                                               ; preds = %30
  %43 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %44 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %47 = mul nsw i32 %46, 4
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %74

50:                                               ; preds = %42
  %51 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %52 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 4
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %57 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %74

63:                                               ; preds = %55, %50
  store i32 0, i32* %3, align 4
  br label %74

64:                                               ; preds = %41
  br label %65

65:                                               ; preds = %64, %24
  %66 = load %struct.ext2_inode*, %struct.ext2_inode** %5, align 8
  %67 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %74

73:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %72, %63, %62, %49, %40, %23
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @LINUX_S_ISDIR(i32) #1

declare dso_local i32 @LINUX_S_ISREG(i32) #1

declare dso_local i64 @LINUX_S_ISLNK(i32) #1

declare dso_local i64 @ext2fs_file_acl_block(i32, %struct.ext2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
