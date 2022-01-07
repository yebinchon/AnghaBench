; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_write_comb_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_write_comb_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REPLACEMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"] TJ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i8*, i32*, float)* @write_comb_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_comb_string(i32* %0, i32* %1, i8* %2, i8* %3, i32* %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store float %5, float* %12, align 4
  store float 0.000000e+00, float* %15, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @fz_append_byte(i32* %18, i32* %19, i8 signext 91)
  br label %21

21:                                               ; preds = %75, %6
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %84

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @fz_chartorune(i32* %16, i8* %26)
  %28 = load i8*, i8** %9, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %9, align 8
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @fz_windows_1252_from_unicode(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @REPLACEMENT, align 4
  store i32 %36, i32* %16, align 4
  br label %37

37:                                               ; preds = %35, %25
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @fz_encode_character(i32* %38, i32* %39, i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @fz_advance_glyph(i32* %42, i32* %43, i32 %44, i32 0)
  %46 = mul nsw i32 %45, 1000
  %47 = sitofp i32 %46 to float
  store float %47, float* %13, align 4
  %48 = load float, float* %12, align 4
  %49 = load float, float* %13, align 4
  %50 = fsub float %48, %49
  %51 = fdiv float %50, 2.000000e+00
  store float %51, float* %14, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load float, float* %15, align 4
  %55 = load float, float* %14, align 4
  %56 = fadd float %54, %55
  %57 = fneg float %56
  %58 = call i32 @fz_append_printf(i32* %52, i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %57)
  %59 = load float, float* %14, align 4
  store float %59, float* %15, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @fz_append_byte(i32* %60, i32* %61, i8 signext 40)
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, 40
  br i1 %64, label %71, label %65

65:                                               ; preds = %37
  %66 = load i32, i32* %16, align 4
  %67 = icmp eq i32 %66, 41
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %16, align 4
  %70 = icmp eq i32 %69, 92
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %65, %37
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @fz_append_byte(i32* %72, i32* %73, i8 signext 92)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %16, align 4
  %79 = trunc i32 %78 to i8
  %80 = call i32 @fz_append_byte(i32* %76, i32* %77, i8 signext %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @fz_append_byte(i32* %81, i32* %82, i8 signext 41)
  br label %21

84:                                               ; preds = %21
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @fz_append_string(i32* %85, i32* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fz_append_byte(i32*, i32*, i8 signext) #1

declare dso_local i32 @fz_chartorune(i32*, i8*) #1

declare dso_local i32 @fz_windows_1252_from_unicode(i32) #1

declare dso_local i32 @fz_encode_character(i32*, i32*, i32) #1

declare dso_local i32 @fz_advance_glyph(i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, float) #1

declare dso_local i32 @fz_append_string(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
