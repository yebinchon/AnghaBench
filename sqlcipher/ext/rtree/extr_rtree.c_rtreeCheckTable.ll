; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeCheckTable.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreeCheckTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i64, i32, i32, i8*, i32**, i32*, i32, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@SQLITE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"SELECT * FROM %Q.'%q_rowid'\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SELECT * FROM %Q.%Q\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Schema corrupt or not an rtree\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_INTEGER = common dso_local global i64 0, align 8
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"_rowid\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"_parent\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8**)* @rtreeCheckTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtreeCheckTable(i32* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = call i32 @memset(%struct.TYPE_7__* %9, i32 0, i32 72)
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 10
  store i32* %16, i32** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @sqlite3_get_autocommit(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @sqlite3_exec(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  store i32 1, i32* %11, align 4
  br label %30

30:                                               ; preds = %25, %4
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SQLITE_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @rtreeCheckPrepare(%struct.TYPE_7__* %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @sqlite3_column_count(i32* %42)
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @sqlite3_finalize(i32* %45)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i64, i64* @SQLITE_OK, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %30
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32* @rtreeCheckPrepare(%struct.TYPE_7__* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %52)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %93

56:                                               ; preds = %50
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @sqlite3_column_count(i32* %57)
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sdiv i32 %61, 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = call i32 @rtreeCheckAppendMsg(%struct.TYPE_7__* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %82

69:                                               ; preds = %56
  %70 = load i64, i64* @SQLITE_ROW, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i64 @sqlite3_step(i32* %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32*, i32** %10, align 8
  %76 = call i64 @sqlite3_column_type(i32* %75, i32 1)
  %77 = load i64, i64* @SQLITE_INTEGER, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %69
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @sqlite3_finalize(i32* %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @SQLITE_CORRUPT, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %82
  br label %93

93:                                               ; preds = %92, %50
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 1
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SQLITE_OK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 @rtreeCheckNode(%struct.TYPE_7__* %9, i32 0, i32 0, i32 1)
  br label %104

104:                                              ; preds = %102, %97
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @rtreeCheckCount(%struct.TYPE_7__* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @rtreeCheckCount(%struct.TYPE_7__* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %104, %93
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @sqlite3_finalize(i32* %113)
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 6
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @sqlite3_finalize(i32* %118)
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 6
  %121 = load i32**, i32*** %120, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @sqlite3_finalize(i32* %123)
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %111
  %128 = load i32*, i32** %5, align 8
  %129 = call i8* @sqlite3_exec(i32* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0, i32 0)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %14, align 4
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @SQLITE_OK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i64 %137, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %127
  br label %140

140:                                              ; preds = %139, %111
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = load i8**, i8*** %8, align 8
  store i8* %142, i8** %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  ret i32 %146
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @sqlite3_get_autocommit(i32*) #1

declare dso_local i8* @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32* @rtreeCheckPrepare(%struct.TYPE_7__*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @rtreeCheckAppendMsg(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @rtreeCheckNode(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @rtreeCheckCount(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
