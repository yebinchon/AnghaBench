; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_decompress_chunk.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_decompress_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }

@ExclusiveLock = common dso_local global i32 0, align 4
@CUSTOM_TYPE_COMPRESSED_DATA = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"decompress chunk per-compressed row\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decompress_chunk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ExclusiveLock, align 4
  %19 = call i32 @relation_open(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ExclusiveLock, align 4
  %22 = call i32 @relation_open(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.TYPE_9__* @RelationGetDescr(i32 %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.TYPE_9__* @RelationGetDescr(i32 %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %8, align 8
  %27 = load i32, i32* @CUSTOM_TYPE_COMPRESSED_DATA, align 4
  %28 = call %struct.TYPE_11__* @ts_custom_type_cache_get(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @OidIsValid(i32 %40)
  %42 = call i32 @Assert(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %43, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = call i8* @palloc(i32 %52)
  store i8* %53, i8** %47, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i8* @palloc(i32 %59)
  store i8* %60, i8** %54, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %62 = call i32 (...) @GetBulkInsertState()
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @create_per_compressed_column(%struct.TYPE_9__* %64, %struct.TYPE_9__* %65, i32 %66, i32 %67)
  store i32 %68, i32* %63, align 4
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  %70 = call i32 @GetCurrentCommandId(i32 1)
  store i32 %70, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 6
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 7
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i8* @palloc(i32 %79)
  %81 = bitcast i8* %80 to i32*
  store i32* %81, i32** %11, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = mul i64 4, %84
  %86 = trunc i64 %85 to i32
  %87 = call i8* @palloc(i32 %86)
  %88 = bitcast i8* %87 to i32*
  store i32* %88, i32** %12, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (...) @GetLatestSnapshot()
  %91 = call i32 @heap_beginscan(i32 %89, i32 %90, i32 0, i32 0)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* @CurrentMemoryContext, align 4
  %93 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %94 = call i32 @AllocSetContextCreate(i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @ForwardScanDirection, align 4
  %97 = call i32* @heap_getnext(i32 %95, i32 %96)
  store i32* %97, i32** %13, align 8
  br label %98

98:                                               ; preds = %126, %2
  %99 = load i32*, i32** %13, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %130

101:                                              ; preds = %98
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @HeapTupleIsValid(i32* %102)
  %104 = call i32 @Assert(i32 %103)
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @MemoryContextSwitchTo(i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @heap_deform_tuple(i32* %107, %struct.TYPE_9__* %108, i32* %109, i32* %110)
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @populate_per_compressed_columns_from_data(i32 %113, i32 %117, i32* %118, i32* %119)
  %121 = call i32 @row_decompressor_decompress_row(%struct.TYPE_10__* %10)
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @MemoryContextSwitchTo(i32 %122)
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @MemoryContextReset(i32 %124)
  br label %126

126:                                              ; preds = %101
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* @ForwardScanDirection, align 4
  %129 = call i32* @heap_getnext(i32 %127, i32 %128)
  store i32* %129, i32** %13, align 8
  br label %98

130:                                              ; preds = %98
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @heap_endscan(i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @FreeBulkInsertState(i32 %134)
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @reindex_relation(i32 %136, i32 0, i32 0)
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @RelationClose(i32 %138)
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @RelationClose(i32 %140)
  ret void
}

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local %struct.TYPE_9__* @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_11__* @ts_custom_type_cache_get(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @GetBulkInsertState(...) #1

declare dso_local i32 @create_per_compressed_column(%struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @GetCurrentCommandId(i32) #1

declare dso_local i32 @heap_beginscan(i32, i32, i32, i32) #1

declare dso_local i32 @GetLatestSnapshot(...) #1

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32* @heap_getnext(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @heap_deform_tuple(i32*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @populate_per_compressed_columns_from_data(i32, i32, i32*, i32*) #1

declare dso_local i32 @row_decompressor_decompress_row(%struct.TYPE_10__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @heap_endscan(i32) #1

declare dso_local i32 @FreeBulkInsertState(i32) #1

declare dso_local i32 @reindex_relation(i32, i32, i32) #1

declare dso_local i32 @RelationClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
