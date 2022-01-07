; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3ColumnMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3ColumnMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fts3cursor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @fts3ColumnMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3ColumnMethod(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = bitcast %struct.TYPE_9__* %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 2
  %25 = icmp sle i32 %20, %24
  br label %26

26:                                               ; preds = %19, %3
  %27 = phi i1 [ false, %3 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %30, %33
  switch i32 %34, label %70 [
    i32 0, label %35
    i32 1, label %39
    i32 2, label %45
  ]

35:                                               ; preds = %26
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = call i32 @sqlite3_result_pointer(i32* %36, %struct.TYPE_11__* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %94

39:                                               ; preds = %26
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sqlite3_result_int64(i32* %40, i32 %43)
  br label %94

45:                                               ; preds = %26
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sqlite3_result_int64(i32* %51, i32 %54)
  br label %94

56:                                               ; preds = %45
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @sqlite3_result_int(i32* %62, i32 0)
  br label %94

64:                                               ; preds = %56
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %26, %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = call i32 @fts3CursorSeek(i32 0, %struct.TYPE_11__* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SQLITE_OK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sqlite3_data_count(i32 %79)
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @sqlite3_column_value(i32 %88, i32 %90)
  %92 = call i32 @sqlite3_result_value(i32* %85, i32 %91)
  br label %93

93:                                               ; preds = %84, %76, %70
  br label %94

94:                                               ; preds = %93, %61, %50, %39, %35
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.TYPE_10__*
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_result_pointer(i32*, %struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @fts3CursorSeek(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3_data_count(i32) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
