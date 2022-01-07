; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_content_select.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1.c_content_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@CONTENT_SELECT_STMT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8***)* @content_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @content_select(%struct.TYPE_5__* %0, i32 %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  %12 = load i8***, i8**** %7, align 8
  store i8** null, i8*** %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = load i32, i32* @CONTENT_SELECT_STMT, align 4
  %15 = call i32 @sql_get_statement(%struct.TYPE_5__* %13, i32 %14, i32** %8)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %96

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @sqlite3_bind_int64(i32* %22, i32 1, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %96

30:                                               ; preds = %21
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = load i32, i32* @CONTENT_SELECT_STMT, align 4
  %33 = call i32 @sql_step_statement(%struct.TYPE_5__* %31, i32 %32, i32** %8)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @SQLITE_ROW, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %96

39:                                               ; preds = %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to i8**
  store i8** %47, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %76, %39
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @sqlite3_column_type(i32* %55, i32 %56)
  %58 = load i64, i64* @SQLITE_NULL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i8**, i8*** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* null, i8** %64, align 8
  br label %75

65:                                               ; preds = %54
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @sqlite3_column_text(i32* %66, i32 %67)
  %69 = inttoptr i64 %68 to i8*
  %70 = call i8* @string_dup(i8* %69)
  %71 = load i8**, i8*** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %70, i8** %74, align 8
  br label %75

75:                                               ; preds = %65, %60
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %48

79:                                               ; preds = %48
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @sqlite3_step(i32* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @SQLITE_DONE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i8**, i8*** %9, align 8
  %87 = load i8***, i8**** %7, align 8
  store i8** %86, i8*** %87, align 8
  %88 = load i32, i32* @SQLITE_OK, align 4
  store i32 %88, i32* %4, align 4
  br label %96

89:                                               ; preds = %79
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8**, i8*** %9, align 8
  %94 = call i32 @freeStringArray(i32 %92, i8** %93)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %89, %85, %37, %28, %19
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @sql_get_statement(%struct.TYPE_5__*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i32) #1

declare dso_local i32 @sql_step_statement(%struct.TYPE_5__*, i32, i32**) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i8* @string_dup(i8*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @freeStringArray(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
