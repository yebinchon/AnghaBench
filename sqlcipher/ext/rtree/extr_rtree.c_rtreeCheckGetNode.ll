; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeCheckGetNode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeCheckGetNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"SELECT data FROM %Q.'%q_node' WHERE nodeno=?\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Node %lld missing from database\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32, i32*)* @rtreeCheckGetNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rtreeCheckGetNode(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SQLITE_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @rtreeCheckPrepare(%struct.TYPE_6__* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %20, %15, %3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SQLITE_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %94

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @sqlite3_bind_int64(i64 %40, i32 1, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @sqlite3_step(i64 %45)
  %47 = load i64, i64* @SQLITE_ROW, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %37
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @sqlite3_column_bytes(i64 %52, i32 0)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @sqlite3_column_blob(i64 %56, i32 0)
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32* @sqlite3_malloc64(i32 %59)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load i64, i64* @SQLITE_NOMEM, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %74

67:                                               ; preds = %49
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @memcpy(i32* %68, i32* %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %63
  br label %75

75:                                               ; preds = %74, %37
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @rtreeCheckReset(%struct.TYPE_6__* %76, i64 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SQLITE_OK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %75
  %87 = load i32*, i32** %7, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @rtreeCheckAppendMsg(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %86, %75
  br label %94

94:                                               ; preds = %93, %31
  %95 = load i32*, i32** %7, align 8
  ret i32* %95
}

declare dso_local i64 @rtreeCheckPrepare(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_bind_int64(i64, i32, i32) #1

declare dso_local i64 @sqlite3_step(i64) #1

declare dso_local i32 @sqlite3_column_bytes(i64, i32) #1

declare dso_local i64 @sqlite3_column_blob(i64, i32) #1

declare dso_local i32* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtreeCheckReset(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @rtreeCheckAppendMsg(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
