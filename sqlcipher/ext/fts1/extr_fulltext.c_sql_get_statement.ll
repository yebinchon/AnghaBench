; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_sql_get_statement.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fulltext.c_sql_get_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32, i32 }

@MAX_STMT = common dso_local global i64 0, align 8
@fulltext_zStatement = common dso_local global i32* null, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i32**)* @sql_get_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sql_get_statement(%struct.TYPE_3__* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @MAX_STMT, align 8
  %12 = icmp ult i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** @fulltext_zStatement, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sql_prepare(i32 %25, i32 %28, i32** %33, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SQLITE_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %68

44:                                               ; preds = %22
  br label %59

45:                                               ; preds = %3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @sqlite3_reset(i32* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @SQLITE_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %68

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32**, i32*** %7, align 8
  store i32* %65, i32** %66, align 8
  %67 = load i32, i32* @SQLITE_OK, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %59, %56, %42
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sql_prepare(i32, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
