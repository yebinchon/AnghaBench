; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_skip_language_code_utf16be.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_skip_language_code_utf16be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64)* @skip_language_code_utf16be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skip_language_code_utf16be(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 6
  %10 = load i64, i64* %6, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, 0
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %12
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 1
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 27
  br i1 %27, label %28, label %45

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 4
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 5
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 27
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i64 6, i64* %4, align 8
  br label %85

45:                                               ; preds = %36, %28, %20, %12, %3
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ule i64 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, 0
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %50
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 27
  br i1 %65, label %66, label %83

66:                                               ; preds = %58
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 6
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 7
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 27
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i64 8, i64* %4, align 8
  br label %85

83:                                               ; preds = %74, %66, %58, %50, %45
  br label %84

84:                                               ; preds = %83
  store i64 0, i64* %4, align 8
  br label %85

85:                                               ; preds = %84, %82, %44
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
