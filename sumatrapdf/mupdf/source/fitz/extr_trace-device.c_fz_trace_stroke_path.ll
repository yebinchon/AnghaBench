; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_stroke_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_stroke_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"<stroke_path\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" linewidth=\22%g\22\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" miterlimit=\22%g\22\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" linecap=\22%d,%d,%d\22\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c" linejoin=\22%d\22\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c" dash_phase=\22%g\22 dash=\22\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%g\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"</stroke_path>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_6__*, i32, i32*, float*, float, i32)* @fz_trace_stroke_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_trace_stroke_path(i32* %0, i32* %1, i32* %2, %struct.TYPE_6__* %3, i32 %4, i32* %5, float* %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %19, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %20, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %20, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @fz_trace_indent(i32* %27, i32* %28, i32 %31)
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %20, align 8
  %35 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %33, i32* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %20, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %36, i32* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %42, i32* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %48, i32* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %55, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %20, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %60, i32* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %9
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %71, i32* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  store i32 0, i32* %21, align 4
  br label %77

77:                                               ; preds = %98, %70
  %78 = load i32, i32* %21, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = load i32, i32* %21, align 4
  %87 = icmp sgt i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %21, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %84, i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %89, i32 %96)
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %21, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %21, align 4
  br label %77

101:                                              ; preds = %77
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %20, align 8
  %104 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %102, i32* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %9
  %106 = load i32*, i32** %10, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = load float*, float** %16, align 8
  %110 = load float, float* %17, align 4
  %111 = call i32 @fz_trace_color(i32* %106, i32* %107, i32* %108, float* %109, float %110)
  %112 = load i32*, i32** %10, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @fz_trace_matrix(i32* %112, i32* %113, i32 %114)
  %116 = load i32*, i32** %10, align 8
  %117 = load i32*, i32** %20, align 8
  %118 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %116, i32* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @fz_trace_path(i32* %119, %struct.TYPE_5__* %120, i32* %121)
  %123 = load i32*, i32** %10, align 8
  %124 = load i32*, i32** %20, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @fz_trace_indent(i32* %123, i32* %124, i32 %127)
  %129 = load i32*, i32** %10, align 8
  %130 = load i32*, i32** %20, align 8
  %131 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %129, i32* %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fz_trace_indent(i32*, i32*, i32) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32 @fz_trace_color(i32*, i32*, i32*, float*, float) #1

declare dso_local i32 @fz_trace_matrix(i32*, i32*, i32) #1

declare dso_local i32 @fz_trace_path(i32*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
