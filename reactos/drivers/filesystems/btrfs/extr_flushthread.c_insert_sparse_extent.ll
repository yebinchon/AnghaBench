; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_insert_sparse_extent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_insert_sparse_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"((%I64x, %I64x), %I64x, %I64x)\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@BTRFS_COMPRESSION_NONE = common dso_local global i32 0, align 4
@BTRFS_ENCRYPTION_NONE = common dso_local global i32 0, align 4
@BTRFS_ENCODING_NONE = common dso_local global i32 0, align 4
@EXTENT_TYPE_REGULAR = common dso_local global i32 0, align 4
@TYPE_EXTENT_DATA = common dso_local global i32 0, align 4
@Batch_Insert = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"insert_tree_item_batch returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i8*, i8*)* @insert_sparse_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_sparse_extent(%struct.TYPE_12__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i8* %21, i8* %22)
  %24 = load i32, i32* @PagedPool, align 4
  %25 = load i32, i32* @ALLOC_TAG, align 4
  %26 = call %struct.TYPE_14__* @ExAllocatePoolWithTag(i32 %24, i32 71, i32 %25)
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %11, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %31, i32* %5, align 4
  br label %95

32:                                               ; preds = %4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @BTRFS_COMPRESSION_NONE, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @BTRFS_ENCRYPTION_NONE, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @BTRFS_ENCODING_NONE, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @EXTENT_TYPE_REGULAR, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %12, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TYPE_EXTENT_DATA, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %82 = load i32, i32* @Batch_Insert, align 4
  %83 = call i32 @insert_tree_item_batch(i32* %69, %struct.TYPE_15__* %72, %struct.TYPE_16__* %75, i32 %78, i32 %79, i8* %80, %struct.TYPE_14__* %81, i32 71, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @NT_SUCCESS(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %32
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %91 = call i32 @ExFreePool(%struct.TYPE_14__* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %95

93:                                               ; preds = %32
  %94 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %87, %29
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @TRACE(i8*, i32, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_14__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @insert_tree_item_batch(i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32, i8*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
