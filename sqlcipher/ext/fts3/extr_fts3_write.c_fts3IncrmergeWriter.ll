; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeWriter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeWriter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i64 }

@SQL_MAX_LEAF_NODE_ESTIMATE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQL_NEXT_SEGMENTS_ID = common dso_local global i32 0, align 4
@FTS_MAX_APPENDABLE_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*)* @fts3IncrmergeWriter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3IncrmergeWriter(i32* %0, i32 %1, i32 %2, %struct.TYPE_8__* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @SQL_MAX_LEAF_NODE_ESTIMATE, align 4
  %19 = call i32 @fts3SqlStmt(i32* %17, i32 %18, i32** %15, i32 0)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %5
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @sqlite3_bind_int64(i32* %24, i32 1, i32 %25)
  %27 = load i32*, i32** %15, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3_bind_int64(i32* %27, i32 2, i32 %30)
  %32 = load i64, i64* @SQLITE_ROW, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = call i64 @sqlite3_step(i32* %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @sqlite3_column_int(i32* %37, i32 0)
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %36, %23
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @sqlite3_reset(i32* %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %39, %5
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %6, align 4
  br label %137

48:                                               ; preds = %42
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @SQL_NEXT_SEGMENTS_ID, align 4
  %51 = call i32 @fts3SqlStmt(i32* %49, i32 %50, i32** %16, i32 0)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @SQLITE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %48
  %56 = load i64, i64* @SQLITE_ROW, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i64 @sqlite3_step(i32* %57)
  %59 = icmp eq i64 %56, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @sqlite3_column_int64(i32* %61, i32 0)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 5
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @FTS_MAX_APPENDABLE_HEIGHT, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %60, %55
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @sqlite3_reset(i32* %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %80, %48
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @SQLITE_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %137

89:                                               ; preds = %83
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @fts3WriteSegment(i32* %90, i64 %93, i32 0, i32 0)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @SQLITE_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %137

100:                                              ; preds = %89
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %132, %100
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @FTS_MAX_APPENDABLE_HEIGHT, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %110
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %118, %121
  %123 = add nsw i32 %117, %122
  %124 = sext i32 %123 to i64
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i64 %124, i64* %131, align 8
  br label %132

132:                                              ; preds = %114
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %110

135:                                              ; preds = %110
  %136 = load i32, i32* @SQLITE_OK, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %135, %98, %87, %46
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @fts3SqlStmt(i32*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @fts3WriteSegment(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
