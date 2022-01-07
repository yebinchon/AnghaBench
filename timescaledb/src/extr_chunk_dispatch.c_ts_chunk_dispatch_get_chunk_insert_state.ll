; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk_dispatch.c_ts_chunk_dispatch_get_chunk_insert_state.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk_dispatch.c_ts_chunk_dispatch_get_chunk_insert_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no chunk found or created\00", align 1
@destroy_chunk_insert_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @ts_chunk_dispatch_get_chunk_insert_state(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_15__* @ts_subspace_store_get(i32 %15, i32* %16)
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %7, align 8
  %18 = load i32*, i32** %6, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = icmp eq %struct.TYPE_15__* null, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call %struct.TYPE_17__* @ts_hypertable_get_or_create_chunk(i32 %24, i32* %25)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %8, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = icmp eq %struct.TYPE_17__* null, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @ERROR, align 4
  %31 = call i32 @elog(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %21
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = call %struct.TYPE_15__* @ts_chunk_insert_state_create(%struct.TYPE_17__* %33, %struct.TYPE_16__* %34)
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %7, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = load i32, i32* @destroy_chunk_insert_state, align 4
  %44 = call i32 @ts_subspace_store_add(i32 %38, i32 %41, %struct.TYPE_15__* %42, i32 %43)
  br label %64

45:                                               ; preds = %3
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = icmp eq %struct.TYPE_15__* %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32*, i32** %6, align 8
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %55, %45
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = call i32 @ts_chunk_insert_state_switch(%struct.TYPE_15__* %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = icmp ne %struct.TYPE_15__* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @Assert(i32 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %86
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_15__* @ts_subspace_store_get(i32, i32*) #1

declare dso_local %struct.TYPE_17__* @ts_hypertable_get_or_create_chunk(i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local %struct.TYPE_15__* @ts_chunk_insert_state_create(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ts_subspace_store_add(i32, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @ts_chunk_insert_state_switch(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
