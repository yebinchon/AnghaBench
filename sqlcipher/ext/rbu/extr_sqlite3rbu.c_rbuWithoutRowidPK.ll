; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuWithoutRowidPK.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuWithoutRowidPK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i8* }

@SQLITE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"PRIMARY KEY(\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PRAGMA main.index_list = %Q\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"pk\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"PRAGMA main.index_xinfo = %Q\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" DESC\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%z%s\22%w\22%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%z)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, %struct.TYPE_8__*)* @rbuWithoutRowidPK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rbuWithoutRowidPK(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i8* null, i8** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SQLITE_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %125

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = call i8* @prepareFreeAndCollectError(i32 %27, i32** %7, i32* %29, i32 %33)
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %80, %24
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SQLITE_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i64, i64* @SQLITE_ROW, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @sqlite3_step(i32* %46)
  %48 = icmp eq i64 %45, %47
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i1 [ false, %38 ], [ %48, %44 ]
  br i1 %50, label %51, label %81

51:                                               ; preds = %49
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 @sqlite3_column_text(i32* %52, i32 3)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %51
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @sqlite3_column_text(i32* %62, i32 1)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = call i8* @prepareFreeAndCollectError(i32 %70, i32** %8, i32* %72, i32 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %67, %61
  br label %81

80:                                               ; preds = %57, %51
  br label %38

81:                                               ; preds = %79, %49
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @rbuFinalize(%struct.TYPE_7__* %82, i32* %83)
  br label %85

85:                                               ; preds = %117, %81
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SQLITE_OK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i64, i64* @SQLITE_ROW, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = call i64 @sqlite3_step(i32* %93)
  %95 = icmp eq i64 %92, %94
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i1 [ false, %85 ], [ %95, %91 ]
  br i1 %97, label %98, label %118

98:                                               ; preds = %96
  %99 = load i32*, i32** %8, align 8
  %100 = call i64 @sqlite3_column_int(i32* %99, i32 5)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i32*, i32** %8, align 8
  %104 = call i64 @sqlite3_column_text(i32* %103, i32 2)
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %11, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i64 @sqlite3_column_int(i32* %106, i32 3)
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  store i8* %110, i8** %12, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i8* (%struct.TYPE_7__*, i8*, i8*, ...) @rbuMPrintf(%struct.TYPE_7__* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %112, i8* %113, i8* %114, i8* %115)
  store i8* %116, i8** %5, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %117

117:                                              ; preds = %102, %98
  br label %85

118:                                              ; preds = %96
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = call i8* (%struct.TYPE_7__*, i8*, i8*, ...) @rbuMPrintf(%struct.TYPE_7__* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %120)
  store i8* %121, i8** %5, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @rbuFinalize(%struct.TYPE_7__* %122, i32* %123)
  br label %125

125:                                              ; preds = %118, %2
  %126 = load i8*, i8** %5, align 8
  ret i8* %126
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @prepareFreeAndCollectError(i32, i32**, i32*, i32) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @rbuFinalize(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @sqlite3_column_int(i32*, i32) #1

declare dso_local i8* @rbuMPrintf(%struct.TYPE_7__*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
