; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_ignore_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_ignore_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i32* }

@.str = private unnamed_addr constant [6 x i8] c"<text\00", align 1
@fz_default_color_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_10__*, i32)* @svg_dev_ignore_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_ignore_text(i32* %0, i32* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca [3 x float], align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = bitcast [3 x float]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 12, i1 false)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %11, align 8
  br label %27

27:                                               ; preds = %46, %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @fz_write_printf(i32* %31, i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @fz_device_rgb(i32* %36)
  %38 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %39 = load i32, i32* @fz_default_color_params, align 4
  %40 = call i32 @svg_dev_fill_color(i32* %34, %struct.TYPE_8__* %35, i32 %37, float* %38, float 0.000000e+00, i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %45 = call i32 @svg_dev_text_span(i32* %41, %struct.TYPE_8__* %42, i32 %43, %struct.TYPE_9__* %44)
  br label %46

46:                                               ; preds = %30
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %11, align 8
  br label %27

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50, %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*) #2

declare dso_local i32 @svg_dev_fill_color(i32*, %struct.TYPE_8__*, i32, float*, float, i32) #2

declare dso_local i32 @fz_device_rgb(i32*) #2

declare dso_local i32 @svg_dev_text_span(i32*, %struct.TYPE_8__*, i32, %struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
