; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_analyze.c_sqlite3AnalysisLoad.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_analyze.c_sqlite3AnalysisLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@TF_HasStat1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sqlite_stat1\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"SELECT tbl,idx,stat FROM %Q.sqlite_stat1\00", align 1
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@analysisLoader = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3AnalysisLoad(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_25__* %21, %struct.TYPE_25__** %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br label %30

30:                                               ; preds = %24, %2
  %31 = phi i1 [ false, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_22__* %45, i32 %46, i32 0)
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = call i32* @sqliteHashFirst(i32* %50)
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %65, %30
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @sqliteHashData(i32* %56)
  %58 = bitcast i8* %57 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %58, %struct.TYPE_24__** %10, align 8
  %59 = load i32, i32* @TF_HasStat1, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %55
  %66 = load i32*, i32** %6, align 8
  %67 = call i32* @sqliteHashNext(i32* %66)
  store i32* %67, i32** %6, align 8
  br label %52

68:                                               ; preds = %52
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = call i32* @sqliteHashFirst(i32* %70)
  store i32* %71, i32** %6, align 8
  br label %72

72:                                               ; preds = %81, %68
  %73 = load i32*, i32** %6, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  %77 = call i8* @sqliteHashData(i32* %76)
  %78 = bitcast i8* %77 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %78, %struct.TYPE_26__** %11, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %75
  %82 = load i32*, i32** %6, align 8
  %83 = call i32* @sqliteHashNext(i32* %82)
  store i32* %83, i32** %6, align 8
  br label %72

84:                                               ; preds = %72
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 1
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %86, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @sqlite3FindTable(%struct.TYPE_22__* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %84
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @sqlite3MPrintf(%struct.TYPE_22__* %102, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  store i8* %105, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %109, i32* %8, align 4
  br label %118

110:                                              ; preds = %101
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i32, i32* @analysisLoader, align 4
  %114 = call i32 @sqlite3_exec(%struct.TYPE_22__* %111, i8* %112, i32 %113, %struct.TYPE_23__* %5, i32 0)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @sqlite3DbFree(%struct.TYPE_22__* %115, i8* %116)
  br label %118

118:                                              ; preds = %110, %108
  br label %119

119:                                              ; preds = %118, %84
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @sqlite3SchemaMutexHeld(%struct.TYPE_22__* %120, i32 %121, i32 0)
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = call i32* @sqliteHashFirst(i32* %125)
  store i32* %126, i32** %6, align 8
  br label %127

127:                                              ; preds = %142, %119
  %128 = load i32*, i32** %6, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load i32*, i32** %6, align 8
  %132 = call i8* @sqliteHashData(i32* %131)
  %133 = bitcast i8* %132 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %133, %struct.TYPE_26__** %12, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %140 = call i32 @sqlite3DefaultRowEst(%struct.TYPE_26__* %139)
  br label %141

141:                                              ; preds = %138, %130
  br label %142

142:                                              ; preds = %141
  %143 = load i32*, i32** %6, align 8
  %144 = call i32* @sqliteHashNext(i32* %143)
  store i32* %144, i32** %6, align 8
  br label %127

145:                                              ; preds = %127
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @SQLITE_NOMEM, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %151 = call i32 @sqlite3OomFault(%struct.TYPE_22__* %150)
  br label %152

152:                                              ; preds = %149, %145
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SchemaMutexHeld(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32* @sqliteHashFirst(i32*) #1

declare dso_local i8* @sqliteHashData(i32*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i64 @sqlite3FindTable(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @sqlite3_exec(%struct.TYPE_22__*, i8*, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @sqlite3DefaultRowEst(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
