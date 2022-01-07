; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer.c_fts3TokenizerFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer.c_fts3TokenizerFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"argument type mismatch\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"fts3tokenize disabled\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"unknown tokenizer: %s\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @fts3TokenizerFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts3TokenizerFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i8* null, i8** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 2
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i1 [ true, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @sqlite3_user_data(i32* %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %7, align 8
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i8* @sqlite3_value_text(i32* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @sqlite3_value_bytes(i32* %32)
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %84

37:                                               ; preds = %19
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @fts3TokenizerEnabled(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i32**, i32*** %6, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @sqlite3_value_frombind(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %41, %37
  %48 = load i32**, i32*** %6, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @sqlite3_value_bytes(i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 8
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %47
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @sqlite3_result_error(i32* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %119

61:                                               ; preds = %54
  %62 = load i32**, i32*** %6, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @sqlite3_value_blob(i32* %64)
  %66 = inttoptr i64 %65 to i8**
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %8, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = call i8* @sqlite3Fts3HashInsert(i32* %68, i8* %69, i32 %70, i8* %71)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp eq i8* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @sqlite3_result_error(i32* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %79

79:                                               ; preds = %76, %61
  br label %83

80:                                               ; preds = %41
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @sqlite3_result_error(i32* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  br label %119

83:                                               ; preds = %79
  br label %104

84:                                               ; preds = %19
  %85 = load i8*, i8** %9, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32*, i32** %7, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i8* @sqlite3Fts3HashFind(i32* %88, i8* %89, i32 %90)
  store i8* %91, i8** %8, align 8
  br label %92

92:                                               ; preds = %87, %84
  %93 = load i8*, i8** %8, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %92
  %96 = load i8*, i8** %9, align 8
  %97 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  store i8* %97, i8** %13, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = call i32 @sqlite3_result_error(i32* %98, i8* %99, i32 -1)
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @sqlite3_free(i8* %101)
  br label %119

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i32*, i32** %4, align 8
  %106 = call i64 @fts3TokenizerEnabled(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load i32**, i32*** %6, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i64 @sqlite3_value_frombind(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108, %104
  %115 = load i32*, i32** %4, align 8
  %116 = bitcast i8** %8 to i8*
  %117 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %118 = call i32 @sqlite3_result_blob(i32* %115, i8* %116, i32 8, i32 %117)
  br label %119

119:                                              ; preds = %58, %80, %95, %114, %108
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @fts3TokenizerEnabled(i32*) #1

declare dso_local i64 @sqlite3_value_frombind(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i8* @sqlite3Fts3HashInsert(i32*, i8*, i32, i8*) #1

declare dso_local i8* @sqlite3Fts3HashFind(i32*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
