; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_find.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_chunk.c_ts_chunk_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ts_chunk_find(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @chunk_scan_ctx_init(%struct.TYPE_16__* %6, %struct.TYPE_15__* %7, i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @chunk_point_scan(%struct.TYPE_16__* %6, i32* %11)
  %13 = call %struct.TYPE_17__* @chunk_scan_ctx_get_chunk(%struct.TYPE_16__* %6)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %5, align 8
  %14 = call i32 @chunk_scan_ctx_destroy(%struct.TYPE_16__* %6)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = icmp ne %struct.TYPE_17__* null, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = call i32 @chunk_fill_stub(%struct.TYPE_17__* %18, i32 0)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CurrentMemoryContext, align 4
  %28 = call i32 @ts_chunk_constraint_scan_by_chunk_id(i32 %23, i32 %26, i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %17, %2
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  ret %struct.TYPE_17__* %32
}

declare dso_local i32 @chunk_scan_ctx_init(%struct.TYPE_16__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @chunk_point_scan(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_17__* @chunk_scan_ctx_get_chunk(%struct.TYPE_16__*) #1

declare dso_local i32 @chunk_scan_ctx_destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @chunk_fill_stub(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ts_chunk_constraint_scan_by_chunk_id(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
