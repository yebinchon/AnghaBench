; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_tables.c_ext2fs_allocate_tables.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_tables.c_ext2fs_allocate_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*)*, i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i64)*, i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)* }
%struct.ext2fs_numeric_progress_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_allocate_tables(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext2fs_numeric_progress_struct, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)*, i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)*, i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 %23(%struct.TYPE_9__* %24, %struct.ext2fs_numeric_progress_struct* %6, i32* null, i64 %27)
  br label %29

29:                                               ; preds = %18, %11, %1
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i64)*, i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i64)** %45, align 8
  %47 = icmp ne i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i64)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i64)*, i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i64)** %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 %53(%struct.TYPE_9__* %54, %struct.ext2fs_numeric_progress_struct* %6, i64 %55)
  br label %57

57:                                               ; preds = %48, %41, %36
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ext2fs_allocate_group_table(%struct.TYPE_9__* %58, i64 %59, i32 %62)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* %4, align 8
  store i64 %67, i64* %2, align 8
  br label %93

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %5, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %30

72:                                               ; preds = %30
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*)*, i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*)** %81, align 8
  %83 = icmp ne i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*)* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*)*, i32 (%struct.TYPE_9__*, %struct.ext2fs_numeric_progress_struct*, i32*)** %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = call i32 %89(%struct.TYPE_9__* %90, %struct.ext2fs_numeric_progress_struct* %6, i32* null)
  br label %92

92:                                               ; preds = %84, %77, %72
  store i64 0, i64* %2, align 8
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

declare dso_local i64 @ext2fs_allocate_group_table(%struct.TYPE_9__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
