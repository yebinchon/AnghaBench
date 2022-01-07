; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterHashInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5SegIterHashInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_SCAN = common dso_local global i32 0, align 4
@FTS5_SEGITER_ONETERM = common dso_local global i32 0, align 4
@FTS5INDEX_QUERY_DESC = common dso_local global i32 0, align 4
@FTS5_SEGITER_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*, i32, i32, %struct.TYPE_14__*)* @fts5SegIterHashInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5SegIterHashInit(%struct.TYPE_15__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %10, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FTS5INDEX_QUERY_SCAN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %72

34:                                               ; preds = %29, %5
  store i32* null, i32** %15, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @sqlite3Fts5HashScanInit(i32 %37, i8* %39, i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = bitcast i32** %12 to i8**
  %48 = call i32 @sqlite3Fts5HashScanEntry(i32 %46, i8** %47, i32** %15, i32* %11)
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load i32*, i32** %12, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = call i64 @strlen(i8* %53)
  %55 = trunc i64 %54 to i32
  br label %57

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi i32 [ %55, %51 ], [ 0, %56 ]
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = call %struct.TYPE_16__* @fts5IdxMalloc(%struct.TYPE_15__* %62, i32 16)
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %14, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %65 = icmp ne %struct.TYPE_16__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32*, i32** %15, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %57
  br label %99

72:                                               ; preds = %29
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load i32, i32* %8, align 4
  %79 = bitcast %struct.TYPE_16__** %14 to i8**
  %80 = call i32 @sqlite3Fts5HashQuery(i32 %75, i32 16, i8* %77, i32 %78, i8** %79, i32* %11)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %84 = icmp ne %struct.TYPE_16__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 1
  %88 = bitcast %struct.TYPE_16__* %87 to i32*
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  store i32* %88, i32** %90, align 8
  br label %91

91:                                               ; preds = %85, %72
  %92 = load i32*, i32** %7, align 8
  store i32* %92, i32** %12, align 8
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* @FTS5_SEGITER_ONETERM, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %91, %71
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %101 = icmp ne %struct.TYPE_16__* %100, null
  br i1 %101, label %102, label %149

102:                                              ; preds = %99
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 5
  %107 = load i32, i32* %13, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @sqlite3Fts5BufferSet(i32* %104, i32* %106, i32 %107, i32* %108)
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 4
  store %struct.TYPE_16__* %115, %struct.TYPE_16__** %117, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = call i32 @fts5GetVarint(i32* %120, i32* %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @FTS5INDEX_QUERY_DESC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %102
  %136 = load i32, i32* @FTS5_SEGITER_REVERSE, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %143 = call i32 @fts5SegIterReverseInitPage(%struct.TYPE_15__* %141, %struct.TYPE_14__* %142)
  br label %148

144:                                              ; preds = %102
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %147 = call i32 @fts5SegIterLoadNPos(%struct.TYPE_15__* %145, %struct.TYPE_14__* %146)
  br label %148

148:                                              ; preds = %144, %135
  br label %149

149:                                              ; preds = %148, %99
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %152 = call i32 @fts5SegIterSetNext(%struct.TYPE_15__* %150, %struct.TYPE_14__* %151)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts5HashScanInit(i32, i8*, i32) #1

declare dso_local i32 @sqlite3Fts5HashScanEntry(i32, i8**, i32**, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_16__* @fts5IdxMalloc(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3Fts5HashQuery(i32, i32, i8*, i32, i8**, i32*) #1

declare dso_local i32 @sqlite3Fts5BufferSet(i32*, i32*, i32, i32*) #1

declare dso_local i32 @fts5GetVarint(i32*, i32*) #1

declare dso_local i32 @fts5SegIterReverseInitPage(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @fts5SegIterLoadNPos(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @fts5SegIterSetNext(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
