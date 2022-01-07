; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-store.c_pdf_format_key.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-store.c_pdf_format_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"(%d 0 R)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i8*)* @pdf_format_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_format_key(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @pdf_is_indirect(i32* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @pdf_to_num(i32* %21, i32* %22)
  %24 = call i32 @fz_snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %43

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i8* @pdf_sprint_obj(i32* %26, i8* %27, i32 %28, i32* %10, i32* %29, i32 1, i32 0)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @fz_strlcpy(i8* %35, i8* %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @fz_free(i32* %39, i8* %40)
  br label %42

42:                                               ; preds = %34, %25
  br label %43

43:                                               ; preds = %42, %18
  ret void
}

declare dso_local i64 @pdf_is_indirect(i32*, i32*) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i8* @pdf_sprint_obj(i32*, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
