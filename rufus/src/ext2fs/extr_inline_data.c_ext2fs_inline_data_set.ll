; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_set.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode = type { i64 }
%struct.ext2_inline_data = type { i64, i8*, i32, i32 }

@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i64 0, align 8
@EXT2_ET_INLINE_DATA_NO_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_inline_data_set(i32 %0, i32 %1, %struct.ext2_inode* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext2_inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ext2_inode, align 8
  %13 = alloca %struct.ext2_inline_data, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 1
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 3
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %25 = icmp ne %struct.ext2_inode* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @ext2fs_read_inode(i32 %27, i32 %28, %struct.ext2_inode* %12)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %14, align 8
  store i64 %33, i64* %6, align 8
  br label %118

34:                                               ; preds = %26
  store %struct.ext2_inode* %12, %struct.ext2_inode** %9, align 8
  br label %35

35:                                               ; preds = %34, %5
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %41 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @memcpy(i8* %43, i8* %44, i64 %45)
  br label %107

47:                                               ; preds = %35
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @ext2fs_xattr_inode_max_size(i32 %48, i32 %49, i64* %15)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %14, align 8
  store i64 %54, i64* %6, align 8
  br label %118

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @ext2fs_inline_data_size(i32 %56, i32 %57, i64* %16)
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %6, align 8
  br label %118

63:                                               ; preds = %55
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %69 = load i64, i64* %16, align 8
  %70 = sub i64 %68, %69
  store i64 %70, i64* %17, align 8
  br label %72

71:                                               ; preds = %63
  store i64 0, i64* %17, align 8
  br label %72

72:                                               ; preds = %71, %67
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %15, align 8
  %80 = add i64 %78, %79
  %81 = load i64, i64* %17, align 8
  %82 = add i64 %80, %81
  %83 = icmp ugt i64 %77, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i64, i64* @EXT2_ET_INLINE_DATA_NO_SPACE, align 8
  store i64 %85, i64* %6, align 8
  br label %118

86:                                               ; preds = %76, %72
  %87 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %88 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %93 = call i32 @memcpy(i8* %90, i8* %91, i64 %92)
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %100 = sub i64 %98, %99
  %101 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %86
  %103 = load i8*, i8** %10, align 8
  %104 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %102, %39
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %111 = call i64 @ext2fs_write_inode(i32 %108, i32 %109, %struct.ext2_inode* %110)
  store i64 %111, i64* %14, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i64, i64* %14, align 8
  store i64 %115, i64* %6, align 8
  br label %118

116:                                              ; preds = %107
  %117 = call i64 @ext2fs_inline_data_ea_set(%struct.ext2_inline_data* %13)
  store i64 %117, i64* %6, align 8
  br label %118

118:                                              ; preds = %116, %114, %84, %61, %53, %32
  %119 = load i64, i64* %6, align 8
  ret i64 %119
}

declare dso_local i64 @ext2fs_read_inode(i32, i32, %struct.ext2_inode*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @ext2fs_xattr_inode_max_size(i32, i32, i64*) #1

declare dso_local i64 @ext2fs_inline_data_size(i32, i32, i64*) #1

declare dso_local i64 @ext2fs_write_inode(i32, i32, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_inline_data_ea_set(%struct.ext2_inline_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
