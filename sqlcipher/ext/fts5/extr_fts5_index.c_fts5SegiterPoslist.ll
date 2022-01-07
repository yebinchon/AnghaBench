; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegiterPoslist.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegiterPoslist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_19__* }

@FTS5_DATA_ZERO_PADDING = common dso_local global i32 0, align 4
@fts5PoslistCallback = common dso_local global i32 0, align 4
@FTS5_DETAIL_FULL = common dso_local global i64 0, align 8
@fts5PoslistFilterCallback = common dso_local global i32 0, align 4
@fts5PoslistOffsetsCallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, %struct.TYPE_19__*)* @fts5SegiterPoslist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5SegiterPoslist(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @FTS5_DATA_ZERO_PADDING, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64 @fts5BufferGrow(i32* %12, %struct.TYPE_19__* %13, i32 %20)
  %22 = icmp eq i64 0, %21
  br i1 %22, label %23, label %91

23:                                               ; preds = %4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %29, %32
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i64 %33
  %35 = load i32, i32* @FTS5_DATA_ZERO_PADDING, align 4
  %36 = call i32 @memset(%struct.TYPE_15__* %34, i32 0, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %43 = bitcast %struct.TYPE_19__* %42 to i8*
  %44 = load i32, i32* @fts5PoslistCallback, align 4
  %45 = call i32 @fts5ChunkIterate(%struct.TYPE_18__* %40, %struct.TYPE_17__* %41, i8* %43, i32 %44)
  br label %90

46:                                               ; preds = %23
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FTS5_DETAIL_FULL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %46
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @fts5IndexColsetTest(i32* %59, i32 0)
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br label %69

69:                                               ; preds = %65, %54
  %70 = phi i1 [ true, %54 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = bitcast %struct.TYPE_16__* %9 to i8*
  %76 = load i32, i32* @fts5PoslistFilterCallback, align 4
  %77 = call i32 @fts5ChunkIterate(%struct.TYPE_18__* %73, %struct.TYPE_17__* %74, i8* %75, i32 %76)
  br label %89

78:                                               ; preds = %46
  %79 = call i32 @memset(%struct.TYPE_15__* %10, i32 0, i32 16)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %81, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i32* %82, i32** %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = bitcast %struct.TYPE_15__* %10 to i8*
  %87 = load i32, i32* @fts5PoslistOffsetsCallback, align 4
  %88 = call i32 @fts5ChunkIterate(%struct.TYPE_18__* %84, %struct.TYPE_17__* %85, i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %78, %69
  br label %90

90:                                               ; preds = %89, %39
  br label %91

91:                                               ; preds = %90, %4
  ret void
}

declare dso_local i64 @fts5BufferGrow(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @fts5ChunkIterate(%struct.TYPE_18__*, %struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @fts5IndexColsetTest(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
