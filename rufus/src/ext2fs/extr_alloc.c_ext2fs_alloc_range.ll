; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_alloc_range.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_alloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT2_NEWRANGE_MIN_LENGTH = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_ALLOCRANGE_ALL_FLAGS = common dso_local global i32 0, align 4
@EXT2_ET_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@EXT2_ALLOCRANGE_FIXED_GOAL = common dso_local global i32 0, align 4
@EXT2_NEWRANGE_FIXED_GOAL = common dso_local global i32 0, align 4
@EXT2_ET_BLOCK_ALLOC_FAIL = common dso_local global i64 0, align 8
@EXT2_ALLOCRANGE_ZERO_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_alloc_range(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @EXT2_NEWRANGE_MIN_LENGTH, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %18 = call i32 @EXT2_CHECK_MAGIC(i32 %16, i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @EXT2_ALLOCRANGE_ALL_FLAGS, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %5
  %28 = load i64, i64* @EXT2_ET_INVALID_ARGUMENT, align 8
  store i64 %28, i64* %6, align 8
  br label %78

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EXT2_ALLOCRANGE_FIXED_GOAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @EXT2_NEWRANGE_FIXED_GOAL, align 4
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @ext2fs_new_range(i32 %39, i32 %40, i32 %41, i32 %42, i32* null, i32* %43, i32* %14)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i64, i64* %13, align 8
  store i64 %48, i64* %6, align 8
  br label %78

49:                                               ; preds = %38
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @EXT2_ET_BLOCK_ALLOC_FAIL, align 8
  store i64 %54, i64* %6, align 8
  br label %78

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @EXT2_ALLOCRANGE_ZERO_BLOCKS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @ext2fs_zero_blocks2(i32 %61, i32 %63, i32 %64, i32* null, i32* null)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i64, i64* %13, align 8
  store i64 %69, i64* %6, align 8
  br label %78

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ext2fs_block_alloc_stats_range(i32 %72, i32 %74, i32 %75, i32 1)
  %77 = load i64, i64* %13, align 8
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %71, %68, %53, %47, %27
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i32 @EXT2_CHECK_MAGIC(i32, i32) #1

declare dso_local i64 @ext2fs_new_range(i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @ext2fs_zero_blocks2(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ext2fs_block_alloc_stats_range(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
