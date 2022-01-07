; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_fz_load_bmp_info.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-bmp.c_fz_load_bmp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_load_bmp_info(i32* %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca %struct.info, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32** %7, i32*** %16, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @bmp_read_image(i32* %18, %struct.info* %17, i8* %19, i64 %20, i32 1)
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @fz_device_rgb(i32* %23)
  %25 = call i32* @fz_keep_colorspace(i32* %22, i32 %24)
  %26 = load i32**, i32*** %16, align 8
  store i32* %25, i32** %26, align 8
  %27 = getelementptr inbounds %struct.info, %struct.info* %17, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %12, align 8
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.info, %struct.info* %17, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.info, %struct.info* %17, i32 0, i32 2
  %34 = load float, float* %33, align 4
  %35 = fdiv float %34, 0x4043AF5EC0000000
  %36 = fptosi float %35 to i32
  %37 = load i32*, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.info, %struct.info* %17, i32 0, i32 3
  %39 = load float, float* %38, align 4
  %40 = fdiv float %39, 0x4043AF5EC0000000
  %41 = fptosi float %40 to i32
  %42 = load i32*, i32** %15, align 8
  store i32 %41, i32* %42, align 4
  ret void
}

declare dso_local i32 @bmp_read_image(i32*, %struct.info*, i8*, i64, i32) #1

declare dso_local i32* @fz_keep_colorspace(i32*, i32) #1

declare dso_local i32 @fz_device_rgb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
