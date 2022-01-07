; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_fulltextFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_fulltextFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"FTS1 Filter %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"select rowid, * from %%_content %s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"where rowid=?\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@QUERY_FULLTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @fulltextFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fulltextFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %12, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %21 = call %struct.TYPE_7__* @cursor_vtab(%struct.TYPE_8__* %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %13, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = call i32 @TRACE(i8* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 129
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)
  %29 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i8* %29, i8** %15, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sqlite3_finalize(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i8*, i8** %15, align 8
  %46 = call i32 @sql_prepare(i32 %36, i32 %39, i32 %42, i32* %44, i8* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = call i32 @sqlite3_free(i8* %47)
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %5
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %6, align 4
  br label %130

54:                                               ; preds = %5
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  switch i32 %58, label %75 [
    i32 129, label %59
    i32 128, label %60
  ]

59:                                               ; preds = %54
  br label %127

60:                                               ; preds = %54
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32**, i32*** %11, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @sqlite3_value_int64(i32* %66)
  %68 = call i32 @sqlite3_bind_int64(i32 %63, i32 1, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @SQLITE_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %6, align 4
  br label %130

74:                                               ; preds = %60
  br label %127

75:                                               ; preds = %54
  %76 = load i32**, i32*** %11, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @sqlite3_value_text(i32* %78)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %16, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @QUERY_FULLTEXT, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %82, %85
  %87 = icmp sle i32 %81, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = call i32 @queryClear(i32* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @QUERY_FULLTEXT, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i8*, i8** %16, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = call i32 @fulltextQuery(%struct.TYPE_7__* %97, i32 %100, i8* %101, i32 -1, i32** %17, i32* %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @SQLITE_OK, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %75
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %6, align 4
  br label %130

110:                                              ; preds = %75
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @docListDelete(i32* %120)
  br label %122

122:                                              ; preds = %116, %110
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @readerInit(%struct.TYPE_9__* %124, i32* %125)
  br label %127

127:                                              ; preds = %122, %74, %59
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @fulltextNext(i32* %128)
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %108, %72, %52
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.TYPE_7__* @cursor_vtab(%struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32) #1

declare dso_local i32 @sql_prepare(i32, i32, i32, i32*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_bind_int64(i32, i32, i32) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @queryClear(i32*) #1

declare dso_local i32 @fulltextQuery(%struct.TYPE_7__*, i32, i8*, i32, i32**, i32*) #1

declare dso_local i32 @docListDelete(i32*) #1

declare dso_local i32 @readerInit(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @fulltextNext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
