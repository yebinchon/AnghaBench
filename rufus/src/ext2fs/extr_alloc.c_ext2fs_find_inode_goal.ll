; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_find_inode_goal.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_find_inode_goal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ext2_inode = type { i32, i64* }
%struct.ext2fs_extent = type { i64, i64 }

@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4
@EXT2_EXTENT_CURRENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_find_inode_goal(%struct.TYPE_8__* %0, i32 %1, %struct.ext2_inode* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext2_inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext2fs_extent, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %13, align 8
  %15 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %16 = icmp eq %struct.ext2_inode* %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %4
  %18 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %19 = call i64 @ext2fs_is_fast_symlink(%struct.ext2_inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %23 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %17, %4
  br label %82

29:                                               ; preds = %21
  %30 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %31 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %40 = call i32 @ext2fs_extent_open2(%struct.TYPE_8__* %37, i32 %38, %struct.ext2_inode* %39, i32** %13)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %82

44:                                               ; preds = %36
  %45 = load i32*, i32** %13, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @ext2fs_extent_goto2(i32* %45, i32 0, i64 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %82

51:                                               ; preds = %44
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @EXT2_EXTENT_CURRENT, align 4
  %54 = call i32 @ext2fs_extent_get(i32* %52, i32 %53, %struct.ext2fs_extent* %12)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %82

58:                                               ; preds = %51
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @ext2fs_extent_free(i32* %59)
  %61 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %12, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %12, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %63, %65
  %67 = add nsw i64 %62, %66
  store i64 %67, i64* %5, align 8
  br label %106

68:                                               ; preds = %29
  %69 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %70 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.ext2_inode*, %struct.ext2_inode** %8, align 8
  %77 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %5, align 8
  br label %106

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %57, %50, %43, %28
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @ext2fs_extent_free(i32* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @ext2fs_group_of_ino(%struct.TYPE_8__* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %82
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = shl i32 1, %97
  %99 = sub nsw i32 %98, 1
  %100 = xor i32 %99, -1
  %101 = and i32 %96, %100
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %95, %82
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @ext2fs_group_first_block2(%struct.TYPE_8__* %103, i32 %104)
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %102, %75, %58
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i64 @ext2fs_is_fast_symlink(%struct.ext2_inode*) #1

declare dso_local i32 @ext2fs_extent_open2(%struct.TYPE_8__*, i32, %struct.ext2_inode*, i32**) #1

declare dso_local i32 @ext2fs_extent_goto2(i32*, i32, i64) #1

declare dso_local i32 @ext2fs_extent_get(i32*, i32, %struct.ext2fs_extent*) #1

declare dso_local i32 @ext2fs_extent_free(i32*) #1

declare dso_local i32 @ext2fs_group_of_ino(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @ext2fs_group_first_block2(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
