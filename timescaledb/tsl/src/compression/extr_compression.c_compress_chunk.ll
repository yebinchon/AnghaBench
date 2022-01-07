; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_compress_chunk.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_compress_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compress_chunk(i32 %0, i32 %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @ExclusiveLock, align 4
  %20 = call i32 @relation_open(i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ExclusiveLock, align 4
  %23 = call i32 @relation_open(i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32**, i32*** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32* @compress_chunk_populate_keys(i32 %24, i32** %25, i32 %26, i32* %9, i32*** %10)
  store i32* %27, i32** %13, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.TYPE_5__* @RelationGetDescr(i32 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %14, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call %struct.TYPE_5__* @RelationGetDescr(i32 %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %15, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32**, i32*** %10, align 8
  %35 = call i32* @compress_chunk_sort_relation(i32 %32, i32 %33, i32** %34)
  store i32* %35, i32** %16, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @Assert(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @row_compressor_init(i32* %17, %struct.TYPE_5__* %50, i32 %51, i32 %52, i32** %53, i32* %54, i32 %57)
  %59 = load i32*, i32** %16, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %61 = call i32 @row_compressor_append_sorted_rows(i32* %17, i32* %59, %struct.TYPE_5__* %60)
  %62 = call i32 @row_compressor_finish(i32* %17)
  %63 = load i32*, i32** %16, align 8
  %64 = call i32 @tuplesort_end(i32* %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @truncate_relation(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @reindex_relation(i32 %67, i32 0, i32 0)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @RelationClose(i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @RelationClose(i32 %71)
  ret void
}

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32* @compress_chunk_populate_keys(i32, i32**, i32, i32*, i32***) #1

declare dso_local %struct.TYPE_5__* @RelationGetDescr(i32) #1

declare dso_local i32* @compress_chunk_sort_relation(i32, i32, i32**) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @row_compressor_init(i32*, %struct.TYPE_5__*, i32, i32, i32**, i32*, i32) #1

declare dso_local i32 @row_compressor_append_sorted_rows(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @row_compressor_finish(i32*) #1

declare dso_local i32 @tuplesort_end(i32*) #1

declare dso_local i32 @truncate_relation(i32) #1

declare dso_local i32 @reindex_relation(i32, i32, i32) #1

declare dso_local i32 @RelationClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
