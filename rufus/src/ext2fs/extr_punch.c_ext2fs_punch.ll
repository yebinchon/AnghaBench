; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_ext2fs_punch.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_punch.c_ext2fs_punch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode = type { i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_punch(i32 %0, i32 %1, %struct.ext2_inode* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext2_inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ext2_inode, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %13, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i64, i64* @EINVAL, align 8
  store i64 %20, i64* %7, align 8
  br label %79

21:                                               ; preds = %6
  %22 = load %struct.ext2_inode*, %struct.ext2_inode** %10, align 8
  %23 = icmp ne %struct.ext2_inode* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @ext2fs_read_inode(i32 %25, i32 %26, %struct.ext2_inode* %15)
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %14, align 8
  store i64 %31, i64* %7, align 8
  br label %79

32:                                               ; preds = %24
  store %struct.ext2_inode* %15, %struct.ext2_inode** %10, align 8
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.ext2_inode*, %struct.ext2_inode** %10, align 8
  %35 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.ext2_inode*, %struct.ext2_inode** %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @ext2fs_punch_inline_data(i32 %41, i32 %42, %struct.ext2_inode* %43, i64 %44, i64 %45)
  store i64 %46, i64* %7, align 8
  br label %79

47:                                               ; preds = %33
  %48 = load %struct.ext2_inode*, %struct.ext2_inode** %10, align 8
  %49 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ext2_inode*, %struct.ext2_inode** %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @ext2fs_punch_extent(i32 %55, i32 %56, %struct.ext2_inode* %57, i64 %58, i64 %59)
  store i64 %60, i64* %14, align 8
  br label %68

61:                                               ; preds = %47
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.ext2_inode*, %struct.ext2_inode** %10, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @ext2fs_punch_ind(i32 %62, %struct.ext2_inode* %63, i8* %64, i64 %65, i64 %66)
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %61, %54
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %14, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* %14, align 8
  store i64 %73, i64* %7, align 8
  br label %79

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.ext2_inode*, %struct.ext2_inode** %10, align 8
  %78 = call i64 @ext2fs_write_inode(i32 %75, i32 %76, %struct.ext2_inode* %77)
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %74, %72, %40, %30, %19
  %80 = load i64, i64* %7, align 8
  ret i64 %80
}

declare dso_local i64 @ext2fs_read_inode(i32, i32, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_punch_inline_data(i32, i32, %struct.ext2_inode*, i64, i64) #1

declare dso_local i64 @ext2fs_punch_extent(i32, i32, %struct.ext2_inode*, i64, i64) #1

declare dso_local i64 @ext2fs_punch_ind(i32, %struct.ext2_inode*, i8*, i64, i64) #1

declare dso_local i64 @ext2fs_write_inode(i32, i32, %struct.ext2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
