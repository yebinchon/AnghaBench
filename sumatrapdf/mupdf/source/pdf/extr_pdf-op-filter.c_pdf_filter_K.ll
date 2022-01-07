; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_pdf_filter_K.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_pdf_filter_K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float)* @pdf_filter_K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_filter_K(i32* %0, i32* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [4 x float], align 16
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %14 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 0
  %15 = load float, float* %9, align 4
  store float %15, float* %14, align 4
  %16 = getelementptr inbounds float, float* %14, i64 1
  %17 = load float, float* %10, align 4
  store float %17, float* %16, align 4
  %18 = getelementptr inbounds float, float* %16, i64 1
  %19 = load float, float* %11, align 4
  store float %19, float* %18, align 4
  %20 = getelementptr inbounds float, float* %18, i64 1
  %21 = load float, float* %12, align 4
  store float %21, float* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @fz_device_cmyk(i32* %24)
  %26 = call i32 @pdf_filter_CS(i32* %22, i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 0
  %30 = call i32 @pdf_filter_SC_color(i32* %27, i32* %28, i32 4, float* %29)
  ret void
}

declare dso_local i32 @pdf_filter_CS(i32*, i32*, i8*, i32) #1

declare dso_local i32 @fz_device_cmyk(i32*) #1

declare dso_local i32 @pdf_filter_SC_color(i32*, i32*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
