; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_size.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode = type { i32 }
%struct.ext2_inline_data = type { i64, i32, i32, i32 }

@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EXT2_ET_NO_INLINE_DATA = common dso_local global i64 0, align 8
@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_inline_data_size(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ext2_inode, align 4
  %9 = alloca %struct.ext2_inline_data, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @ext2fs_read_inode(i32 %11, i32 %12, %struct.ext2_inode* %8)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %4, align 8
  br label %44

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* @EXT2_ET_NO_INLINE_DATA, align 8
  store i64 %25, i64* %4, align 8
  br label %44

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %9, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %9, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = call i64 @ext2fs_inline_data_ea_get(%struct.ext2_inline_data* %9)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %4, align 8
  br label %44

36:                                               ; preds = %26
  %37 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %38 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %37, %39
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %9, i32 0, i32 1
  %43 = call i64 @ext2fs_free_mem(i32* %42)
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %36, %34, %24, %16
  %45 = load i64, i64* %4, align 8
  ret i64 %45
}

declare dso_local i64 @ext2fs_read_inode(i32, i32, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_inline_data_ea_get(%struct.ext2_inline_data*) #1

declare dso_local i64 @ext2fs_free_mem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
