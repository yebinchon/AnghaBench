; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_fill_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_fill_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c" fill=\22#%06x\22\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" fill=\22none\22\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c" fill-opacity=\22%g\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*, float*, float, i32)* @svg_dev_fill_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_fill_color(i32* %0, %struct.TYPE_3__* %1, i32* %2, float* %3, float %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store float* %3, float** %10, align 8
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %13, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %6
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load float*, float** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @svg_hex_color(i32* %21, i32* %22, float* %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %29, i32* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %20
  br label %38

34:                                               ; preds = %6
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %35, i32* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %33
  %39 = load float, float* %11, align 4
  %40 = fcmp une float %39, 1.000000e+00
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load float, float* %11, align 4
  %45 = fpext float %44 to double
  %46 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %42, i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), double %45)
  br label %47

47:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @svg_hex_color(i32*, i32*, float*, i32) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
