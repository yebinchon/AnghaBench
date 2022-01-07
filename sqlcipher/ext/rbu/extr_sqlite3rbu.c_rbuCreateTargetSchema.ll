; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuCreateTargetSchema.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuCreateTargetSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"PRAGMA writable_schema=1\00", align 1
@SQLITE_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [108 x i8] c"SELECT sql FROM sqlite_master WHERE sql!='' AND rootpage!=0 AND name!='sqlite_sequence'  ORDER BY type DESC\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"SELECT * FROM sqlite_master WHERE rootpage=0 OR rootpage IS NULL\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"INSERT INTO sqlite_master VALUES(?,?,?,?,?)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"PRAGMA writable_schema=0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @rbuCreateTargetSchema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuCreateTargetSchema(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = call i32 @rbuIsVacuum(%struct.TYPE_5__* %7)
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i8* @sqlite3_exec(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** @SQLITE_OK, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i8* @prepareAndCollectError(i32 %26, i32** %3, i32* %28, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %23, %1
  br label %33

33:                                               ; preds = %46, %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @SQLITE_OK, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @sqlite3_step(i32* %40)
  %42 = load i64, i64* @SQLITE_ROW, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i1 [ false, %33 ], [ %43, %39 ]
  br i1 %45, label %46, label %59

46:                                               ; preds = %44
  %47 = load i32*, i32** %3, align 8
  %48 = call i64 @sqlite3_column_text(i32* %47, i32 0)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %5, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i8* @sqlite3_exec(i32 %52, i8* %53, i32 0, i32 0, i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  br label %33

59:                                               ; preds = %44
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @rbuFinalize(%struct.TYPE_5__* %60, i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** @SQLITE_OK, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %157

69:                                               ; preds = %59
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** @SQLITE_OK, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i8* @prepareAndCollectError(i32 %78, i32** %3, i32* %80, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %75, %69
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** @SQLITE_OK, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i8* @prepareAndCollectError(i32 %93, i32** %4, i32* %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %90, %84
  br label %100

100:                                              ; preds = %128, %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** @SQLITE_OK, align 8
  %105 = icmp eq i8* %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i32*, i32** %3, align 8
  %108 = call i64 @sqlite3_step(i32* %107)
  %109 = load i64, i64* @SQLITE_ROW, align 8
  %110 = icmp eq i64 %108, %109
  br label %111

111:                                              ; preds = %106, %100
  %112 = phi i1 [ false, %100 ], [ %110, %106 ]
  br i1 %112, label %113, label %135

113:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %125, %113
  %115 = load i32, i32* %6, align 4
  %116 = icmp slt i32 %115, 5
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @sqlite3_column_value(i32* %121, i32 %122)
  %124 = call i32 @sqlite3_bind_value(i32* %118, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %114

128:                                              ; preds = %114
  %129 = load i32*, i32** %4, align 8
  %130 = call i64 @sqlite3_step(i32* %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i8* @sqlite3_reset(i32* %131)
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  br label %100

135:                                              ; preds = %111
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** @SQLITE_OK, align 8
  %140 = icmp eq i8* %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = call i8* @sqlite3_exec(i32 %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32* %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %141, %135
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @rbuFinalize(%struct.TYPE_5__* %151, i32* %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @rbuFinalize(%struct.TYPE_5__* %154, i32* %155)
  br label %157

157:                                              ; preds = %150, %68
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rbuIsVacuum(%struct.TYPE_5__*) #1

declare dso_local i8* @sqlite3_exec(i32, i8*, i32, i32, i32*) #1

declare dso_local i8* @prepareAndCollectError(i32, i32**, i32*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @rbuFinalize(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @sqlite3_bind_value(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_column_value(i32*, i32) #1

declare dso_local i8* @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
