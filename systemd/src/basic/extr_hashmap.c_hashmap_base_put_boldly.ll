; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_base_put_boldly.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_base_put_boldly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.swap_entries = type { i32 }
%struct.ordered_hashmap_entry = type { i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64 }

@IDX_PUT = common dso_local global i8* null, align 8
@HASHMAP_TYPE_ORDERED = common dso_local global i64 0, align 8
@IDX_NIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, %struct.swap_entries*, i32)* @hashmap_base_put_boldly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashmap_base_put_boldly(%struct.TYPE_19__* %0, i32 %1, %struct.swap_entries* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.swap_entries*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ordered_hashmap_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.ordered_hashmap_entry*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.swap_entries* %2, %struct.swap_entries** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = call i64 @n_buckets(%struct.TYPE_19__* %16)
  %18 = icmp slt i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.swap_entries*, %struct.swap_entries** %8, align 8
  %22 = load i8*, i8** @IDX_PUT, align 8
  %23 = call %struct.ordered_hashmap_entry* @bucket_at_swap(%struct.swap_entries* %21, i8* %22)
  store %struct.ordered_hashmap_entry* %23, %struct.ordered_hashmap_entry** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = call i32 @resize_buckets(%struct.TYPE_19__* %27, i32 1)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %119

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %10, align 8
  %39 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bucket_hash(%struct.TYPE_19__* %37, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %33
  br label %45

45:                                               ; preds = %44, %4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = call i64 @n_entries(%struct.TYPE_19__* %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = call i64 @n_buckets(%struct.TYPE_19__* %48)
  %50 = icmp slt i64 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HASHMAP_TYPE_ORDERED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %107

58:                                               ; preds = %45
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = bitcast %struct.TYPE_19__* %59 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %12, align 8
  %61 = load i64, i64* @IDX_NIL, align 8
  %62 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %10, align 8
  %63 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %10, align 8
  %68 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IDX_NIL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %58
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call %struct.ordered_hashmap_entry* @ordered_bucket_at(%struct.TYPE_18__* %75, i64 %78)
  store %struct.ordered_hashmap_entry* %79, %struct.ordered_hashmap_entry** %13, align 8
  %80 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %13, align 8
  %81 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IDX_NIL, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i8*, i8** @IDX_PUT, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.ordered_hashmap_entry*, %struct.ordered_hashmap_entry** %13, align 8
  %90 = getelementptr inbounds %struct.ordered_hashmap_entry, %struct.ordered_hashmap_entry* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %74, %58
  %92 = load i8*, i8** @IDX_PUT, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IDX_NIL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load i8*, i8** @IDX_PUT, align 8
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %91
  br label %107

107:                                              ; preds = %106, %45
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.swap_entries*, %struct.swap_entries** %8, align 8
  %111 = call i32 @hashmap_put_robin_hood(%struct.TYPE_19__* %108, i32 %109, %struct.swap_entries* %110)
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert_se(i32 %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %116 = call i32 @n_entries_inc(%struct.TYPE_19__* %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %118 = call i32 @base_set_dirty(%struct.TYPE_19__* %117)
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %107, %31
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @n_buckets(%struct.TYPE_19__*) #1

declare dso_local %struct.ordered_hashmap_entry* @bucket_at_swap(%struct.swap_entries*, i8*) #1

declare dso_local i32 @resize_buckets(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @bucket_hash(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @n_entries(%struct.TYPE_19__*) #1

declare dso_local %struct.ordered_hashmap_entry* @ordered_bucket_at(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @hashmap_put_robin_hood(%struct.TYPE_19__*, i32, %struct.swap_entries*) #1

declare dso_local i32 @n_entries_inc(%struct.TYPE_19__*) #1

declare dso_local i32 @base_set_dirty(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
