; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/icu/extr_icu.c_icuCaseFunc16.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/icu/extr_icu.c_icuCaseFunc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@U_ZERO_ERROR = common dso_local global i64 0, align 8
@xFree = common dso_local global i32 0, align 4
@U_BUFFER_OVERFLOW_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"u_strToUpper\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"u_strToLower\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @icuCaseFunc16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icuCaseFunc16(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 2
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ true, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @sqlite3_user_data(i32* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %21
  %32 = load i32**, i32*** %6, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @sqlite3_value_text(i32* %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %14, align 8
  br label %37

37:                                               ; preds = %31, %21
  %38 = load i32**, i32*** %6, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i8* @sqlite3_value_text16(i32* %40)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %130

45:                                               ; preds = %37
  %46 = load i32**, i32*** %6, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @sqlite3_value_bytes16(i32* %48)
  store i32 %49, i32* %9, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @SQLITE_STATIC, align 4
  %55 = call i32 @sqlite3_result_text16(i32* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %54)
  br label %130

56:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %125, %56
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %128

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i8* @sqlite3_realloc(i8* %61, i32 %62)
  store i8* %63, i8** %15, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @sqlite3_free(i8* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @sqlite3_result_error_nomem(i32* %69)
  br label %130

71:                                               ; preds = %60
  %72 = load i8*, i8** %15, align 8
  store i8* %72, i8** %8, align 8
  %73 = load i64, i64* @U_ZERO_ERROR, align 8
  store i64 %73, i64* %13, align 8
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sdiv i32 %78, 2
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sdiv i32 %81, 2
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @u_strToUpper(i8* %77, i32 %79, i8* %80, i32 %82, i8* %83, i64* %13)
  %85 = mul nsw i32 2, %84
  store i32 %85, i32* %10, align 4
  br label %96

86:                                               ; preds = %71
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sdiv i32 %88, 2
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sdiv i32 %91, 2
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @u_strToLower(i8* %87, i32 %89, i8* %90, i32 %92, i8* %93, i64* %13)
  %95 = mul nsw i32 2, %94
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %86, %76
  %97 = load i64, i64* %13, align 8
  %98 = call i64 @U_SUCCESS(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32*, i32** %4, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @xFree, align 4
  %105 = call i32 @sqlite3_result_text16(i32* %101, i8* %102, i32 %103, i32 %104)
  br label %124

106:                                              ; preds = %96
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @U_BUFFER_OVERFLOW_ERROR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  br label %125

115:                                              ; preds = %106
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @icuFunctionError(i32* %116, i8* %120, i64 %121)
  br label %123

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123, %100
  br label %130

125:                                              ; preds = %110
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %57

128:                                              ; preds = %57
  %129 = call i32 @assert(i32 0)
  br label %130

130:                                              ; preds = %128, %124, %66, %52, %44
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i8* @sqlite3_value_text16(i32*) #1

declare dso_local i32 @sqlite3_value_bytes16(i32*) #1

declare dso_local i32 @sqlite3_result_text16(i32*, i8*, i32, i32) #1

declare dso_local i8* @sqlite3_realloc(i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @u_strToUpper(i8*, i32, i8*, i32, i8*, i64*) #1

declare dso_local i32 @u_strToLower(i8*, i32, i8*, i32, i8*, i64*) #1

declare dso_local i64 @U_SUCCESS(i64) #1

declare dso_local i32 @icuFunctionError(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
