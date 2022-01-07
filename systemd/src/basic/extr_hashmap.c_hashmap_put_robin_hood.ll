; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_put_robin_hood.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_put_robin_hood.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i64, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.swap_entries = type { i32 }

@DIB_RAW_FREE = common dso_local global i32 0, align 4
@DIB_RAW_REHASH = common dso_local global i64 0, align 8
@IDX_TMP = common dso_local global i32 0, align 4
@IDX_PUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, %struct.swap_entries*)* @hashmap_put_robin_hood to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashmap_put_robin_hood(%struct.TYPE_12__* %0, i32 %1, %struct.swap_entries* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.swap_entries*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.swap_entries* %2, %struct.swap_entries** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = call i64* @dib_raw_ptr(%struct.TYPE_12__* %12)
  store i64* %13, i64** %9, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %105, %3
  %15 = load i64*, i64** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @DIB_RAW_FREE, align 4
  %22 = load i64, i64* @DIB_RAW_REHASH, align 8
  %23 = call i64 @IN_SET(i64 %20, i32 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %14
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @DIB_RAW_REHASH, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = load %struct.swap_entries*, %struct.swap_entries** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IDX_TMP, align 4
  %34 = call i32 @bucket_move_entry(%struct.TYPE_12__* %30, %struct.swap_entries* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %52

52:                                               ; preds = %47, %40, %35
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @bucket_set_dib(%struct.TYPE_12__* %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = load %struct.swap_entries*, %struct.swap_entries** %7, align 8
  %59 = load i32, i32* @IDX_PUT, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @bucket_move_entry(%struct.TYPE_12__* %57, %struct.swap_entries* %58, i32 %59, i32 %60)
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @DIB_RAW_REHASH, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = load %struct.swap_entries*, %struct.swap_entries** %7, align 8
  %68 = load i32, i32* @IDX_TMP, align 4
  %69 = load i32, i32* @IDX_PUT, align 4
  %70 = call i32 @bucket_move_entry(%struct.TYPE_12__* %66, %struct.swap_entries* %67, i32 %68, i32 %69)
  store i32 1, i32* %4, align 4
  br label %108

71:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %108

72:                                               ; preds = %14
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @bucket_calculate_dib(%struct.TYPE_12__* %73, i32 %74, i64 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %72
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @bucket_set_dib(%struct.TYPE_12__* %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = load %struct.swap_entries*, %struct.swap_entries** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @IDX_TMP, align 4
  %89 = call i32 @bucket_move_entry(%struct.TYPE_12__* %85, %struct.swap_entries* %86, i32 %87, i32 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = load %struct.swap_entries*, %struct.swap_entries** %7, align 8
  %92 = load i32, i32* @IDX_PUT, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @bucket_move_entry(%struct.TYPE_12__* %90, %struct.swap_entries* %91, i32 %92, i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = load %struct.swap_entries*, %struct.swap_entries** %7, align 8
  %97 = load i32, i32* @IDX_TMP, align 4
  %98 = load i32, i32* @IDX_PUT, align 4
  %99 = call i32 @bucket_move_entry(%struct.TYPE_12__* %95, %struct.swap_entries* %96, i32 %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %80, %72
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @next_idx(%struct.TYPE_12__* %102, i32 %103)
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %14

108:                                              ; preds = %71, %65
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64* @dib_raw_ptr(%struct.TYPE_12__*) #1

declare dso_local i64 @IN_SET(i64, i32, i64) #1

declare dso_local i32 @bucket_move_entry(%struct.TYPE_12__*, %struct.swap_entries*, i32, i32) #1

declare dso_local i32 @bucket_set_dib(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @bucket_calculate_dib(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @next_idx(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
