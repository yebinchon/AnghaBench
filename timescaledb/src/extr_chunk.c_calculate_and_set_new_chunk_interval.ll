; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_calculate_and_set_new_chunk_interval.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_calculate_and_set_new_chunk_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64* }

@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"adaptive chunking enabled on hypertable \22%s\22 without an open (time) dimension\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @calculate_and_set_new_chunk_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_and_set_new_chunk_interval(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @OidIsValid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %99

27:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i64 %39
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %7, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = call i64 @IS_OPEN_DIMENSION(%struct.TYPE_16__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %49

45:                                               ; preds = %34
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %28

49:                                               ; preds = %44, %28
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = icmp eq %struct.TYPE_16__* null, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* @WARNING, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @get_rel_name(i32 %56)
  %58 = call i32 @elog(i32 %53, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 0, i32* %3, align 4
  br label %99

59:                                               ; preds = %49
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %10, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @Int32GetDatum(i32 %73)
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @Int64GetDatum(i64 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @Int64GetDatum(i64 %80)
  %82 = call i32 @OidFunctionCall3(i32 %69, i32 %74, i32 %76, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @DatumGetInt64(i32 %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %59
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87, %59
  store i32 0, i32* %3, align 4
  br label %99

95:                                               ; preds = %87
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @ts_dimension_set_chunk_interval(%struct.TYPE_16__* %96, i64 %97)
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %94, %52, %26
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i64 @IS_OPEN_DIMENSION(%struct.TYPE_16__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @OidFunctionCall3(i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Int64GetDatum(i64) #1

declare dso_local i64 @DatumGetInt64(i32) #1

declare dso_local i32 @ts_dimension_set_chunk_interval(%struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
