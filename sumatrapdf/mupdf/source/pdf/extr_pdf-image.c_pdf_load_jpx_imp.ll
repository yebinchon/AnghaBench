; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-image.c_pdf_load_jpx_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-image.c_pdf_load_jpx_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@fz_default_color_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32*, i32)* @pdf_load_jpx_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pdf_load_jpx_imp(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i32* @pdf_load_jpx(i32* %18, i32* %19, i32* %20, i32 %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %6
  %26 = load i32*, i32** %13, align 8
  store i32* %26, i32** %14, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = call %struct.TYPE_9__* @fz_pixmap_image_tile(i32* %27, i32* %28)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %16, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fz_device_gray(i32* %37)
  %39 = load i32, i32* @fz_default_color_params, align 4
  %40 = call %struct.TYPE_9__* @fz_convert_pixmap(i32* %35, %struct.TYPE_9__* %36, i32 %38, i32* null, i32* null, i32 %39, i32 0)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %17, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %43 = call i32 @fz_drop_pixmap(i32* %41, %struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %16, align 8
  br label %45

45:                                               ; preds = %34, %25
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %48 = call %struct.TYPE_9__* @fz_alpha_from_gray(i32* %46, %struct.TYPE_9__* %47)
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %15, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %51 = call i32 @fz_drop_pixmap(i32* %49, %struct.TYPE_9__* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %55 = call i32 @fz_set_pixmap_image_tile(i32* %52, i32* %53, %struct.TYPE_9__* %54)
  br label %56

56:                                               ; preds = %45, %6
  %57 = load i32*, i32** %13, align 8
  ret i32* %57
}

declare dso_local i32* @pdf_load_jpx(i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_9__* @fz_pixmap_image_tile(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @fz_convert_pixmap(i32*, %struct.TYPE_9__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_device_gray(i32*) #1

declare dso_local i32 @fz_drop_pixmap(i32*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @fz_alpha_from_gray(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @fz_set_pixmap_image_tile(i32*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
