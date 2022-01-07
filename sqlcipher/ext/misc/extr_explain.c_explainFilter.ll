; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_explain.c_explainFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_explain.c_explainFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64, i32 }

@SQLITE_TEXT = common dso_local global i64 0, align 8
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"EXPLAIN %s\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @explainFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @explainFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %12, align 8
  store i8* null, i8** %13, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @sqlite3_finalize(i64 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32**, i32*** %11, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @sqlite3_value_type(i32* %25)
  %27 = load i64, i64* @SQLITE_TEXT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = load i32, i32* @SQLITE_DONE, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @SQLITE_OK, align 4
  store i32 %33, i32* %6, align 4
  br label %114

34:                                               ; preds = %5
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @sqlite3_free(i8* %37)
  %39 = load i32**, i32*** %11, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i8* @sqlite3_value_text(i32* %41)
  %43 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i8* %54, i8** %13, align 8
  br label %55

55:                                               ; preds = %50, %34
  %56 = load i8*, i8** %13, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %59, i32* %14, align 4
  br label %70

60:                                               ; preds = %55
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = call i32 @sqlite3_prepare_v2(i32 %63, i8* %64, i32 -1, i64* %66, i32 0)
  store i32 %67, i32* %14, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @sqlite3_free(i8* %68)
  br label %70

70:                                               ; preds = %60, %58
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @sqlite3_finalize(i64 %76)
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @sqlite3_free(i8* %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i8* null, i8** %85, align 8
  br label %112

86:                                               ; preds = %70
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @sqlite3_step(i64 %89)
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SQLITE_DONE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %86
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SQLITE_ROW, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98, %86
  %105 = load i32, i32* @SQLITE_OK, align 4
  br label %110

106:                                              ; preds = %98
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  br label %110

110:                                              ; preds = %106, %104
  %111 = phi i32 [ %105, %104 ], [ %109, %106 ]
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %110, %73
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %112, %29
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @sqlite3_finalize(i64) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i64*, i32) #1

declare dso_local i32 @sqlite3_step(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
