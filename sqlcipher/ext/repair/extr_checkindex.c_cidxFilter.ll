; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxFilter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32**)* @cidxFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cidxFilter(i32* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32** %4, i32*** %10, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sqlite3_free(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sqlite3_free(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @sqlite3_finalize(i64 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %5
  %40 = load i32**, i32*** %10, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @sqlite3_value_text(i32* %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %13, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32**, i32*** %10, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @sqlite3_value_text(i32* %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %14, align 8
  br label %53

53:                                               ; preds = %47, %39
  br label %54

54:                                               ; preds = %53, %5
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %85

57:                                               ; preds = %54
  store i8* null, i8** %15, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 0, %67 ]
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @cidxGenerateScanSql(%struct.TYPE_4__* %72, i8* %73, i8* %74, i8** %15)
  store i32 %75, i32* %11, align 4
  %76 = load i8*, i8** %15, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = call i64 @cidxPrepare(i32* %11, %struct.TYPE_4__* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %78, %68
  br label %85

85:                                               ; preds = %84, %54
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @cidxNext(i32* %96)
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %90, %85
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i32 @sqlite3_free(i32) #1

declare dso_local i32 @sqlite3_finalize(i64) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @cidxGenerateScanSql(%struct.TYPE_4__*, i8*, i8*, i8**) #1

declare dso_local i64 @cidxPrepare(i32*, %struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cidxNext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
