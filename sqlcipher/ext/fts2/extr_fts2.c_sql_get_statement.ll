; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_sql_get_statement.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_sql_get_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, i32, i32, i32 }

@MAX_STMT = common dso_local global i64 0, align 8
@fulltext_zStatement = common dso_local global i8** null, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32**)* @sql_get_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sql_get_statement(%struct.TYPE_5__* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @MAX_STMT, align 8
  %13 = icmp ult i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %69

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  switch i64 %24, label %31 [
    i64 129, label %25
    i64 128, label %28
  ]

25:                                               ; preds = %23
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = call i8* @contentInsertStatement(%struct.TYPE_5__* %26)
  store i8* %27, i8** %8, align 8
  br label %36

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = call i8* @contentUpdateStatement(%struct.TYPE_5__* %29)
  store i8* %30, i8** %8, align 8
  br label %36

31:                                               ; preds = %23
  %32 = load i8**, i8*** @fulltext_zStatement, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %31, %28, %25
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @sql_prepare(i32 %39, i32 %42, i32 %45, i32** %50, i8* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i8**, i8*** @fulltext_zStatement, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %53, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %36
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @sqlite3_free(i8* %60)
  br label %62

62:                                               ; preds = %59, %36
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %92

68:                                               ; preds = %62
  br label %83

69:                                               ; preds = %3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @sqlite3_reset(i32* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %92

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %68
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32**, i32*** %7, align 8
  store i32* %89, i32** %90, align 8
  %91 = load i32, i32* @SQLITE_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %83, %80, %66
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @contentInsertStatement(%struct.TYPE_5__*) #1

declare dso_local i8* @contentUpdateStatement(%struct.TYPE_5__*) #1

declare dso_local i32 @sql_prepare(i32, i32, i32, i32**, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
