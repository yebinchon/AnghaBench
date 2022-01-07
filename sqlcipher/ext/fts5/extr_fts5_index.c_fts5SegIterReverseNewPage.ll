; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterReverseNewPage.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterReverseNewPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64, i64, i64, i32, %struct.TYPE_16__*, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i64, i64, i32* }
%struct.TYPE_13__ = type { i32 }

@FTS5_SEGITER_REVERSE = common dso_local global i32 0, align 4
@FTS5_SEGITER_ONETERM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*)* @fts5SegIterReverseNewPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5SegIterReverseNewPage(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @FTS5_SEGITER_REVERSE, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @FTS5_SEGITER_ONETERM, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = call i32 @fts5DataRelease(%struct.TYPE_16__* %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 5
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %25, align 8
  br label %26

26:                                               ; preds = %136, %2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SQLITE_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br label %40

40:                                               ; preds = %32, %26
  %41 = phi i1 [ false, %26 ], [ %39, %32 ]
  br i1 %41, label %42, label %137

42:                                               ; preds = %40
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @FTS5_SEGMENT_ROWID(i32 %52, i64 %55)
  %57 = call %struct.TYPE_16__* @fts5DataRead(%struct.TYPE_15__* %47, i32 %56)
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %5, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = icmp ne %struct.TYPE_16__* %58, null
  br i1 %59, label %60, label %136

60:                                               ; preds = %42
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %60
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = icmp eq %struct.TYPE_16__* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %68
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 5
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %82, %68
  br label %106

93:                                               ; preds = %60
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = call i32 @fts5LeafFirstRowidOff(%struct.TYPE_16__* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 5
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %101, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %98, %93
  br label %106

106:                                              ; preds = %105, %92
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = icmp ne %struct.TYPE_16__* %109, null
  br i1 %110, label %111, label %132

111:                                              ; preds = %106
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  store i32* %121, i32** %7, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 7
  %125 = call i64 @fts5GetVarint(i32* %122, i32* %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 8
  br label %137

132:                                              ; preds = %106
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = call i32 @fts5DataRelease(%struct.TYPE_16__* %133)
  br label %135

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %135, %42
  br label %26

137:                                              ; preds = %111, %40
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 5
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = icmp ne %struct.TYPE_16__* %140, null
  br i1 %141, label %142, label %154

142:                                              ; preds = %137
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 6
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %153 = call i32 @fts5SegIterReverseInitPage(%struct.TYPE_15__* %151, %struct.TYPE_14__* %152)
  br label %154

154:                                              ; preds = %142, %137
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5DataRelease(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @fts5DataRead(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @FTS5_SEGMENT_ROWID(i32, i64) #1

declare dso_local i32 @fts5LeafFirstRowidOff(%struct.TYPE_16__*) #1

declare dso_local i64 @fts5GetVarint(i32*, i32*) #1

declare dso_local i32 @fts5SegIterReverseInitPage(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
