; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_link.c_ext2fs_link.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_link.c_ext2fs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.link_struct = type { i8*, i32, i64, i64, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.ext2_inode = type { i32 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_FLAG_RW = common dso_local global i32 0, align 4
@EXT2_ET_RO_FILSYS = common dso_local global i64 0, align 8
@DIRENT_FLAG_INCLUDE_EMPTY = common dso_local global i32 0, align 4
@link_proc = common dso_local global i32 0, align 4
@EXT2_ET_DIR_NO_SPACE = common dso_local global i64 0, align 8
@EXT2_INDEX_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_link(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.link_struct, align 8
  %14 = alloca %struct.ext2_inode, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %17 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__* %15, i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EXT2_FLAG_RW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* @EXT2_ET_RO_FILSYS, align 8
  store i64 %25, i64* %6, align 8
  br label %103

26:                                               ; preds = %5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  br label %37

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  %39 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 7
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 6
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 5
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 4
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @DIRENT_FLAG_INCLUDE_EMPTY, align 4
  %57 = load i32, i32* @link_proc, align 4
  %58 = call i64 @ext2fs_dir_iterate(%struct.TYPE_7__* %54, i32 %55, i32 %56, i32 0, i32 %57, %struct.link_struct* %13)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = load i64, i64* %12, align 8
  store i64 %62, i64* %6, align 8
  br label %103

63:                                               ; preds = %37
  %64 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %6, align 8
  br label %103

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %13, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* @EXT2_ET_DIR_NO_SPACE, align 8
  store i64 %75, i64* %6, align 8
  br label %103

76:                                               ; preds = %70
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @ext2fs_read_inode(%struct.TYPE_7__* %77, i32 %78, %struct.ext2_inode* %14)
  store i64 %79, i64* %12, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i64, i64* %12, align 8
  store i64 %82, i64* %6, align 8
  br label %103

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EXT2_INDEX_FL, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load i32, i32* @EXT2_INDEX_FL, align 4
  %91 = xor i32 %90, -1
  %92 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %14, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @ext2fs_write_inode(%struct.TYPE_7__* %95, i32 %96, %struct.ext2_inode* %14)
  store i64 %97, i64* %12, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %6, align 8
  br label %103

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %83
  store i64 0, i64* %6, align 8
  br label %103

103:                                              ; preds = %102, %99, %81, %74, %67, %61, %24
  %104 = load i64, i64* %6, align 8
  ret i64 %104
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ext2fs_dir_iterate(%struct.TYPE_7__*, i32, i32, i32, i32, %struct.link_struct*) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_7__*, i32, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_write_inode(%struct.TYPE_7__*, i32, %struct.ext2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
