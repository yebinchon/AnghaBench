; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_format_roman_number.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_format_roman_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c". \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, [10 x i8*]*, i8*)* @format_roman_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_roman_number(i32* %0, i8* %1, i32 %2, i32 %3, [10 x i8*]* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [10 x i8*]*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store [10 x i8*]* %4, [10 x i8*]** %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = srem i32 %17, 10
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sdiv i32 %19, 10
  %21 = srem i32 %20, 10
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sdiv i32 %22, 100
  %24 = srem i32 %23, 10
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 1000
  store i32 %26, i32* %16, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @fz_strlcpy(i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %34, %6
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %16, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @fz_strlcat(i8* %35, i8* %36, i32 %37)
  br label %30

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = load [10 x i8*]*, [10 x i8*]** %11, align 8
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %41, i64 2
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %42, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @fz_strlcat(i8* %40, i8* %46, i32 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load [10 x i8*]*, [10 x i8*]** %11, align 8
  %51 = getelementptr inbounds [10 x i8*], [10 x i8*]* %50, i64 1
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i8*], [10 x i8*]* %51, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @fz_strlcat(i8* %49, i8* %55, i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load [10 x i8*]*, [10 x i8*]** %11, align 8
  %60 = getelementptr inbounds [10 x i8*], [10 x i8*]* %59, i64 0
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x i8*], [10 x i8*]* %60, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @fz_strlcat(i8* %58, i8* %64, i32 %65)
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @fz_strlcat(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_strlcat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
