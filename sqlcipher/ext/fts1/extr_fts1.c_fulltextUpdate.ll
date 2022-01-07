; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_fulltextUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_fulltextUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"FTS1 Update %p\0A\00", align 1
@FTS1_HASH_STRING = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i64*)* @fulltextUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextUpdate(i32* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = call i32 @TRACE(i8* %19)
  %21 = load i32, i32* @FTS1_HASH_STRING, align 4
  %22 = call i32 @fts1HashInit(i32* %10, i32 %21, i32 1)
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = load i32**, i32*** %7, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @sqlite3_value_int64(i32* %29)
  %31 = call i32 @index_delete(%struct.TYPE_6__* %26, i64 %30, i32* %10)
  store i32 %31, i32* %11, align 4
  br label %94

32:                                               ; preds = %4
  %33 = load i32**, i32*** %7, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @sqlite3_value_type(i32* %35)
  %37 = load i64, i64* @SQLITE_NULL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %32
  %40 = load i32**, i32*** %7, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @sqlite3_value_int64(i32* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i32**, i32*** %7, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @sqlite3_value_type(i32* %46)
  %48 = load i64, i64* @SQLITE_INTEGER, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %39
  %51 = load i32**, i32*** %7, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @sqlite3_value_int64(i32* %53)
  %55 = load i64, i64* %13, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %39
  %58 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %58, i32* %11, align 4
  br label %74

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 2, %63
  %65 = add nsw i32 %64, 1
  %66 = icmp eq i32 %60, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i32**, i32*** %7, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 2
  %73 = call i32 @index_update(%struct.TYPE_6__* %69, i64 %70, i32** %72, i32* %10)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %59, %57
  br label %93

75:                                               ; preds = %32
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 2, %79
  %81 = add nsw i32 %80, 1
  %82 = icmp eq i32 %76, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = load i32**, i32*** %7, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32**, i32*** %7, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 2
  %91 = load i64*, i64** %8, align 8
  %92 = call i32 @index_insert(%struct.TYPE_6__* %85, i32* %88, i32** %90, i64* %91, i32* %10)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %75, %74
  br label %94

94:                                               ; preds = %93, %25
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @SQLITE_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %94
  %99 = call i32* @fts1HashFirst(i32* %10)
  store i32* %99, i32** %12, align 8
  br label %100

100:                                              ; preds = %118, %98
  %101 = load i32*, i32** %12, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %121

103:                                              ; preds = %100
  %104 = load i32*, i32** %12, align 8
  %105 = call i32* @fts1HashData(i32* %104)
  store i32* %105, i32** %14, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @fts1HashKey(i32* %107)
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @fts1HashKeysize(i32* %109)
  %111 = load i32*, i32** %14, align 8
  %112 = call i32 @index_insert_term(%struct.TYPE_6__* %106, i32 %108, i32 %110, i32* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  br label %121

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117
  %119 = load i32*, i32** %12, align 8
  %120 = call i32* @fts1HashNext(i32* %119)
  store i32* %120, i32** %12, align 8
  br label %100

121:                                              ; preds = %116, %100
  br label %122

122:                                              ; preds = %121, %94
  %123 = call i32* @fts1HashFirst(i32* %10)
  store i32* %123, i32** %12, align 8
  br label %124

124:                                              ; preds = %132, %122
  %125 = load i32*, i32** %12, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load i32*, i32** %12, align 8
  %129 = call i32* @fts1HashData(i32* %128)
  store i32* %129, i32** %15, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @docListDelete(i32* %130)
  br label %132

132:                                              ; preds = %127
  %133 = load i32*, i32** %12, align 8
  %134 = call i32* @fts1HashNext(i32* %133)
  store i32* %134, i32** %12, align 8
  br label %124

135:                                              ; preds = %124
  %136 = call i32 @fts1HashClear(i32* %10)
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @fts1HashInit(i32*, i32, i32) #1

declare dso_local i32 @index_delete(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @index_update(%struct.TYPE_6__*, i64, i32**, i32*) #1

declare dso_local i32 @index_insert(%struct.TYPE_6__*, i32*, i32**, i64*, i32*) #1

declare dso_local i32* @fts1HashFirst(i32*) #1

declare dso_local i32* @fts1HashData(i32*) #1

declare dso_local i32 @index_insert_term(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @fts1HashKey(i32*) #1

declare dso_local i32 @fts1HashKeysize(i32*) #1

declare dso_local i32* @fts1HashNext(i32*) #1

declare dso_local i32 @docListDelete(i32*) #1

declare dso_local i32 @fts1HashClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
