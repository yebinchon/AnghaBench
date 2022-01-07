; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5HighlightFunction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5HighlightFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32*, i32, i32**, i64*)*, i32 (i32*, i32*, i64, i8*, i32)* }
%struct.TYPE_7__ = type { i8*, i8*, i64, i64, i64, i32*, i32 }

@.str = private unnamed_addr constant [50 x i8] c"wrong number of arguments to function highlight()\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@fts5HighlightCb = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32*, i32, i32**)* @fts5HighlightFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5HighlightFunction(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = call i32 @sqlite3_result_error(i32* %18, i8* %19, i32 -1)
  br label %110

21:                                               ; preds = %5
  %22 = load i32**, i32*** %10, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @sqlite3_value_int(i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = call i32 @memset(%struct.TYPE_7__* %11, i32 0, i32 56)
  %27 = load i32**, i32*** %10, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @sqlite3_value_text(i32* %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load i32**, i32*** %10, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @sqlite3_value_text(i32* %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32 (i32*, i32, i32**, i64*)*, i32 (i32*, i32, i32**, i64*)** %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %46 = call i32 %41(i32* %42, i32 %43, i32** %44, i64* %45)
  store i32 %46, i32* %12, align 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %102

50:                                               ; preds = %21
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @SQLITE_OK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  %59 = call i32 @fts5CInstIterInit(%struct.TYPE_8__* %55, i32* %56, i32 %57, i32* %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @SQLITE_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32 (i32*, i32*, i64, i8*, i32)*, i32 (i32*, i32*, i64, i8*, i32)** %66, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = bitcast %struct.TYPE_7__* %11 to i8*
  %74 = load i32, i32* @fts5HighlightCb, align 4
  %75 = call i32 %67(i32* %68, i32* %70, i64 %72, i8* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %64, %60
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %83, %85
  %87 = call i32 @fts5HighlightAppend(i32* %12, %struct.TYPE_7__* %11, i32* %81, i64 %86)
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @SQLITE_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %76
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %97 = call i32 @sqlite3_result_text(i32* %92, i8* %95, i32 -1, i32 %96)
  br label %98

98:                                               ; preds = %91, %76
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @sqlite3_free(i64 %100)
  br label %102

102:                                              ; preds = %98, %21
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @SQLITE_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @sqlite3_result_error_code(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %17, %106, %102
  ret void
}

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @fts5CInstIterInit(%struct.TYPE_8__*, i32*, i32, i32*) #1

declare dso_local i32 @fts5HighlightAppend(i32*, %struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i64) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
