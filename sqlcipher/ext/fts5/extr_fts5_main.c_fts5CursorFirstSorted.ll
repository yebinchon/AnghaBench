; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CursorFirstSorted.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CursorFirstSorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i8*, i8*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"SELECT rowid, rank FROM %Q.%Q ORDER BY %s(%s%s%s) %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DESC\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ASC\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)* @fts5CursorFirstSorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5CursorFirstSorted(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %8, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %13, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %14, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sqlite3Fts5ExprPhraseCount(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = add i64 8, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @sqlite3_malloc64(i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %9, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = icmp eq %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %41, i32* %4, align 4
  br label %114

42:                                               ; preds = %3
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 @memset(%struct.TYPE_13__* %43, i32 0, i64 %45)
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %14, align 8
  %64 = icmp ne i8* %63, null
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %67 = load i8*, i8** %14, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %42
  %70 = load i8*, i8** %14, align 8
  br label %72

71:                                               ; preds = %42
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %71 ]
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %78 = call i32 @fts5PrepareStatement(i32* %51, %struct.TYPE_16__* %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i8* %59, i32 %62, i8* %66, i8* %73, i8* %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @SQLITE_OK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %72
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = icmp eq %struct.TYPE_15__* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = call i32 @fts5SorterNext(%struct.TYPE_15__* %95)
  store i32 %96, i32* %12, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %98, align 8
  br label %99

99:                                               ; preds = %85, %72
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @SQLITE_OK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @sqlite3_finalize(i32 %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %109 = call i32 @sqlite3_free(%struct.TYPE_13__* %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %111, align 8
  br label %112

112:                                              ; preds = %103, %99
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %40
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @sqlite3Fts5ExprPhraseCount(i32) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @fts5PrepareStatement(i32*, %struct.TYPE_16__*, i8*, i32, i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5SorterNext(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3_finalize(i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
