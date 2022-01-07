; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonObjectFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonObjectFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"json_object() requires an even number of arguments\00", align 1
@SQLITE_TEXT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"json_object() labels must be TEXT\00", align 1
@JSON_SUBTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @jsonObjectFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonObjectFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sqlite3_result_error(i32* %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %73

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @jsonInit(i32* %8, i32* %18)
  %20 = call i32 @jsonAppendChar(i32* %8, i8 signext 123)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %64, %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %21
  %26 = load i32**, i32*** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @sqlite3_value_type(i32* %30)
  %32 = load i64, i64* @SQLITE_TEXT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @sqlite3_result_error(i32* %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %37 = call i32 @jsonReset(i32* %8)
  br label %73

38:                                               ; preds = %25
  %39 = call i32 @jsonAppendSeparator(i32* %8)
  %40 = load i32**, i32*** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @sqlite3_value_text(i32* %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %9, align 8
  %47 = load i32**, i32*** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @sqlite3_value_bytes(i32* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @jsonAppendString(i32* %8, i8* %53, i64 %54)
  %56 = call i32 @jsonAppendChar(i32* %8, i8 signext 58)
  %57 = load i32**, i32*** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @jsonAppendValue(i32* %8, i32* %62)
  br label %64

64:                                               ; preds = %38
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %7, align 4
  br label %21

67:                                               ; preds = %21
  %68 = call i32 @jsonAppendChar(i32* %8, i8 signext 125)
  %69 = call i32 @jsonResult(i32* %8)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @JSON_SUBTYPE, align 4
  %72 = call i32 @sqlite3_result_subtype(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %34, %14
  ret void
}

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @jsonInit(i32*, i32*) #1

declare dso_local i32 @jsonAppendChar(i32*, i8 signext) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @jsonReset(i32*) #1

declare dso_local i32 @jsonAppendSeparator(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @jsonAppendString(i32*, i8*, i64) #1

declare dso_local i32 @jsonAppendValue(i32*, i32*) #1

declare dso_local i32 @jsonResult(i32*) #1

declare dso_local i32 @sqlite3_result_subtype(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
