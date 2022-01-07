; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_show_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_text.c_fz_show_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fz_show_string(i32* %0, i32* %1, i32* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  br label %23

23:                                               ; preds = %65, %9
  %24 = load i8*, i8** %14, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @fz_chartorune(i32* %21, i8* %28)
  %30 = load i8*, i8** %14, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %14, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* %18, align 4
  %37 = call i32 @fz_encode_character_with_fallback(i32* %33, i32* %34, i32 %35, i32 0, i32 %36, i32** %19)
  store i32 %37, i32* %20, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %19, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @fz_show_glyph(i32* %38, i32* %39, i32* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call float @fz_advance_glyph(i32* %49, i32* %50, i32 %51, i32 %52)
  store float %53, float* %22, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %27
  %57 = load i32, i32* %13, align 4
  %58 = load float, float* %22, align 4
  %59 = call i32 @fz_pre_translate(i32 %57, float %58, float 0.000000e+00)
  store i32 %59, i32* %13, align 4
  br label %65

60:                                               ; preds = %27
  %61 = load i32, i32* %13, align 4
  %62 = load float, float* %22, align 4
  %63 = fneg float %62
  %64 = call i32 @fz_pre_translate(i32 %61, float 0.000000e+00, float %63)
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %60, %56
  br label %23

66:                                               ; preds = %23
  %67 = load i32, i32* %13, align 4
  ret i32 %67
}

declare dso_local i32 @fz_chartorune(i32*, i8*) #1

declare dso_local i32 @fz_encode_character_with_fallback(i32*, i32*, i32, i32, i32, i32**) #1

declare dso_local i32 @fz_show_glyph(i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local float @fz_advance_glyph(i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_pre_translate(i32, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
