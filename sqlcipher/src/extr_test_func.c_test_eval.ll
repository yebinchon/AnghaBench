; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_test_eval.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_test_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"sqlite3_prepare_v2() error: %s\00", align 1
@sqlite3_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @test_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_eval(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @sqlite3_context_db_handle(i32* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @sqlite3_value_text(i32* %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @sqlite3_prepare_v2(i32* %19, i8* %20, i32 -1, i32** %7, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @sqlite3_step(i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SQLITE_ROW, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @sqlite3_column_value(i32* %33, i32 0)
  %35 = call i32 @sqlite3_result_value(i32* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @sqlite3_finalize(i32* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %3
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @sqlite3_errmsg(i32* %47)
  %49 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @sqlite3_free, align 4
  %53 = call i32 @sqlite3_result_text(i32* %50, i8* %51, i32 -1, i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @sqlite3_result_error_code(i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32) #1

declare dso_local i32 @sqlite3_column_value(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
