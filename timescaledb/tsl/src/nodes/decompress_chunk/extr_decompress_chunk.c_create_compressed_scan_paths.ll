; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/nodes/decompress_chunk/extr_decompress_chunk.c_create_compressed_scan_paths.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/nodes/decompress_chunk/extr_decompress_chunk.c_create_compressed_scan_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32*, i64 }
%struct.TYPE_24__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i32*, %struct.TYPE_21__*)* @create_compressed_scan_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_compressed_scan_paths(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2, i32* %3, %struct.TYPE_21__* %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %10, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %15 = call %struct.TYPE_24__* @create_seqscan_path(%struct.TYPE_23__* %13, %struct.TYPE_22__* %14, i32* null, i32 0)
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %11, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %18 = call i32 @add_path(%struct.TYPE_22__* %16, %struct.TYPE_24__* %17)
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.TYPE_24__* @create_seqscan_path(%struct.TYPE_23__* %27, %struct.TYPE_22__* %28, i32* null, i32 %29)
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %11, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @Assert(i32 %33)
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %37 = call i32 @add_partial_path(%struct.TYPE_22__* %35, %struct.TYPE_24__* %36)
  br label %38

38:                                               ; preds = %26, %23, %5
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %12, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @build_compressed_scan_pathkeys(%struct.TYPE_21__* %47, %struct.TYPE_23__* %48, i32* %51, i32* %52)
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %61 = call i32 @check_index_predicates(%struct.TYPE_23__* %59, %struct.TYPE_22__* %60)
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = call i32 @create_index_paths(%struct.TYPE_23__* %62, %struct.TYPE_22__* %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  br label %75

68:                                               ; preds = %38
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = call i32 @check_index_predicates(%struct.TYPE_23__* %69, %struct.TYPE_22__* %70)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = call i32 @create_index_paths(%struct.TYPE_23__* %72, %struct.TYPE_22__* %73)
  br label %75

75:                                               ; preds = %68, %43
  ret void
}

declare dso_local %struct.TYPE_24__* @create_seqscan_path(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @add_path(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @add_partial_path(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @build_compressed_scan_pathkeys(%struct.TYPE_21__*, %struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @check_index_predicates(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @create_index_paths(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
