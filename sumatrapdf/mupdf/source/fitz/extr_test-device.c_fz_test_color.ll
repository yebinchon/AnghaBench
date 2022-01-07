; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_test-device.c_fz_test_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_test-device.c_fz_test_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32*, i32 }

@FZ_COLORSPACE_GRAY = common dso_local global i64 0, align 8
@FZ_ERROR_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Page found as color; stopping interpretation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*, float*, i32)* @fz_test_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_test_color(i32* %0, %struct.TYPE_3__* %1, i32* %2, float* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x float], align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %99

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @fz_colorspace_type(i32* %21, i32* %22)
  %24 = load i64, i64* @FZ_COLORSPACE_GRAY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %99

26:                                               ; preds = %20
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @fz_device_rgb(i32* %28)
  %30 = icmp eq i32* %27, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load float*, float** %9, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %9, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %9, align 8
  %42 = getelementptr inbounds float, float* %41, i64 2
  %43 = load float, float* %42, align 4
  %44 = call i64 @is_rgb_color(i32 %34, float %37, float %40, float %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %31
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32 2, i32* %49, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @FZ_ERROR_ABORT, align 4
  %59 = call i32 @fz_throw(i32* %57, i32 %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %46
  br label %61

61:                                               ; preds = %60, %31
  br label %98

62:                                               ; preds = %26
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load float*, float** %9, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32* @fz_device_rgb(i32* %66)
  %68 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @fz_convert_color(i32* %63, i32* %64, float* %65, i32* %67, float* %68, i32* null, i32 %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %75 = load float, float* %74, align 4
  %76 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 1
  %77 = load float, float* %76, align 4
  %78 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 2
  %79 = load float, float* %78, align 4
  %80 = call i64 @is_rgb_color(i32 %73, float %75, float %77, float %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %62
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32 2, i32* %85, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @FZ_ERROR_ABORT, align 4
  %95 = call i32 @fz_throw(i32* %93, i32 %94, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %82
  br label %97

97:                                               ; preds = %96, %62
  br label %98

98:                                               ; preds = %97, %61
  br label %99

99:                                               ; preds = %98, %20, %17, %5
  ret void
}

declare dso_local i64 @fz_colorspace_type(i32*, i32*) #1

declare dso_local i32* @fz_device_rgb(i32*) #1

declare dso_local i64 @is_rgb_color(i32, float, float, float) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_convert_color(i32*, i32*, float*, i32*, float*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
