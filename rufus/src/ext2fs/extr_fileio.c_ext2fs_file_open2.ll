; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_open2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_open2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.ext2_inode = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__*, i32 }

@EXT2_FILE_WRITE = common dso_local global i32 0, align 4
@EXT2_FILE_CREATE = common dso_local global i32 0, align 4
@EXT2_FLAG_RW = common dso_local global i32 0, align 4
@EXT2_ET_RO_FILSYS = common dso_local global i64 0, align 8
@EXT2_ET_MAGIC_EXT2_FILE = common dso_local global i32 0, align 4
@EXT2_FILE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_file_open2(%struct.TYPE_10__* %0, i32 %1, %struct.ext2_inode* %2, i32 %3, %struct.TYPE_11__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext2_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_11__** %4, %struct.TYPE_11__*** %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @EXT2_FILE_WRITE, align 4
  %16 = load i32, i32* @EXT2_FILE_CREATE, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EXT2_FLAG_RW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load i64, i64* @EXT2_ET_RO_FILSYS, align 8
  store i64 %28, i64* %6, align 8
  br label %94

29:                                               ; preds = %20, %5
  %30 = call i64 @ext2fs_get_mem(i32 4, %struct.TYPE_11__** %12)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %6, align 8
  br label %94

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = call i32 @memset(%struct.TYPE_11__* %36, i32 0, i32 4)
  %38 = load i32, i32* @EXT2_ET_MAGIC_EXT2_FILE, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @EXT2_FILE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %53 = icmp ne %struct.ext2_inode* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %35
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %58 = call i32 @memcpy(i32* %56, %struct.ext2_inode* %57, i32 4)
  br label %69

59:                                               ; preds = %35
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = call i64 @ext2fs_read_inode(%struct.TYPE_10__* %60, i32 %61, i32* %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %82

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %54
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = call i64 @ext2fs_get_array(i32 3, i32 %72, %struct.TYPE_11__** %74)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %82

79:                                               ; preds = %69
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %81 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** %81, align 8
  store i64 0, i64* %6, align 8
  br label %94

82:                                               ; preds = %78, %67
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = call i32 @ext2fs_free_mem(%struct.TYPE_11__** %89)
  br label %91

91:                                               ; preds = %87, %82
  %92 = call i32 @ext2fs_free_mem(%struct.TYPE_11__** %12)
  %93 = load i64, i64* %13, align 8
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %91, %79, %33, %27
  %95 = load i64, i64* %6, align 8
  ret i64 %95
}

declare dso_local i64 @ext2fs_get_mem(i32, %struct.TYPE_11__**) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @ext2fs_get_array(i32, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @ext2fs_free_mem(%struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
