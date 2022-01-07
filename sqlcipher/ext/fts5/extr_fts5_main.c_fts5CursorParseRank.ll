; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CursorParseRank.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CursorParseRank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@FTS5CSR_FREE_ZRANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"parse error in rank function: %s\00", align 1
@FTS5_DEFAULT_RANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*)* @fts5CursorParseRank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5CursorParseRank(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %59

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @sqlite3_value_text(i32* %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @sqlite3_value_type(i32* %21)
  %23 = load i64, i64* @SQLITE_NULL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %20
  br label %31

28:                                               ; preds = %14
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @sqlite3Fts5ConfigParseRank(i8* %29, i8** %9, i8** %10)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = load i32, i32* @FTS5CSR_FREE_ZRANK, align 4
  %44 = call i32 @CsrFlagSet(%struct.TYPE_10__* %42, i32 %43)
  br label %58

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SQLITE_ERROR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %45
  br label %58

58:                                               ; preds = %57, %35
  br label %85

59:                                               ; preds = %3
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %84

77:                                               ; preds = %59
  %78 = load i64, i64* @FTS5_DEFAULT_RANK, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store i8* null, i8** %83, align 8
  br label %84

84:                                               ; preds = %77, %64
  br label %85

85:                                               ; preds = %84, %58
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3Fts5ConfigParseRank(i8*, i8**, i8**) #1

declare dso_local i32 @CsrFlagSet(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
