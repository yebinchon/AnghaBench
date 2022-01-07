; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_treefuncs.c_do_load_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_treefuncs.c_do_load_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@NormalPagePriority = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"read_data returned 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"do_load_tree2 returned %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_load_tree(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1, %struct.TYPE_24__* %2, %struct.TYPE_23__* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @PagedPool, align 4
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ALLOC_TAG, align 4
  %23 = call i32* @ExAllocatePoolWithTag(i32 %17, i32 %21, i32 %22)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %28, i32* %7, align 4
  br label %117

29:                                               ; preds = %6
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NormalPagePriority, align 4
  %44 = call i32 @read_data(%struct.TYPE_25__* %30, i32 %33, i32 %37, i32* null, i32 1, i32* %38, i32* null, i32** %16, i32 %39, i32 %42, i32 0, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @NT_SUCCESS(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %14, align 4
  %50 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @ExFreePool(i32* %51)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %7, align 4
  br label %117

54:                                               ; preds = %29
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %56 = icmp ne %struct.TYPE_23__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = call i32 @ExAcquireFastMutex(i32* %61)
  br label %69

63:                                               ; preds = %54
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = call i32 @ExAcquireResourceExclusiveLite(i32* %67, i32 1)
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @do_load_tree2(%struct.TYPE_25__* %70, %struct.TYPE_22__* %71, i32* %72, %struct.TYPE_24__* %73, %struct.TYPE_23__* %74, i32* %75)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %78 = icmp ne %struct.TYPE_23__* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = call i32 @ExReleaseFastMutex(i32* %83)
  br label %91

85:                                               ; preds = %69
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = call i32 @ExReleaseResourceLite(i32* %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = icmp ne %struct.TYPE_21__* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = icmp ne i32* %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96, %91
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @ExFreePool(i32* %105)
  br label %107

107:                                              ; preds = %104, %96
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @NT_SUCCESS(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %14, align 4
  %113 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %7, align 4
  br label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %115, %111, %48, %26
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @read_data(%struct.TYPE_25__*, i32, i32, i32*, i32, i32*, i32*, i32**, i32, i32, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePool(i32*) #1

declare dso_local i32 @ExAcquireFastMutex(i32*) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @do_load_tree2(%struct.TYPE_25__*, %struct.TYPE_22__*, i32*, %struct.TYPE_24__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ExReleaseFastMutex(i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
