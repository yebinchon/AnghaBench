; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_test_function_utf16be.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_test_function_utf16be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"test_function\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @test_function_utf16be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_function_utf16be(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @sqlite3_user_data(i32* %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @Tcl_IncrRefCount(i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %19 = call i32 @Tcl_ListObjAppendElement(i32* %16, i32* %17, i32* %18)
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_text(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32* @Tcl_NewStringObj(i8* %26, i32 -1)
  %28 = call i32 @Tcl_ListObjAppendElement(i32* %20, i32* %21, i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @Tcl_EvalObjEx(i32* %29, i32* %30, i32 0)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @Tcl_DecrRefCount(i32* %32)
  %34 = call i32* @sqlite3ValueNew(i32 0)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @Tcl_GetStringResult(i32* %36)
  %38 = load i32, i32* @SQLITE_UTF8, align 4
  %39 = load i32, i32* @SQLITE_STATIC, align 4
  %40 = call i32 @sqlite3ValueSetStr(i32* %35, i32 -1, i32 %37, i32 %38, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @sqlite3_value_text16le(i32* %42)
  %44 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %45 = call i32 @sqlite3_result_text16(i32* %41, i32 %43, i32 -1, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @sqlite3_value_text16le(i32* %47)
  %49 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %50 = call i32 @sqlite3_result_text16be(i32* %46, i32 %48, i32 -1, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @sqlite3_value_text16le(i32* %52)
  %54 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %55 = call i32 @sqlite3_result_text16le(i32* %51, i32 %53, i32 -1, i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @sqlite3ValueFree(i32* %56)
  ret void
}

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32*, i32*, i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @Tcl_EvalObjEx(i32*, i32*, i32) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

declare dso_local i32* @sqlite3ValueNew(i32) #1

declare dso_local i32 @sqlite3ValueSetStr(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Tcl_GetStringResult(i32*) #1

declare dso_local i32 @sqlite3_result_text16(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_value_text16le(i32*) #1

declare dso_local i32 @sqlite3_result_text16be(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_result_text16le(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
