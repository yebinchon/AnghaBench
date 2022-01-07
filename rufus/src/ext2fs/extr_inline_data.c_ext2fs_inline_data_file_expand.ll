; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_file_expand.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_file_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ext2_inode = type { i64, i32, i32 }

@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EXT2_FILE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, %struct.ext2_inode*, i8*, i64)* @ext2fs_inline_data_file_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2fs_inline_data_file_expand(%struct.TYPE_6__* %0, i32 %1, %struct.ext2_inode* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext2_inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %16 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ext2fs_has_feature_extents(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %5
  %25 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %28 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %34 = call i64 @ext2fs_extent_open2(%struct.TYPE_6__* %31, i32 %32, %struct.ext2_inode* %33, i32* %14)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i64, i64* %13, align 8
  store i64 %38, i64* %6, align 8
  br label %76

39:                                               ; preds = %24
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @ext2fs_extent_free(i32 %40)
  br label %42

42:                                               ; preds = %39, %5
  %43 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %46 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %50 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %54 = call i64 @ext2fs_write_inode(%struct.TYPE_6__* %51, i32 %52, %struct.ext2_inode* %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i64, i64* %13, align 8
  store i64 %58, i64* %6, align 8
  br label %76

59:                                               ; preds = %42
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @EXT2_FILE_WRITE, align 4
  %63 = call i64 @ext2fs_file_open(%struct.TYPE_6__* %60, i32 %61, i32 %62, i32* %12)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64, i64* %13, align 8
  store i64 %67, i64* %6, align 8
  br label %76

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @ext2fs_file_write(i32 %69, i8* %70, i64 %71, i32 0)
  store i64 %72, i64* %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @ext2fs_file_close(i32 %73)
  %75 = load i64, i64* %13, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %68, %66, %57, %37
  %77 = load i64, i64* %6, align 8
  ret i64 %77
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @ext2fs_has_feature_extents(i32) #1

declare dso_local i64 @ext2fs_extent_open2(%struct.TYPE_6__*, i32, %struct.ext2_inode*, i32*) #1

declare dso_local i32 @ext2fs_extent_free(i32) #1

declare dso_local i64 @ext2fs_write_inode(%struct.TYPE_6__*, i32, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_file_open(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i64 @ext2fs_file_write(i32, i8*, i64, i32) #1

declare dso_local i32 @ext2fs_file_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
