; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_get_free_blocks2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_get_free_blocks2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_ET_NO_BLOCK_BITMAP = common dso_local global i32 0, align 4
@EXT2_ET_BLOCK_ALLOC_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_get_free_blocks2(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %19 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_5__* %17, i32 %18)
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %22, %6
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EXT2_ET_NO_BLOCK_BITMAP, align 4
  store i32 %30, i32* %7, align 4
  br label %104

31:                                               ; preds = %26
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @ext2fs_get_bitmap_granularity(i64 %50)
  %52 = shl i32 1, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = sub nsw i32 %53, 1
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %14, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 %58, 1
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %98, %49
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @ext2fs_blocks_count(%struct.TYPE_6__* %70)
  %72 = icmp sge i32 %67, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %63
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @EXT2_ET_BLOCK_ALLOC_FAIL, align 4
  store i32 %78, i32* %7, align 4
  br label %104

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %79, %63
  %86 = load i64, i64* %12, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @ext2fs_fast_test_block_bitmap_range2(i64 %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  store i32 0, i32* %7, align 4
  br label %104

94:                                               ; preds = %85
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %63, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @EXT2_ET_BLOCK_ALLOC_FAIL, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %91, %77, %29
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ext2fs_get_bitmap_granularity(i64) #1

declare dso_local i32 @ext2fs_blocks_count(%struct.TYPE_6__*) #1

declare dso_local i64 @ext2fs_fast_test_block_bitmap_range2(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
