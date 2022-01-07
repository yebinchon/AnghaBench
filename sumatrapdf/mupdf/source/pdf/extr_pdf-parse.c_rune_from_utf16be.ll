; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_rune_from_utf16be.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_rune_from_utf16be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FZ_REPLACEMENT_CHARACTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @rune_from_utf16be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rune_from_utf16be(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ule i8* %11, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 %18, 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %19, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 55296
  br i1 %26, label %27, label %54

27:                                               ; preds = %14
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %28, 57343
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ule i8* %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %40, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 55296
  %48 = shl i32 %47, 10
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 56320
  %51 = add nsw i32 %48, %50
  %52 = add nsw i32 %51, 65536
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  store i32 4, i32* %4, align 4
  br label %60

54:                                               ; preds = %30, %27, %14
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  store i32 2, i32* %4, align 4
  br label %60

57:                                               ; preds = %3
  %58 = load i32, i32* @FZ_REPLACEMENT_CHARACTER, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %54, %35
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
