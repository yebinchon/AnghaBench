; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_default_colorspace.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_default_colorspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @fz_default_colorspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fz_default_colorspace(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %53

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %4, align 8
  br label %53

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @fz_colorspace_type(i32* %17, i32* %18)
  switch i32 %19, label %50 [
    i32 129, label %20
    i32 128, label %30
    i32 130, label %40
  ]

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @fz_device_gray(i32* %22)
  %24 = icmp eq i32* %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @fz_default_gray(i32* %26, i32* %27)
  store i32* %28, i32** %4, align 8
  br label %53

29:                                               ; preds = %20
  br label %51

30:                                               ; preds = %16
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @fz_device_rgb(i32* %32)
  %34 = icmp eq i32* %31, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @fz_default_rgb(i32* %36, i32* %37)
  store i32* %38, i32** %4, align 8
  br label %53

39:                                               ; preds = %30
  br label %51

40:                                               ; preds = %16
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @fz_device_cmyk(i32* %42)
  %44 = icmp eq i32* %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32* @fz_default_cmyk(i32* %46, i32* %47)
  store i32* %48, i32** %4, align 8
  br label %53

49:                                               ; preds = %40
  br label %51

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50, %49, %39, %29
  %52 = load i32*, i32** %7, align 8
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %51, %45, %35, %25, %14, %10
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i32 @fz_colorspace_type(i32*, i32*) #1

declare dso_local i32* @fz_device_gray(i32*) #1

declare dso_local i32* @fz_default_gray(i32*, i32*) #1

declare dso_local i32* @fz_device_rgb(i32*) #1

declare dso_local i32* @fz_default_rgb(i32*, i32*) #1

declare dso_local i32* @fz_device_cmyk(i32*) #1

declare dso_local i32* @fz_default_cmyk(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
