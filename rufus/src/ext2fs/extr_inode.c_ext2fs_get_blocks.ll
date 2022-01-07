; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_get_blocks.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i64, i32*)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ext2_inode = type { i32* }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_ET_BAD_INODE_NUM = common dso_local global i64 0, align 8
@EXT2_N_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_get_blocks(%struct.TYPE_8__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ext2_inode, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %13 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__* %11, i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %14, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @EXT2_ET_BAD_INODE_NUM, align 8
  store i64 %22, i64* %4, align 8
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_8__*, i64, i32*)*, i32 (%struct.TYPE_8__*, i64, i32*)** %25, align 8
  %27 = icmp ne i32 (%struct.TYPE_8__*, i64, i32*)* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_8__*, i64, i32*)*, i32 (%struct.TYPE_8__*, i64, i32*)** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 %31(%struct.TYPE_8__* %32, i64 %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  store i64 0, i64* %4, align 8
  br label %67

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @ext2fs_read_inode(%struct.TYPE_8__* %40, i64 %41, %struct.ext2_inode* %8)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %4, align 8
  br label %67

47:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %48

66:                                               ; preds = %48
  store i64 0, i64* %4, align 8
  br label %67

67:                                               ; preds = %66, %45, %37, %21
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_8__*, i64, %struct.ext2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
