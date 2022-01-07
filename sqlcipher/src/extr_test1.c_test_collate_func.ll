; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_test_collate_func.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_test_collate_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pTestCollateInterp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"test_collate\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8*)* @test_collate_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_collate_func(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load i32*, i32** @pTestCollateInterp, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @SQLITE_PTR_TO_INT(i8* %18)
  store i32 %19, i32* %12, align 4
  %20 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %20, i32** %16, align 8
  %21 = load i32*, i32** %16, align 8
  %22 = call i32 @Tcl_IncrRefCount(i32* %21)
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %39 [
    i32 128, label %24
    i32 129, label %29
    i32 130, label %34
  ]

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %28 = call i32 @Tcl_ListObjAppendElement(i32* %25, i32* %26, i32* %27)
  br label %41

29:                                               ; preds = %5
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %33 = call i32 @Tcl_ListObjAppendElement(i32* %30, i32* %31, i32* %32)
  br label %41

34:                                               ; preds = %5
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %38 = call i32 @Tcl_ListObjAppendElement(i32* %35, i32* %36, i32* %37)
  br label %41

39:                                               ; preds = %5
  %40 = call i32 @assert(i32 0)
  br label %41

41:                                               ; preds = %39, %34, %29, %24
  %42 = call i32 (...) @sqlite3BeginBenignMalloc()
  %43 = call i32* @sqlite3ValueNew(i32 0)
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %81

46:                                               ; preds = %41
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @SQLITE_STATIC, align 4
  %52 = call i32 @sqlite3ValueSetStr(i32* %47, i32 %48, i8* %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @sqlite3_value_bytes(i32* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i64 @sqlite3_value_text(i32* %57)
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* %14, align 4
  %61 = call i32* @Tcl_NewStringObj(i8* %59, i32 %60)
  %62 = call i32 @Tcl_ListObjAppendElement(i32* %55, i32* %56, i32* %61)
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @SQLITE_STATIC, align 4
  %68 = call i32 @sqlite3ValueSetStr(i32* %63, i32 %64, i8* %65, i32 %66, i32 %67)
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @sqlite3_value_bytes(i32* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = load i32*, i32** %15, align 8
  %74 = call i64 @sqlite3_value_text(i32* %73)
  %75 = inttoptr i64 %74 to i8*
  %76 = load i32, i32* %14, align 4
  %77 = call i32* @Tcl_NewStringObj(i8* %75, i32 %76)
  %78 = call i32 @Tcl_ListObjAppendElement(i32* %71, i32* %72, i32* %77)
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @sqlite3ValueFree(i32* %79)
  br label %81

81:                                               ; preds = %46, %41
  %82 = call i32 (...) @sqlite3EndBenignMalloc()
  %83 = load i32*, i32** %11, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @Tcl_EvalObjEx(i32* %83, i32* %84, i32 0)
  %86 = load i32*, i32** %16, align 8
  %87 = call i32 @Tcl_DecrRefCount(i32* %86)
  %88 = load i32*, i32** %11, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @Tcl_GetObjResult(i32* %89)
  %91 = call i32 @Tcl_GetIntFromObj(i32* %88, i32 %90, i32* %13)
  %92 = load i32, i32* %13, align 4
  ret i32 %92
}

declare dso_local i32 @SQLITE_PTR_TO_INT(i8*) #1

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BeginBenignMalloc(...) #1

declare dso_local i32* @sqlite3ValueNew(i32) #1

declare dso_local i32 @sqlite3ValueSetStr(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

declare dso_local i32 @sqlite3EndBenignMalloc(...) #1

declare dso_local i32 @Tcl_EvalObjEx(i32*, i32*, i32) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

declare dso_local i32 @Tcl_GetIntFromObj(i32*, i32, i32*) #1

declare dso_local i32 @Tcl_GetObjResult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
