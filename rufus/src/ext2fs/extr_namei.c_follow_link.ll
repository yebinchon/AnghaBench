; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_namei.c_follow_link.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_namei.c_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.ext2_inode = type { i32, i32, i32*, i32 }

@EXT2FS_MAX_NESTED_LINKS = common dso_local global i32 0, align 4
@EXT2_ET_SYMLINK_LOOP = common dso_local global i64 0, align 8
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32, i32, i32, i32, i8*, i32*)* @follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @follow_link(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ext2_inode, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* null, i8** %17, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i64 @ext2fs_read_inode(%struct.TYPE_7__* %21, i32 %22, %struct.ext2_inode* %19)
  store i64 %23, i64* %18, align 8
  %24 = load i64, i64* %18, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i64, i64* %18, align 8
  store i64 %27, i64* %8, align 8
  br label %126

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %19, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @LINUX_S_ISLNK(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = load i32*, i32** %15, align 8
  store i32 %34, i32* %35, align 4
  store i64 0, i64* %8, align 8
  br label %126

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @EXT2FS_MAX_NESTED_LINKS, align 4
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @EXT2_ET_SYMLINK_LOOP, align 8
  store i64 %42, i64* %8, align 8
  br label %126

43:                                               ; preds = %36
  %44 = call i64 @ext2fs_is_fast_symlink(%struct.ext2_inode* %19)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %19, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** %16, align 8
  br label %109

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %19, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %19, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ext2fs_get_memzero(i32 %59, i8** %17)
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* %18, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* %18, align 8
  store i64 %64, i64* %8, align 8
  br label %126

65:                                               ; preds = %57
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i8*, i8** %17, align 8
  %69 = call i64 @ext2fs_inline_data_get(%struct.TYPE_7__* %66, i32 %67, %struct.ext2_inode* %19, i8* %68, i32* null)
  store i64 %69, i64* %18, align 8
  %70 = load i64, i64* %18, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = call i32 @ext2fs_free_mem(i8** %17)
  %74 = load i64, i64* %18, align 8
  store i64 %74, i64* %8, align 8
  br label %126

75:                                               ; preds = %65
  %76 = load i8*, i8** %17, align 8
  store i8* %76, i8** %16, align 8
  br label %108

77:                                               ; preds = %51
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i64 @ext2fs_bmap2(%struct.TYPE_7__* %78, i32 %79, %struct.ext2_inode* %19, i32* null, i32 0, i32 0, i32* null, i32* %20)
  store i64 %80, i64* %18, align 8
  %81 = load i64, i64* %18, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* %18, align 8
  store i64 %84, i64* %8, align 8
  br label %126

85:                                               ; preds = %77
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ext2fs_get_mem(i32 %88, i8** %17)
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %18, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i64, i64* %18, align 8
  store i64 %93, i64* %8, align 8
  br label %126

94:                                               ; preds = %85
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i8*, i8** %17, align 8
  %100 = call i64 @io_channel_read_blk64(i32 %97, i32 %98, i32 1, i8* %99)
  store i64 %100, i64* %18, align 8
  %101 = load i64, i64* %18, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = call i32 @ext2fs_free_mem(i8** %17)
  %105 = load i64, i64* %18, align 8
  store i64 %105, i64* %8, align 8
  br label %126

106:                                              ; preds = %94
  %107 = load i8*, i8** %17, align 8
  store i8* %107, i8** %16, align 8
  br label %108

108:                                              ; preds = %106, %75
  br label %109

109:                                              ; preds = %108, %46
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i8*, i8** %16, align 8
  %114 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %19, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i8*, i8** %14, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = call i64 @open_namei(%struct.TYPE_7__* %110, i32 %111, i32 %112, i8* %113, i32 %115, i32 1, i32 %116, i8* %117, i32* %118)
  store i64 %119, i64* %18, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %109
  %123 = call i32 @ext2fs_free_mem(i8** %17)
  br label %124

124:                                              ; preds = %122, %109
  %125 = load i64, i64* %18, align 8
  store i64 %125, i64* %8, align 8
  br label %126

126:                                              ; preds = %124, %103, %92, %83, %72, %63, %41, %33, %26
  %127 = load i64, i64* %8, align 8
  ret i64 %127
}

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_7__*, i32, %struct.ext2_inode*) #1

declare dso_local i32 @LINUX_S_ISLNK(i32) #1

declare dso_local i64 @ext2fs_is_fast_symlink(%struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_get_memzero(i32, i8**) #1

declare dso_local i64 @ext2fs_inline_data_get(%struct.TYPE_7__*, i32, %struct.ext2_inode*, i8*, i32*) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

declare dso_local i64 @ext2fs_bmap2(%struct.TYPE_7__*, i32, %struct.ext2_inode*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @ext2fs_get_mem(i32, i8**) #1

declare dso_local i64 @io_channel_read_blk64(i32, i32, i32, i8*) #1

declare dso_local i64 @open_namei(%struct.TYPE_7__*, i32, i32, i8*, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
