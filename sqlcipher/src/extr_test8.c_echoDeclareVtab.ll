; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_echoDeclareVtab.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_echoDeclareVtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"SELECT sql FROM sqlite_master WHERE type = 'table' AND name = ?\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @echoDeclareVtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @echoDeclareVtab(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %85

14:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sqlite3_prepare(i32* %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %6, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %84

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sqlite3_bind_text(i32* %21, i32 1, i64 %24, i32 -1, i32 0)
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @sqlite3_step(i32* %26)
  %28 = load i64, i64* @SQLITE_ROW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %20
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @sqlite3_column_text(i32* %31, i32 0)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %8, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @sqlite3_declare_vtab(i32* %34, i8* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @sqlite3_finalize(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SQLITE_OK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %30
  br label %54

45:                                               ; preds = %20
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @sqlite3_finalize(i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @SQLITE_OK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = call i32 @getColumnNames(i32* %59, i64 %62, i32* %64, i32* %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %58, %54
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SQLITE_OK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = call i32 @getIndexArray(i32* %73, i64 %76, i32 %79, i32* %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %72, %68
  br label %84

84:                                               ; preds = %83, %14
  br label %85

85:                                               ; preds = %84, %2
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @sqlite3_prepare(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @getColumnNames(i32*, i64, i32*, i32*) #1

declare dso_local i32 @getIndexArray(i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
