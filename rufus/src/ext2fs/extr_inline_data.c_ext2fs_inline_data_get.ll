; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_get.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode = type { i64 }
%struct.ext2_inline_data = type { i64, i32, i32, i32 }

@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_inline_data_get(i32 %0, i32 %1, %struct.ext2_inode* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext2_inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.ext2_inode, align 8
  %13 = alloca %struct.ext2_inline_data, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %16 = icmp ne %struct.ext2_inode* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @ext2fs_read_inode(i32 %18, i32 %19, %struct.ext2_inode* %12)
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* %14, align 8
  store i64 %24, i64* %6, align 8
  br label %70

25:                                               ; preds = %17
  store %struct.ext2_inode* %12, %struct.ext2_inode** %9, align 8
  br label %26

26:                                               ; preds = %25, %5
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = call i64 @ext2fs_inline_data_ea_get(%struct.ext2_inline_data* %13)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %6, align 8
  br label %70

36:                                               ; preds = %26
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %39 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %43 = call i32 @memcpy(i8* %37, i8* %41, i64 %42)
  %44 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @memcpy(i8* %50, i8* %54, i64 %56)
  br label %58

58:                                               ; preds = %47, %36
  %59 = load i64*, i64** %11, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %63 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %62, %64
  %66 = load i64*, i64** %11, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %58
  %68 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %13, i32 0, i32 1
  %69 = call i32 @ext2fs_free_mem(i32* %68)
  store i64 0, i64* %6, align 8
  br label %70

70:                                               ; preds = %67, %34, %23
  %71 = load i64, i64* %6, align 8
  ret i64 %71
}

declare dso_local i64 @ext2fs_read_inode(i32, i32, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_inline_data_ea_get(%struct.ext2_inline_data*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ext2fs_free_mem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
