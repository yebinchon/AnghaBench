; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_fill_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_fill_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [11 x i8] c"<fill_text\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"</fill_text>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32*, float*, float, i32)* @fz_trace_fill_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_trace_fill_text(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, float* %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store float* %5, float** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %17, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %18, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %18, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @fz_trace_indent(i32* %24, i32* %25, i64 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = call i32 @fz_write_printf(i32* %30, i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load float*, float** %14, align 8
  %37 = load float, float* %15, align 4
  %38 = call i32 @fz_trace_color(i32* %33, i32* %34, i32* %35, float* %36, float %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @fz_trace_matrix(i32* %39, i32* %40, i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = call i32 @fz_write_printf(i32* %43, i32* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @fz_trace_text(i32* %46, i32* %47, i32* %48, i64 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @fz_trace_indent(i32* %54, i32* %55, i64 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = call i32 @fz_write_printf(i32* %60, i32* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
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
