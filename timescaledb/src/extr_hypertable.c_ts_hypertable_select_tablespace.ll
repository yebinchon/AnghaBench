; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_select_tablespace.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_hypertable.c_ts_hypertable_select_tablespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_hypertable_select_tablespace(%struct.TYPE_24__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_23__* @ts_tablespace_scan(i32 %14)
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %17 = icmp eq %struct.TYPE_23__* null, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  store i32* null, i32** %3, align 8
  br label %106

24:                                               ; preds = %18
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_27__* @hyperspace_get_closed_dimension(i32 %27, i32 0)
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %6, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %30 = icmp eq %struct.TYPE_27__* null, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_27__* @hyperspace_get_open_dimension(i32 %34, i32 0)
  store %struct.TYPE_27__* %35, %struct.TYPE_27__** %6, align 8
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %38 = icmp ne %struct.TYPE_27__* null, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %41 = call i64 @IS_OPEN_DIMENSION(%struct.TYPE_27__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i1 [ true, %39 ], [ %48, %43 ]
  br label %51

51:                                               ; preds = %49, %36
  %52 = phi i1 [ false, %36 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %56 = call %struct.TYPE_25__* @ts_dimension_get_slices(%struct.TYPE_27__* %55)
  store %struct.TYPE_25__* %56, %struct.TYPE_25__** %7, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %58 = icmp ne %struct.TYPE_25__* null, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %61 = call i64 @IS_OPEN_DIMENSION(%struct.TYPE_27__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i1 [ true, %59 ], [ %67, %63 ]
  br label %70

70:                                               ; preds = %68, %51
  %71 = phi i1 [ false, %51 ], [ %69, %68 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @Assert(i32 %72)
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_26__* @ts_hypercube_get_slice_by_dimension_id(i32 %76, i32 %80)
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %8, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %83 = icmp ne %struct.TYPE_26__* null, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ts_dimension_vec_find_slice_index(%struct.TYPE_25__* %86, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sge i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @Assert(i32 %94)
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = srem i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %98, i64 %104
  store i32* %105, i32** %3, align 8
  br label %106

106:                                              ; preds = %70, %23
  %107 = load i32*, i32** %3, align 8
  ret i32* %107
}

declare dso_local %struct.TYPE_23__* @ts_tablespace_scan(i32) #1

declare dso_local %struct.TYPE_27__* @hyperspace_get_closed_dimension(i32, i32) #1

declare dso_local %struct.TYPE_27__* @hyperspace_get_open_dimension(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IS_OPEN_DIMENSION(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_25__* @ts_dimension_get_slices(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_26__* @ts_hypercube_get_slice_by_dimension_id(i32, i32) #1

declare dso_local i32 @ts_dimension_vec_find_slice_index(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
