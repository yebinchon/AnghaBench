; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_insert_tree_extent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_insert_tree_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__, i32, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"(%p, %x, %I64x, %p, %p, %p, %p)\0A\00", align 1
@BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA = common dso_local global i32 0, align 4
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@EXTENT_ITEM_TREE_BLOCK = common dso_local global i32 0, align 4
@TYPE_TREE_BLOCK_REF = common dso_local global i32 0, align 4
@TYPE_EXTENT_ITEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"insert_tree_item returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32, i32, i32*, i32*, i32, i32*)* @insert_tree_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_tree_extent(%struct.TYPE_24__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca %struct.TYPE_23__, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %21, i32 %22, i32 %23, i32* %24, i32* %25, i32* %26)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @find_metadata_address_in_chunk(%struct.TYPE_24__* %28, i32* %29, i32* %17)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %135

33:                                               ; preds = %7
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BTRFS_INCOMPAT_FLAGS_SKINNY_METADATA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @insert_tree_extent_skinny(%struct.TYPE_24__* %42, i32 %43, i32 %44, i32* %45, i32 %46, i32 %47, i32* %48)
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* %17, align 4
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %41
  %56 = load i32, i32* %20, align 4
  store i32 %56, i32* %8, align 4
  br label %135

57:                                               ; preds = %33
  %58 = load i32, i32* @PagedPool, align 4
  %59 = load i32, i32* @ALLOC_TAG, align 4
  %60 = call %struct.TYPE_25__* @ExAllocatePoolWithTag(i32 %58, i32 24, i32 %59)
  store %struct.TYPE_25__* %60, %struct.TYPE_25__** %18, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %62 = icmp ne %struct.TYPE_25__* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %135

65:                                               ; preds = %57
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @EXTENT_ITEM_TREE_BLOCK, align 4
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @TYPE_TREE_BLOCK_REF, align 4
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* @TYPE_EXTENT_ITEM, align 4
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @insert_tree_item(%struct.TYPE_24__* %94, i32 %97, i32 %98, i32 %99, i32 %103, %struct.TYPE_25__* %104, i32 24, %struct.TYPE_23__* %19, i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @NT_SUCCESS(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %65
  %111 = load i32, i32* %16, align 4
  %112 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %114 = call i32 @ExFreePool(%struct.TYPE_25__* %113)
  store i32 0, i32* %8, align 4
  br label %135

115:                                              ; preds = %65
  %116 = load i32*, i32** %12, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %118 = call i32 @acquire_chunk_lock(i32* %116, %struct.TYPE_24__* %117)
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = call i32 @space_list_subtract(i32* %119, i32 0, i32 %120, i32 %124, i32* %125)
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %129 = call i32 @release_chunk_lock(i32* %127, %struct.TYPE_24__* %128)
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @add_parents_to_cache(i32 %131)
  %133 = load i32, i32* %17, align 4
  %134 = load i32*, i32** %13, align 8
  store i32 %133, i32* %134, align 4
  store i32 1, i32* %8, align 4
  br label %135

135:                                              ; preds = %115, %110, %63, %55, %32
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_24__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @find_metadata_address_in_chunk(%struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i32 @insert_tree_extent_skinny(%struct.TYPE_24__*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_25__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @insert_tree_item(%struct.TYPE_24__*, i32, i32, i32, i32, %struct.TYPE_25__*, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_25__*) #1

declare dso_local i32 @acquire_chunk_lock(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @space_list_subtract(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @release_chunk_lock(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @add_parents_to_cache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
