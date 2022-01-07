; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprIsAlnum.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprIsAlnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"wrong number of arguments to function fts5_isalnum\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"L*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"N*\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Co\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @fts5ExprIsAlnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5ExprIsAlnum(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @sqlite3_result_error(i32* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %33

14:                                               ; preds = %3
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %16 = call i32 @memset(i32* %15, i32 0, i32 128)
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %18 = call i32 @sqlite3Fts5UnicodeCatParse(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %20 = call i32 @sqlite3Fts5UnicodeCatParse(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %19)
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %22 = call i32 @sqlite3Fts5UnicodeCatParse(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %21)
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @sqlite3_value_int(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @sqlite3Fts5UnicodeCategory(i32 %28)
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sqlite3_result_int(i32* %27, i32 %31)
  br label %33

33:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sqlite3Fts5UnicodeCatParse(i8*, i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i64 @sqlite3Fts5UnicodeCategory(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
