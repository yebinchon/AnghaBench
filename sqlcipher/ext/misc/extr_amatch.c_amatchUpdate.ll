; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchUpdate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_amatch.c_amatchUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"DELETE from %s is not allowed\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"UPDATE of %s is not allowed\00", align 1
@AMATCH_COL_WORD = common dso_local global i32 0, align 4
@AMATCH_COL_DISTANCE = common dso_local global i32 0, align 4
@AMATCH_COL_LANGUAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"INSERT INTO %s allowed for column [command] only\00", align 1
@AMATCH_COL_COMMAND = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32**, i32*)* @amatchUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amatchUpdate(%struct.TYPE_4__* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = bitcast %struct.TYPE_4__* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %24, i32* %5, align 4
  br label %92

25:                                               ; preds = %4
  %26 = load i32**, i32*** %8, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @sqlite3_value_type(i32* %28)
  %30 = load i64, i64* @SQLITE_NULL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %39, i32* %5, align 4
  br label %92

40:                                               ; preds = %25
  %41 = load i32**, i32*** %8, align 8
  %42 = load i32, i32* @AMATCH_COL_WORD, align 4
  %43 = add nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %41, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @sqlite3_value_type(i32* %46)
  %48 = load i64, i64* @SQLITE_NULL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %70, label %50

50:                                               ; preds = %40
  %51 = load i32**, i32*** %8, align 8
  %52 = load i32, i32* @AMATCH_COL_DISTANCE, align 4
  %53 = add nsw i32 2, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @sqlite3_value_type(i32* %56)
  %58 = load i64, i64* @SQLITE_NULL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %50
  %61 = load i32**, i32*** %8, align 8
  %62 = load i32, i32* @AMATCH_COL_LANGUAGE, align 4
  %63 = add nsw i32 2, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %61, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @sqlite3_value_type(i32* %66)
  %68 = load i64, i64* @SQLITE_NULL, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %60, %50, %40
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %77, i32* %5, align 4
  br label %92

78:                                               ; preds = %60
  %79 = load i32**, i32*** %8, align 8
  %80 = load i32, i32* @AMATCH_COL_COMMAND, align 4
  %81 = add nsw i32 2, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %79, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i8* @sqlite3_value_text(i32* %84)
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* @SQLITE_OK, align 4
  store i32 %89, i32* %5, align 4
  br label %92

90:                                               ; preds = %78
  %91 = load i32, i32* @SQLITE_OK, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %88, %70, %32, %17
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
