; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_stroke_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_stroke_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [13 x i8] c"<stroke_text\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"</stroke_text>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32*, float*, float, i32)* @fz_trace_stroke_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_trace_stroke_text(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, float* %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_2__*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %19, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %20, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %20, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @fz_trace_indent(i32* %26, i32* %27, i64 %30)
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %20, align 8
  %34 = call i32 @fz_write_printf(i32* %32, i32* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load float*, float** %16, align 8
  %39 = load float, float* %17, align 4
  %40 = call i32 @fz_trace_color(i32* %35, i32* %36, i32* %37, float* %38, float %39)
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %20, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @fz_trace_matrix(i32* %41, i32* %42, i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = call i32 @fz_write_printf(i32* %45, i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @fz_trace_text(i32* %48, i32* %49, i32* %50, i64 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %20, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @fz_trace_indent(i32* %56, i32* %57, i64 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %20, align 8
  %64 = call i32 @fz_write_printf(i32* %62, i32* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fz_trace_indent(i32*, i32*, i64) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*) #1

declare dso_local i32 @fz_trace_color(i32*, i32*, i32*, float*, float) #1

declare dso_local i32 @fz_trace_matrix(i32*, i32*, i32) #1

declare dso_local i32 @fz_trace_text(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
