; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuCreateImposterTable2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuCreateImposterTable2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32* }

@SQLITE_OK = common dso_local global i64 0, align 8
@RBU_PK_EXTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"SELECT name FROM sqlite_master WHERE rootpage = ?\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"PRAGMA main.index_xinfo = %Q\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%z%sc%d %s COLLATE %Q\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%z%sc%d%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" DESC\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%z, id INTEGER\00", align 1
@SQLITE_TESTCTRL_IMPOSTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"CREATE TABLE rbu_imposter2(%z, PRIMARY KEY(%z)) WITHOUT ROWID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*)* @rbuCreateImposterTable2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuCreateImposterTable2(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SQLITE_OK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %149

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RBU_PK_EXTERNAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %149

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = call i64 @prepareAndCollectError(i32 %33, i32** %6, i32* %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SQLITE_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %27
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @sqlite3_bind_int(i32* %45, i32 1, i32 %46)
  %48 = load i64, i64* @SQLITE_ROW, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @sqlite3_step(i32* %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @sqlite3_column_text(i32* %53, i32 0)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %52, %44
  br label %57

57:                                               ; preds = %56, %27
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  %68 = call i64 @prepareFreeAndCollectError(i32 %63, i32** %8, i32* %65, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %60, %57
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @rbuFinalize(%struct.TYPE_8__* %72, i32* %73)
  br label %75

75:                                               ; preds = %123, %71
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SQLITE_OK, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i64, i64* @SQLITE_ROW, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @sqlite3_step(i32* %83)
  %85 = icmp eq i64 %82, %84
  br label %86

86:                                               ; preds = %81, %75
  %87 = phi i1 [ false, %75 ], [ %85, %81 ]
  br i1 %87, label %88, label %124

88:                                               ; preds = %86
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @sqlite3_column_int(i32* %89, i32 5)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %88
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @sqlite3_column_int(i32* %94, i32 1)
  store i32 %95, i32* %13, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @sqlite3_column_int(i32* %96, i32 3)
  store i32 %97, i32* %14, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = call i64 @sqlite3_column_text(i32* %98, i32 4)
  %100 = inttoptr i64 %99 to i8*
  store i8* %100, i8** %15, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %15, align 8
  %113 = call i8* (%struct.TYPE_8__*, i8*, i8*, ...) @rbuMPrintf(%struct.TYPE_8__* %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %102, i8* %103, i32 %104, i32 %111, i8* %112)
  store i8* %113, i8** %10, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %122 = call i8* (%struct.TYPE_8__*, i8*, i8*, ...) @rbuMPrintf(%struct.TYPE_8__* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %115, i8* %116, i32 %117, i8* %121)
  store i8* %122, i8** %11, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %123

123:                                              ; preds = %93, %88
  br label %75

124:                                              ; preds = %86
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = call i8* (%struct.TYPE_8__*, i8*, i8*, ...) @rbuMPrintf(%struct.TYPE_8__* %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  store i8* %127, i8** %10, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @rbuFinalize(%struct.TYPE_8__* %128, i32* %129)
  %131 = load i32, i32* @SQLITE_TESTCTRL_IMPOSTER, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @sqlite3_test_control(i32 %131, i32 %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 1, i32 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @rbuMPrintfExec(%struct.TYPE_8__* %137, i32 %140, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i8* %141, i8* %142)
  %144 = load i32, i32* @SQLITE_TESTCTRL_IMPOSTER, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @sqlite3_test_control(i32 %144, i32 %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0)
  br label %149

149:                                              ; preds = %124, %21, %2
  ret void
}

declare dso_local i64 @prepareAndCollectError(i32, i32**, i32*, i8*) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @prepareFreeAndCollectError(i32, i32**, i32*, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @rbuFinalize(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i8* @rbuMPrintf(%struct.TYPE_8__*, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_test_control(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rbuMPrintfExec(%struct.TYPE_8__*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
