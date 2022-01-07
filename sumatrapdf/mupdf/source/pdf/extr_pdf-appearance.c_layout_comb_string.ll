; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_layout_comb_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_layout_comb_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REPLACEMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, i8*, i8*, i32*, float, float)* @layout_comb_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout_comb_string(i32* %0, i32* %1, float %2, float %3, i8* %4, i8* %5, i32* %6, float %7, float %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store float %7, float* %17, align 4
  store float %8, float* %18, align 4
  store i32 1, i32* %22, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %9
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load float, float* %12, align 4
  %31 = load float, float* %18, align 4
  %32 = fdiv float %31, 2.000000e+00
  %33 = fadd float %30, %32
  %34 = load float, float* %13, align 4
  %35 = load float, float* %17, align 4
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @fz_add_layout_line(i32* %28, i32* %29, float %33, float %34, float %35, i8* %36)
  br label %38

38:                                               ; preds = %27, %9
  br label %39

39:                                               ; preds = %78, %38
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %97

43:                                               ; preds = %39
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @fz_chartorune(i32* %20, i8* %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = call i32 @fz_windows_1252_from_unicode(i32 %46)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @REPLACEMENT, align 4
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %50, %43
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %20, align 4
  %56 = call i32 @fz_encode_character(i32* %53, i32* %54, i32 %55)
  store i32 %56, i32* %21, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %21, align 4
  %60 = call float @fz_advance_glyph(i32* %57, i32* %58, i32 %59, i32 0)
  %61 = load float, float* %17, align 4
  %62 = fmul float %60, %61
  store float %62, float* %23, align 4
  %63 = load i32, i32* %22, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %52
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load float, float* %12, align 4
  %69 = load float, float* %18, align 4
  %70 = load float, float* %23, align 4
  %71 = fsub float %69, %70
  %72 = fdiv float %71, 2.000000e+00
  %73 = fadd float %68, %72
  %74 = load float, float* %13, align 4
  %75 = load float, float* %17, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @fz_add_layout_line(i32* %66, i32* %67, float %73, float %74, float %75, i8* %76)
  store i32 0, i32* %22, align 4
  br label %78

78:                                               ; preds = %65, %52
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load float, float* %12, align 4
  %82 = load float, float* %18, align 4
  %83 = load float, float* %23, align 4
  %84 = fsub float %82, %83
  %85 = fdiv float %84, 2.000000e+00
  %86 = fadd float %81, %85
  %87 = load float, float* %23, align 4
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 @fz_add_layout_char(i32* %79, i32* %80, float %86, float %87, i8* %88)
  %90 = load i32, i32* %19, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %14, align 8
  %94 = load float, float* %18, align 4
  %95 = load float, float* %12, align 4
  %96 = fadd float %95, %94
  store float %96, float* %12, align 4
  br label %39

97:                                               ; preds = %39
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
