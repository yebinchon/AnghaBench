; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterGotoPage.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterGotoPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__*, i64, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32 }

@FTS5_CORRUPT = common dso_local global i8* null, align 8
@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @fts5SegIterGotoPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5SegIterGotoPage(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %17, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i8*, i8** @FTS5_CORRUPT, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %109

29:                                               ; preds = %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @fts5DataRelease(i64 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = call i32 @fts5SegIterNextPage(%struct.TYPE_14__* %40, %struct.TYPE_13__* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SQLITE_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %29
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br label %54

54:                                               ; preds = %48, %29
  %55 = phi i1 [ true, %29 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SQLITE_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %54
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %8, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = call i32 @fts5LeafFirstRowidOff(%struct.TYPE_11__* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %84, label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80, %63
  %85 = load i8*, i8** @FTS5_CORRUPT, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %107

89:                                               ; preds = %80
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = call i64 @fts5GetVarint(i32* %93, i32* %95)
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = call i32 @fts5SegIterLoadNPos(%struct.TYPE_14__* %104, %struct.TYPE_13__* %105)
  br label %107

107:                                              ; preds = %89, %84
  br label %108

108:                                              ; preds = %107, %54
  br label %109

109:                                              ; preds = %108, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5DataRelease(i64) #1

declare dso_local i32 @fts5SegIterNextPage(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @fts5LeafFirstRowidOff(%struct.TYPE_11__*) #1

declare dso_local i64 @fts5GetVarint(i32*, i32*) #1

declare dso_local i32 @fts5SegIterLoadNPos(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
