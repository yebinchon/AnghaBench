; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/icu/extr_icu.c_icuRegexpFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/icu/extr_icu.c_icuRegexpFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U_ZERO_ERROR = common dso_local global i32 0, align 4
@icuRegexpDelete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"uregex_open\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"uregex_setText\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"uregex_matches\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @icuRegexpFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icuRegexpFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32**, i32*** %6, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32* @sqlite3_value_text16(i32* %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %85

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @sqlite3_get_auxdata(i32* %22, i32 0)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %21
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @sqlite3_value_text16(i32* %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %85

34:                                               ; preds = %26
  %35 = load i32*, i32** %11, align 8
  %36 = call i32* @uregex_open(i32* %35, i32 -1, i32 0, i32 0, i32* %7)
  store i32* %36, i32** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @U_SUCCESS(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @icuRegexpDelete, align 4
  %44 = call i32 @sqlite3_set_auxdata(i32* %41, i32 0, i32* %42, i32 %43)
  br label %54

45:                                               ; preds = %34
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @icuFunctionError(i32* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %85

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %21
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @uregex_setText(i32* %56, i32* %57, i32 -1, i32* %7)
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @U_SUCCESS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @icuFunctionError(i32* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %85

66:                                               ; preds = %55
  %67 = load i32*, i32** %8, align 8
  %68 = call i64 @uregex_matches(i32* %67, i32 0, i32* %7)
  store i64 %68, i64* %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @U_SUCCESS(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @icuFunctionError(i32* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %85

76:                                               ; preds = %66
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @uregex_setText(i32* %77, i32* null, i32 0, i32* %7)
  %79 = load i32*, i32** %4, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = call i32 @sqlite3_result_int(i32* %79, i32 %83)
  br label %85

85:                                               ; preds = %76, %72, %62, %45, %33, %20
  ret void
}

declare dso_local i32* @sqlite3_value_text16(i32*) #1

declare dso_local i32* @sqlite3_get_auxdata(i32*, i32) #1

declare dso_local i32* @uregex_open(i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @U_SUCCESS(i32) #1

declare dso_local i32 @sqlite3_set_auxdata(i32*, i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @icuFunctionError(i32*, i8*, i32) #1

declare dso_local i32 @uregex_setText(i32*, i32*, i32, i32*) #1

declare dso_local i64 @uregex_matches(i32*, i32, i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
