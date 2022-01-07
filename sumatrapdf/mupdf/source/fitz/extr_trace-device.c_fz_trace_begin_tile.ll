; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_begin_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_begin_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"<tile id=\22%d\22\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" area=\22%g %g %g %g\22\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" view=\22%g %g %g %g\22\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" xstep=\22%g\22 ystep=\22%g\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i64, i64, float, float, i32, i32)* @fz_trace_begin_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fz_trace_begin_tile(i32* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5, float %6, float %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32*, align 8
  %21 = bitcast %struct.TYPE_6__* %11 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  store i64 %2, i64* %22, align 4
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  store i64 %3, i64* %23, align 4
  %24 = bitcast %struct.TYPE_6__* %12 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  store i64 %4, i64* %25, align 4
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  store i64 %5, i64* %26, align 4
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  store i32 %8, i32* %17, align 4
  store i32 %9, i32* %18, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %19, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %20, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %20, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @fz_trace_indent(i32* %32, i32* %33, i32 %36)
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %20, align 8
  %40 = load i32, i32* %18, align 4
  %41 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %38, i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %42, i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47, i32 %49, i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %53, i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %58, i32 %60, i32 %62)
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** %20, align 8
  %66 = load float, float* %15, align 4
  %67 = fpext float %66 to double
  %68 = load float, float* %16, align 4
  %69 = fpext float %68 to double
  %70 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %64, i32* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), double %67, double %69)
  %71 = load i32*, i32** %13, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @fz_trace_matrix(i32* %71, i32* %72, i32 %73)
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %75, i32* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  ret i32 0
}

declare dso_local i32 @fz_trace_indent(i32*, i32*, i32) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32 @fz_trace_matrix(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
