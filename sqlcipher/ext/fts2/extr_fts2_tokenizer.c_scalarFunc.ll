; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2_tokenizer.c_scalarFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2_tokenizer.c_scalarFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"argument type mismatch\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unknown tokenizer: %s\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @scalarFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scalarFunc(i32* %0, i32 %1, i32** %2) #0 {
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
  br i1 %36, label %37, label %67

37:                                               ; preds = %19
  %38 = load i32**, i32*** %6, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sqlite3_value_bytes(i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 8
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @sqlite3_result_error(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %88

48:                                               ; preds = %37
  %49 = load i32**, i32*** %6, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @sqlite3_value_blob(i32* %51)
  %53 = inttoptr i64 %52 to i8**
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %8, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @sqlite3Fts2HashInsert(i32* %55, i8* %56, i32 %57, i8* %58)
  store i8* %59, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @sqlite3_result_error(i32* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %88

66:                                               ; preds = %48
  br label %83

67:                                               ; preds = %19
  %68 = load i32*, i32** %7, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @sqlite3Fts2HashFind(i32* %68, i8* %69, i32 %70)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %67
  %75 = load i8*, i8** %9, align 8
  %76 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %75)
  store i8* %76, i8** %13, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @sqlite3_result_error(i32* %77, i8* %78, i32 -1)
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @sqlite3_free(i8* %80)
  br label %88

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %66
  %84 = load i32*, i32** %4, align 8
  %85 = bitcast i8** %8 to i8*
  %86 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %87 = call i32 @sqlite3_result_blob(i32* %84, i8* %85, i32 8, i32 %86)
  br label %88

88:                                               ; preds = %83, %74, %63, %45
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i8* @sqlite3Fts2HashInsert(i32*, i8*, i32, i8*) #1

declare dso_local i8* @sqlite3Fts2HashFind(i32*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
