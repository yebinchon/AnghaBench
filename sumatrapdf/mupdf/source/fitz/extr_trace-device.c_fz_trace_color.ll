; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_trace-device.c_fz_trace_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c" colorspace=\22%s\22 color=\22\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%g\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" alpha=\22%g\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, float*, float)* @fz_trace_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_trace_color(i32* %0, i32* %1, i32* %2, float* %3, float %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store float* %3, float** %9, align 8
  store float %4, float* %10, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %5
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @fz_colorspace_n(i32* %16, i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call float @fz_colorspace_name(i32* %21, i32* %22)
  %24 = fpext float %23 to double
  %25 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %19, i32* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), double %24)
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %44, %15
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %37 = load float*, float** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fpext float %41 to double
  %43 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %31, i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36, double %42)
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %48, i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %5
  %52 = load float, float* %10, align 4
  %53 = fcmp olt float %52, 1.000000e+00
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load float, float* %10, align 4
  %58 = fpext float %57 to double
  %59 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %55, i32* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), double %58)
  br label %60

60:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

declare dso_local float @fz_colorspace_name(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
