; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_match_att_has_condition.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_match_att_has_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @match_att_has_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_att_has_condition(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @fz_xml_att(i32* %11, i8* %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %56

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @strcmp(i8* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %57

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %10, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strstr(i8* %25, i8* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %22
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37, %30
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %44
  store i32 1, i32* %4, align 4
  br label %57

55:                                               ; preds = %48, %37, %22
  br label %56

56:                                               ; preds = %55, %3
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %54, %21
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i8* @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
