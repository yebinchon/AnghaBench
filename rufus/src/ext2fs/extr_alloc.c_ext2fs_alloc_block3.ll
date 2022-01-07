; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_alloc_block3.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc.c_ext2fs_alloc_block3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64 (%struct.TYPE_9__*, i32, i32*)*, i64 (%struct.TYPE_9__*, i32, i32*, %struct.blk_alloc_ctx*)* }
%struct.blk_alloc_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_alloc_block3(%struct.TYPE_9__* %0, i32 %1, i8* %2, i32* %3, %struct.blk_alloc_ctx* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.blk_alloc_ctx*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.blk_alloc_ctx* %4, %struct.blk_alloc_ctx** %10, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = load i64 (%struct.TYPE_9__*, i32, i32*, %struct.blk_alloc_ctx*)*, i64 (%struct.TYPE_9__*, i32, i32*, %struct.blk_alloc_ctx*)** %14, align 8
  %16 = icmp ne i64 (%struct.TYPE_9__*, i32, i32*, %struct.blk_alloc_ctx*)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load i64 (%struct.TYPE_9__*, i32, i32*, %struct.blk_alloc_ctx*)*, i64 (%struct.TYPE_9__*, i32, i32*, %struct.blk_alloc_ctx*)** %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.blk_alloc_ctx*, %struct.blk_alloc_ctx** %10, align 8
  %24 = call i64 %20(%struct.TYPE_9__* %21, i32 %22, i32* %12, %struct.blk_alloc_ctx* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %96

28:                                               ; preds = %17
  br label %67

29:                                               ; preds = %5
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i64 (%struct.TYPE_9__*, i32, i32*)*, i64 (%struct.TYPE_9__*, i32, i32*)** %31, align 8
  %33 = icmp ne i64 (%struct.TYPE_9__*, i32, i32*)* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i64 (%struct.TYPE_9__*, i32, i32*)*, i64 (%struct.TYPE_9__*, i32, i32*)** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 %37(%struct.TYPE_9__* %38, i32 %39, i32* %12)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %96

44:                                               ; preds = %34
  br label %66

45:                                               ; preds = %29
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = call i64 @ext2fs_read_block_bitmap(%struct.TYPE_9__* %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %96

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %45
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.blk_alloc_ctx*, %struct.blk_alloc_ctx** %10, align 8
  %61 = call i64 @ext2fs_new_block3(%struct.TYPE_9__* %58, i32 %59, i32 0, i32* %12, %struct.blk_alloc_ctx* %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %96

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66, %28
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memset(i8* %71, i32 0, i32 %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = call i64 @io_channel_write_blk64(i32 %78, i32 %79, i32 1, i8* %80)
  store i64 %81, i64* %11, align 8
  br label %86

82:                                               ; preds = %67
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @ext2fs_zero_blocks2(%struct.TYPE_9__* %83, i32 %84, i32 1, i32* null, i32* null)
  store i64 %85, i64* %11, align 8
  br label %86

86:                                               ; preds = %82, %70
  %87 = load i64, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %96

90:                                               ; preds = %86
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @ext2fs_block_alloc_stats2(%struct.TYPE_9__* %91, i32 %92, i32 1)
  %94 = load i32, i32* %12, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %89, %64, %55, %43, %27
  %97 = load i64, i64* %11, align 8
  ret i64 %97
}

declare dso_local i64 @ext2fs_read_block_bitmap(%struct.TYPE_9__*) #1

declare dso_local i64 @ext2fs_new_block3(%struct.TYPE_9__*, i32, i32, i32*, %struct.blk_alloc_ctx*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @io_channel_write_blk64(i32, i32, i32, i8*) #1

declare dso_local i64 @ext2fs_zero_blocks2(%struct.TYPE_9__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ext2fs_block_alloc_stats2(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
