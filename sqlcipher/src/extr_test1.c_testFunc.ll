; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_testFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_testFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"int64\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"first argument should be one of: int int64 string double null value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @testFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  br label %8

8:                                                ; preds = %94, %3
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 2
  br i1 %10, label %11, label %99

11:                                               ; preds = %8
  %12 = load i32**, i32*** %6, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @sqlite3_value_text(i32* %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %93

19:                                               ; preds = %11
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @sqlite3StrICmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 0, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32**, i32*** %6, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @sqlite3_value_int(i32* %27)
  %29 = call i32 @sqlite3_result_int(i32* %24, i64 %28)
  br label %92

30:                                               ; preds = %19
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @sqlite3StrICmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i32**, i32*** %6, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @sqlite3_value_int64(i32* %38)
  %40 = call i32 @sqlite3_result_int64(i32* %35, i32 %39)
  br label %91

41:                                               ; preds = %30
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @sqlite3StrICmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = load i32**, i32*** %6, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @sqlite3_value_text(i32* %49)
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %53 = call i32 @sqlite3_result_text(i32* %46, i8* %51, i32 -1, i32 %52)
  br label %90

54:                                               ; preds = %41
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @sqlite3StrICmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32*, i32** %4, align 8
  %60 = load i32**, i32*** %6, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @sqlite3_value_double(i32* %62)
  %64 = call i32 @sqlite3_result_double(i32* %59, i32 %63)
  br label %89

65:                                               ; preds = %54
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @sqlite3StrICmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @sqlite3_result_null(i32* %70)
  br label %88

72:                                               ; preds = %65
  %73 = load i8*, i8** %7, align 8
  %74 = call i64 @sqlite3StrICmp(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32*, i32** %4, align 8
  %78 = load i32**, i32*** %6, align 8
  %79 = load i32**, i32*** %6, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @sqlite3_value_int(i32* %81)
  %83 = getelementptr inbounds i32*, i32** %78, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @sqlite3_result_value(i32* %77, i32* %84)
  br label %87

86:                                               ; preds = %72
  br label %100

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %45
  br label %91

91:                                               ; preds = %90, %34
  br label %92

92:                                               ; preds = %91, %23
  br label %94

93:                                               ; preds = %11
  br label %100

94:                                               ; preds = %92
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, 2
  store i32 %96, i32* %5, align 4
  %97 = load i32**, i32*** %6, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 2
  store i32** %98, i32*** %6, align 8
  br label %8

99:                                               ; preds = %8
  br label %103

100:                                              ; preds = %93, %86
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @sqlite3_result_error(i32* %101, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  br label %103

103:                                              ; preds = %100, %99
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i64) #1

declare dso_local i64 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_double(i32*, i32) #1

declare dso_local i32 @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_result_null(i32*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
