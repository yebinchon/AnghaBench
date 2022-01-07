; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3TermSelect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3TermSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__*, i32, i32, i64, i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8**, i32* }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }

@FTS3_SEGMENT_IGNORE_EMPTY = common dso_local global i32 0, align 4
@FTS3_SEGMENT_REQUIRE_POS = common dso_local global i32 0, align 4
@FTS3_SEGMENT_PREFIX = common dso_local global i32 0, align 4
@FTS3_SEGMENT_FIRST = common dso_local global i32 0, align 4
@FTS3_SEGMENT_COLUMN_FILTER = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_22__*, i32, i32*, i8**)* @fts3TermSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3TermSelect(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, i32 %2, i32* %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca %struct.TYPE_21__, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %12, align 8
  %19 = call i32 @memset(%struct.TYPE_19__* %13, i32 0, i32 16)
  %20 = load i32, i32* @FTS3_SEGMENT_IGNORE_EMPTY, align 4
  %21 = load i32, i32* @FTS3_SEGMENT_REQUIRE_POS, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @FTS3_SEGMENT_PREFIX, align 4
  br label %30

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = or i32 %22, %31
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @FTS3_SEGMENT_FIRST, align 4
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = or i32 %32, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @FTS3_SEGMENT_COLUMN_FILTER, align 4
  br label %51

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %42, %52
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %67 = call i32 @sqlite3Fts3SegReaderStart(%struct.TYPE_20__* %65, %struct.TYPE_23__* %66, %struct.TYPE_21__* %14)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %80, %51
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @SQLITE_ROW, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %76 = call i32 @sqlite3Fts3SegReaderStep(%struct.TYPE_20__* %74, %struct.TYPE_23__* %75)
  store i32 %76, i32* %11, align 4
  %77 = icmp eq i32 %73, %76
  br label %78

78:                                               ; preds = %72, %68
  %79 = phi i1 [ false, %68 ], [ %77, %72 ]
  br i1 %79, label %80, label %89

80:                                               ; preds = %78
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @fts3TermSelectMerge(%struct.TYPE_20__* %81, %struct.TYPE_19__* %13, i32 %84, i32 %87)
  store i32 %88, i32* %11, align 4
  br label %68

89:                                               ; preds = %78
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @SQLITE_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = call i32 @fts3TermSelectFinishMerge(%struct.TYPE_20__* %94, %struct.TYPE_19__* %13)
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8**, i8*** %10, align 8
  store i8* %104, i8** %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  br label %130

111:                                              ; preds = %96
  store i32 0, i32* %15, align 4
  br label %112

112:                                              ; preds = %126, %111
  %113 = load i32, i32* %15, align 4
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = call i32 @SizeofArray(i8** %115)
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @sqlite3_free(i8* %124)
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %112

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129, %100
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %132 = call i32 @fts3SegReaderCursorFree(%struct.TYPE_23__* %131)
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %134, align 8
  %135 = load i32, i32* %11, align 4
  ret i32 %135
}

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @sqlite3Fts3SegReaderStart(%struct.TYPE_20__*, %struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3Fts3SegReaderStep(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local i32 @fts3TermSelectMerge(%struct.TYPE_20__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @fts3TermSelectFinishMerge(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @SizeofArray(i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @fts3SegReaderCursorFree(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
