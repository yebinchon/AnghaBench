; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5ColumnMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5ColumnMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5CSR_EOF = common dso_local global i32 0, align 4
@FTS5_PLAN_SPECIAL = common dso_local global i64 0, align 8
@FTS5_PLAN_SOURCE = common dso_local global i64 0, align 8
@FTS5_PLAN_MATCH = common dso_local global i64 0, align 8
@FTS5_PLAN_SORTED_MATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i32)* @fts5ColumnMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ColumnMethod(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %7, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %8, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = bitcast %struct.TYPE_14__* %19 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %9, align 8
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %23 = load i32, i32* @FTS5CSR_EOF, align 4
  %24 = call i64 @CsrFlagTest(%struct.TYPE_16__* %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FTS5_PLAN_SPECIAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sqlite3_result_int64(i32* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  br label %136

46:                                               ; preds = %3
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sqlite3_result_int64(i32* %53, i32 %56)
  br label %135

58:                                               ; preds = %46
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %113

65:                                               ; preds = %58
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FTS5_PLAN_SOURCE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = call i32 @fts5PoslistBlob(i32* %72, %struct.TYPE_16__* %73)
  br label %112

75:                                               ; preds = %65
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FTS5_PLAN_MATCH, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @FTS5_PLAN_SORTED_MATCH, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %81, %75
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @SQLITE_OK, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %95 = call i32 @fts5FindRankFunction(%struct.TYPE_16__* %94)
  store i32 %95, i32* %10, align 4
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @fts5ApiInvoke(i64 %100, %struct.TYPE_16__* %101, i32* %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %97, %92
  br label %111

111:                                              ; preds = %110, %81
  br label %112

112:                                              ; preds = %111, %71
  br label %134

113:                                              ; preds = %58
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = call i32 @fts5IsContentless(%struct.TYPE_15__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %113
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %119 = call i32 @fts5SeekCursor(%struct.TYPE_16__* %118, i32 1)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @SQLITE_OK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @sqlite3_column_value(i32 %127, i32 %129)
  %131 = call i32 @sqlite3_result_value(i32* %124, i32 %130)
  br label %132

132:                                              ; preds = %123, %117
  br label %133

133:                                              ; preds = %132, %113
  br label %134

134:                                              ; preds = %133, %112
  br label %135

135:                                              ; preds = %134, %52
  br label %136

136:                                              ; preds = %135, %45
  %137 = load i32, i32* %10, align 4
  ret i32 %137
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CsrFlagTest(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @fts5PoslistBlob(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @fts5FindRankFunction(%struct.TYPE_16__*) #1

declare dso_local i32 @fts5ApiInvoke(i64, %struct.TYPE_16__*, i32*, i32, i32) #1

declare dso_local i32 @fts5IsContentless(%struct.TYPE_15__*) #1

declare dso_local i32 @fts5SeekCursor(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
