; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionSourceToStr.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionSourceToStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"SELECT group_concat(quote(name) || '.' || quote(type)) FROM pragma_table_info(?, ?)\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, %struct.TYPE_5__*, i8**)* @unionSourceToStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unionSourceToStr(i32* %0, i32* %1, %struct.TYPE_5__* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i8* null, i8** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = call i32* @unionGetDb(i32* %19, %struct.TYPE_5__* %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = call i32 @unionIsIntkeyTable(i32* %22, %struct.TYPE_5__* %23, i8** %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i8**, i8*** %8, align 8
  %28 = call i32* @unionPrepare(i32* %11, i32* %26, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8** %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %18
  %33 = load i32*, i32** %12, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SQLITE_STATIC, align 4
  %38 = call i32 @sqlite3_bind_text(i32* %33, i32 1, i32 %36, i32 -1, i32 %37)
  %39 = load i32*, i32** %12, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SQLITE_STATIC, align 4
  %44 = call i32 @sqlite3_bind_text(i32* %39, i32 2, i32 %42, i32 -1, i32 %43)
  %45 = load i64, i64* @SQLITE_ROW, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i64 @sqlite3_step(i32* %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %32
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @sqlite3_column_text(i32* %50, i32 0)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i8* @unionStrdup(i32* %11, i8* %53)
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %49, %32
  %56 = load i32*, i32** %12, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = call i32 @unionFinalize(i32* %11, i32* %56, i8** %57)
  br label %59

59:                                               ; preds = %55, %18
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %4
  %63 = load i8*, i8** %9, align 8
  ret i8* %63
}

declare dso_local i32* @unionGetDb(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @unionIsIntkeyTable(i32*, %struct.TYPE_5__*, i8**) #1

declare dso_local i32* @unionPrepare(i32*, i32*, i8*, i8**) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i8* @unionStrdup(i32*, i8*) #1

declare dso_local i32 @unionFinalize(i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
