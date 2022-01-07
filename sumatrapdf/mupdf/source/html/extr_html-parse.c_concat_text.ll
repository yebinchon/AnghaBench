; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_concat_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-parse.c_concat_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @concat_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @concat_text(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 1, i64* %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @fz_xml_down(i32* %11)
  store i32* %12, i32** %5, align 8
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @fz_xml_text(i32* %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strlen(i8* %22)
  br label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i64 [ %23, %21 ], [ 0, %24 ]
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @fz_xml_next(i32* %30)
  store i32* %31, i32** %5, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load i32*, i32** %3, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i8* @fz_malloc(i32* %33, i64 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32* @fz_xml_down(i32* %36)
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %59, %32
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = call i8* @fz_xml_text(i32* %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @memcpy(i8* %51, i8* %52, i64 %53)
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %46, %41
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @fz_xml_next(i32* %60)
  store i32* %61, i32** %5, align 8
  br label %38

62:                                               ; preds = %38
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %8, align 8
  ret i8* %66
}

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i8* @fz_xml_text(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @fz_xml_next(i32*) #1

declare dso_local i8* @fz_malloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
