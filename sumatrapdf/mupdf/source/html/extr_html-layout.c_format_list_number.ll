; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_format_list_number.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_format_list_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%C  \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d. \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%02d. \00", align 1
@roman_lc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@roman_uc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i8*, i32)* @format_list_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_list_number(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %28 [
    i32 133, label %12
    i32 138, label %16
    i32 141, label %20
    i32 132, label %24
    i32 140, label %29
    i32 139, label %34
    i32 134, label %39
    i32 128, label %46
    i32 137, label %53
    i32 131, label %59
    i32 135, label %65
    i32 129, label %71
    i32 136, label %77
    i32 130, label %83
  ]

12:                                               ; preds = %5
  %13 = load i8*, i8** %9, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @fz_strlcpy(i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %89

16:                                               ; preds = %5
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @fz_snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 8226)
  br label %89

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @fz_snprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 9675)
  br label %89

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @fz_snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 9632)
  br label %89

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %5, %28
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @fz_snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %89

34:                                               ; preds = %5
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @fz_snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %89

39:                                               ; preds = %5
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @roman_lc, align 4
  %45 = call i32 @format_roman_number(i32* %40, i8* %41, i32 %42, i32 %43, i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %89

46:                                               ; preds = %5
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @roman_uc, align 4
  %52 = call i32 @format_roman_number(i32* %47, i8* %48, i32 %49, i32 %50, i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %89

53:                                               ; preds = %5
  %54 = load i32*, i32** %6, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @format_alpha_number(i32* %54, i8* %55, i32 %56, i32 %57, i32 97, i32 122)
  br label %89

59:                                               ; preds = %5
  %60 = load i32*, i32** %6, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @format_alpha_number(i32* %60, i8* %61, i32 %62, i32 %63, i32 65, i32 90)
  br label %89

65:                                               ; preds = %5
  %66 = load i32*, i32** %6, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @format_alpha_number(i32* %66, i8* %67, i32 %68, i32 %69, i32 97, i32 122)
  br label %89

71:                                               ; preds = %5
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @format_alpha_number(i32* %72, i8* %73, i32 %74, i32 %75, i32 65, i32 90)
  br label %89

77:                                               ; preds = %5
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @format_alpha_number(i32* %78, i8* %79, i32 %80, i32 %81, i32 945, i32 969)
  br label %89

83:                                               ; preds = %5
  %84 = load i32*, i32** %6, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @format_alpha_number(i32* %84, i8* %85, i32 %86, i32 %87, i32 913, i32 937)
  br label %89

89:                                               ; preds = %83, %77, %71, %65, %59, %53, %46, %39, %34, %29, %24, %20, %16, %12
  ret void
}

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @format_roman_number(i32*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @format_alpha_number(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
