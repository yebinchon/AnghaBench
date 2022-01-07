; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_layout_simple_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_layout_simple_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REPLACEMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, float, float, float, i8*, i8*)* @layout_simple_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout_simple_string(i32* %0, i32* %1, i32* %2, float %3, float %4, float %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load float, float* %13, align 4
  %24 = load float, float* %14, align 4
  %25 = load float, float* %12, align 4
  %26 = load i8*, i8** %15, align 8
  %27 = call i32 @fz_add_layout_line(i32* %21, i32* %22, float %23, float %24, float %25, i8* %26)
  br label %28

28:                                               ; preds = %41, %8
  %29 = load i8*, i8** %15, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = load i8*, i8** %15, align 8
  %34 = call i32 @fz_chartorune(i32* %19, i8* %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %19, align 4
  %36 = call i32 @fz_windows_1252_from_unicode(i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @REPLACEMENT, align 4
  store i32 %40, i32* %19, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @fz_encode_character(i32* %42, i32* %43, i32 %44)
  store i32 %45, i32* %20, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %20, align 4
  %49 = call float @fz_advance_glyph(i32* %46, i32* %47, i32 %48, i32 0)
  %50 = load float, float* %12, align 4
  %51 = fmul float %49, %50
  store float %51, float* %17, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load float, float* %13, align 4
  %55 = load float, float* %17, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @fz_add_layout_char(i32* %52, i32* %53, float %54, float %55, i8* %56)
  %58 = load i32, i32* %18, align 4
  %59 = load i8*, i8** %15, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %15, align 8
  %62 = load float, float* %17, align 4
  %63 = load float, float* %13, align 4
  %64 = fadd float %63, %62
  store float %64, float* %13, align 4
  br label %28

65:                                               ; preds = %28
  ret void
}

declare dso_local i32 @fz_add_layout_line(i32*, i32*, float, float, float, i8*) #1

declare dso_local i32 @fz_chartorune(i32*, i8*) #1

declare dso_local i32 @fz_windows_1252_from_unicode(i32) #1

declare dso_local i32 @fz_encode_character(i32*, i32*, i32) #1

declare dso_local float @fz_advance_glyph(i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_add_layout_char(i32*, i32*, float, float, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
