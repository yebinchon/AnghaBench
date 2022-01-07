; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_reduce_tree_extent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_reduce_tree_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"(%p, %I64x, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"error - refcount for extent %I64x was 0\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"decrease_extent_refcount_tree returned %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"load_cache_chunk returned %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"could not find chunk for address %I64x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32, %struct.TYPE_23__*, i32, i32, i32, i32*)* @reduce_tree_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reduce_tree_extent(%struct.TYPE_24__* %0, i32 %1, %struct.TYPE_23__* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %20, i32 %21, %struct.TYPE_23__* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @get_extent_refcount(%struct.TYPE_24__* %24, i32 %25, i32 %29, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %7
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %37, i32* %8, align 4
  br label %129

38:                                               ; preds = %7
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %40 = icmp ne %struct.TYPE_23__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %18, align 4
  br label %53

48:                                               ; preds = %41
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %48, %46
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @decrease_extent_refcount_tree(%struct.TYPE_24__* %54, i32 %55, i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @NT_SUCCESS(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %8, align 4
  br label %129

71:                                               ; preds = %53
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %127

74:                                               ; preds = %71
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call %struct.TYPE_25__* @get_chunk_from_address(%struct.TYPE_24__* %75, i32 %76)
  store %struct.TYPE_25__* %77, %struct.TYPE_25__** %19, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %79 = icmp ne %struct.TYPE_25__* %78, null
  br i1 %79, label %80, label %123

80:                                               ; preds = %74
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %83 = call i32 @acquire_chunk_lock(%struct.TYPE_25__* %81, %struct.TYPE_24__* %82)
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %80
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %91 = call i32 @load_cache_chunk(%struct.TYPE_24__* %89, %struct.TYPE_25__* %90, i32* null)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @NT_SUCCESS(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %100 = call i32 @release_chunk_lock(%struct.TYPE_25__* %98, %struct.TYPE_24__* %99)
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %8, align 4
  br label %129

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %80
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = call i32 @space_list_add(%struct.TYPE_25__* %112, i32 %113, i32 %117, i32* %118)
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %122 = call i32 @release_chunk_lock(%struct.TYPE_25__* %120, %struct.TYPE_24__* %121)
  br label %126

123:                                              ; preds = %74
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %103
  br label %127

127:                                              ; preds = %126, %71
  %128 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %127, %95, %67, %34
  %130 = load i32, i32* %8, align 4
  ret i32 %130
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_24__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @get_extent_refcount(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @decrease_extent_refcount_tree(%struct.TYPE_24__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local %struct.TYPE_25__* @get_chunk_from_address(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @acquire_chunk_lock(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @load_cache_chunk(%struct.TYPE_24__*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32 @release_chunk_lock(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @space_list_add(%struct.TYPE_25__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
