; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_func.c_likeFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_func.c_likeFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.compareInfo = type { i32 }

@SQLITE_LIMIT_LIKE_PATTERN_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"LIKE or GLOB pattern too complex\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ESCAPE expression must be a single character\00", align 1
@SQLITE_MATCH = common dso_local global i64 0, align 8
@SQLITE_BLOB = common dso_local global i64 0, align 8
@sqlite3_like_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @likeFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @likeFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.compareInfo*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_3__* @sqlite3_context_db_handle(i32* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.compareInfo* @sqlite3_user_data(i32* %16)
  store %struct.compareInfo* %17, %struct.compareInfo** %12, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i8* @sqlite3_value_text(i32* %20)
  store i8* %21, i8** %8, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i8* @sqlite3_value_text(i32* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @sqlite3_value_bytes(i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %30, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @testcase(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = icmp eq i32 %40, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @testcase(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %51, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %3
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @sqlite3_result_error(i32* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %111

62:                                               ; preds = %3
  %63 = load i8*, i8** %8, align 8
  %64 = load i32**, i32*** %6, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i8* @sqlite3_value_text(i32* %66)
  %68 = icmp eq i8* %63, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %90

73:                                               ; preds = %62
  %74 = load i32**, i32*** %6, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i8* @sqlite3_value_text(i32* %76)
  store i8* %77, i8** %13, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %111

81:                                               ; preds = %73
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @sqlite3Utf8CharLen(i8* %82, i32 -1)
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @sqlite3_result_error(i32* %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %111

88:                                               ; preds = %81
  %89 = call i32 @sqlite3Utf8Read(i8** %13)
  store i32 %89, i32* %9, align 4
  br label %94

90:                                               ; preds = %62
  %91 = load %struct.compareInfo*, %struct.compareInfo** %12, align 8
  %92 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %88
  %95 = load i8*, i8** %7, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i8*, i8** %8, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i32*, i32** %4, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.compareInfo*, %struct.compareInfo** %12, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i64 @patternCompare(i8* %102, i8* %103, %struct.compareInfo* %104, i32 %105)
  %107 = load i64, i64* @SQLITE_MATCH, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @sqlite3_result_int(i32* %101, i32 %109)
  br label %111

111:                                              ; preds = %59, %80, %85, %100, %97, %94
  ret void
}

declare dso_local %struct.TYPE_3__* @sqlite3_context_db_handle(i32*) #1

declare dso_local %struct.compareInfo* @sqlite3_user_data(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Utf8CharLen(i8*, i32) #1

declare dso_local i32 @sqlite3Utf8Read(i8**) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i64 @patternCompare(i8*, i8*, %struct.compareInfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
