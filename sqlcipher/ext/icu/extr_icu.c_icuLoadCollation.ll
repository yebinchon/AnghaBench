; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/icu/extr_icu.c_icuLoadCollation.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/icu/extr_icu.c_icuLoadCollation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U_ZERO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ucol_open\00", align 1
@SQLITE_UTF16 = common dso_local global i32 0, align 4
@icuCollationColl = common dso_local global i32 0, align 4
@icuCollationDel = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error registering collation function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @icuLoadCollation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icuLoadCollation(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @sqlite3_user_data(i32* %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_text(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %9, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @sqlite3_value_text(i32* %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %3
  br label %68

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = call i32* @ucol_open(i8* %39, i32* %8)
  store i32* %40, i32** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @U_SUCCESS(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @icuFunctionError(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %68

48:                                               ; preds = %38
  %49 = load i32*, i32** %4, align 8
  %50 = ptrtoint i32* %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @SQLITE_UTF16, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i32, i32* @icuCollationColl, align 4
  %58 = load i32, i32* @icuCollationDel, align 4
  %59 = call i32 @sqlite3_create_collation_v2(i32* %52, i8* %53, i32 %54, i8* %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @ucol_close(i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @sqlite3_result_error(i32* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %68

68:                                               ; preds = %37, %44, %63, %48
  ret void
}

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32* @ucol_open(i8*, i32*) #1

declare dso_local i32 @U_SUCCESS(i32) #1

declare dso_local i32 @icuFunctionError(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_create_collation_v2(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @ucol_close(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
