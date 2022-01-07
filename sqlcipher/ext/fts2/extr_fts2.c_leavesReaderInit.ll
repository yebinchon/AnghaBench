; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leavesReaderInit.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leavesReaderInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i64, i8*, i32, %struct.TYPE_6__*)* @leavesReaderInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leavesReaderInit(i32* %0, i32 %1, i64 %2, i64 %3, i8* %4, i32 %5, %struct.TYPE_6__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %15, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %19 = call i32 @CLEAR(%struct.TYPE_6__* %18)
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = call i32 @dataBufferInit(%struct.TYPE_7__* %24, i32 0)
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %7
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @dataBufferReplace(%struct.TYPE_7__* %30, i8* %31, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = call i32 @leafReaderInit(i32 %37, i32 %41, i32* %43)
  br label %103

45:                                               ; preds = %7
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @sql_get_leaf_statement(i32* %46, i32 %47, i32** %16)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %17, align 4
  store i32 %53, i32* %8, align 4
  br label %105

54:                                               ; preds = %45
  %55 = load i32*, i32** %16, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @sqlite3_bind_int64(i32* %55, i32 1, i64 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %8, align 4
  br label %105

63:                                               ; preds = %54
  %64 = load i32*, i32** %16, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @sqlite3_bind_int64(i32* %64, i32 2, i64 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @SQLITE_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %8, align 4
  br label %105

72:                                               ; preds = %63
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @sqlite3_step(i32* %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* @SQLITE_DONE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* @SQLITE_OK, align 4
  store i32 %81, i32* %8, align 4
  br label %105

82:                                               ; preds = %72
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @SQLITE_ROW, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %8, align 4
  br label %105

88:                                               ; preds = %82
  %89 = load i32*, i32** %16, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @sqlite3_column_blob(i32* %94, i32 0)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @sqlite3_column_bytes(i32* %98, i32 0)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = call i32 @leafReaderInit(i32 %95, i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %88, %28
  %104 = load i32, i32* @SQLITE_OK, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %86, %78, %70, %61, %52
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @CLEAR(%struct.TYPE_6__*) #1

declare dso_local i32 @dataBufferInit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dataBufferReplace(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @leafReaderInit(i32, i32, i32*) #1

declare dso_local i32 @sql_get_leaf_statement(i32*, i32, i32**) #1

declare dso_local i32 @sqlite3_bind_int64(i32*, i32, i64) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_blob(i32*, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
