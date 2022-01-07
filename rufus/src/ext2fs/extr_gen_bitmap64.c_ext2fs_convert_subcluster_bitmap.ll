; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_convert_subcluster_bitmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap64.c_ext2fs_convert_subcluster_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"converted cluster bitmap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_convert_subcluster_bitmap(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %6, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @ext2fs_get_bitmap_granularity(i64 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %104

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = call i64 @ext2fs_allocate_block_bitmap(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64* %9)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %3, align 8
  br label %104

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  store i32 0, i32* %14, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 1, %59
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %91, %72, %34
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %61
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @ext2fs_test_block_bitmap2(i64 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @ext2fs_mark_block_bitmap2(i64 %73, i64 %74)
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %11, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %11, align 8
  store i32 0, i32* %14, align 4
  br label %61

82:                                               ; preds = %67
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %11, align 8
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %90, %82
  br label %61

92:                                               ; preds = %61
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @ext2fs_free_block_bitmap(i64 %99)
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = ptrtoint %struct.TYPE_5__* %101 to i64
  %103 = load i64*, i64** %5, align 8
  store i64 %102, i64* %103, align 8
  store i64 0, i64* %3, align 8
  br label %104

104:                                              ; preds = %92, %32, %26
  %105 = load i64, i64* %3, align 8
  ret i64 %105
}

declare dso_local i64 @ext2fs_get_bitmap_granularity(i64) #1

declare dso_local i64 @ext2fs_allocate_block_bitmap(%struct.TYPE_6__*, i8*, i64*) #1

declare dso_local i64 @ext2fs_test_block_bitmap2(i64, i64) #1

declare dso_local i32 @ext2fs_mark_block_bitmap2(i64, i64) #1

declare dso_local i32 @ext2fs_free_block_bitmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
