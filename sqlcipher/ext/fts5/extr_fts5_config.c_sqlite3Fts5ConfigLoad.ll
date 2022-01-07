; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigLoad.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_config.c_sqlite3Fts5ConfigLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"SELECT k, v FROM %Q.'%q_config'\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_DEFAULT_PAGE_SIZE = common dso_local global i32 0, align 4
@FTS5_DEFAULT_AUTOMERGE = common dso_local global i32 0, align 4
@FTS5_DEFAULT_USERMERGE = common dso_local global i32 0, align 4
@FTS5_DEFAULT_CRISISMERGE = common dso_local global i32 0, align 4
@FTS5_DEFAULT_HASHSIZE = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@FTS5_CURRENT_VERSION = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"invalid fts5 file format (found %d, expected %d) - run 'rebuild'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5ConfigLoad(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i32* null, i32** %7, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @FTS5_DEFAULT_PAGE_SIZE, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @FTS5_DEFAULT_AUTOMERGE, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @FTS5_DEFAULT_USERMERGE, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @FTS5_DEFAULT_CRISISMERGE, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @FTS5_DEFAULT_HASHSIZE, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @sqlite3Fts5Mprintf(i32* %8, i8* %29, i32 %32, i32 %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @sqlite3_prepare_v2(i32 %42, i8* %43, i32 -1, i32** %7, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @sqlite3_free(i8* %45)
  br label %47

47:                                               ; preds = %39, %2
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SQLITE_OK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %7, align 8
  %53 = icmp eq i32* %52, null
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i1 [ true, %47 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SQLITE_OK, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %84, %61
  %63 = load i64, i64* @SQLITE_ROW, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @sqlite3_step(i32* %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @sqlite3_column_text(i32* %68, i32 0)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %10, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32* @sqlite3_column_value(i32* %71, i32 1)
  store i32* %72, i32** %11, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i64 @sqlite3_stricmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp eq i64 0, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @sqlite3_value_int(i32* %77)
  store i32 %78, i32* %9, align 4
  br label %84

79:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @sqlite3Fts5ConfigSetValue(%struct.TYPE_4__* %80, i8* %81, i32* %82, i32* %12)
  br label %84

84:                                               ; preds = %79, %76
  br label %62

85:                                               ; preds = %62
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @sqlite3_finalize(i32* %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %54
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @SQLITE_OK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @FTS5_CURRENT_VERSION, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %92
  %97 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %97, i32* %8, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 0, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @FTS5_CURRENT_VERSION, align 4
  %112 = call i64 @sqlite3_mprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  store i64 %112, i64* %115, align 8
  br label %116

116:                                              ; preds = %102, %96
  br label %117

117:                                              ; preds = %116, %92, %88
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @SQLITE_OK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i8* @sqlite3Fts5Mprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32* @sqlite3_column_value(i32*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3Fts5ConfigSetValue(%struct.TYPE_4__*, i8*, i32*, i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i64 @sqlite3_mprintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
