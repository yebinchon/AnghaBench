; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_gdip_get_font_metrics.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_font.c_gdip_get_font_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_metrics = type { double, i32, i32, i32, i32, i64, i32 }

@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.font_metrics*)* @gdip_get_font_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdip_get_font_metrics(i32* %0, %struct.font_metrics* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.font_metrics*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.font_metrics* %1, %struct.font_metrics** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @GdipGetFontStyle(i32* %8, i64* %5)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @Ok, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %14 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %13, i32 0, i32 6
  %15 = call i32 @GdipGetFontHeight(i32* null, i32* null, i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @InvalidParameter, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @GdipGetFontHeight(i32* %19, i32* null, i32* null)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @InvalidParameter, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %26 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %25, i32 0, i32 6
  %27 = call i32 @GdipGetFontHeight(i32* %24, i32* null, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @Ok, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %33 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %32, i32 0, i32 0
  %34 = call i32 @GdipGetFontSize(i32* %31, double* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @Ok, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @expect(i32 %35, i32 %36)
  %38 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %39 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = fmul double %40, -1.000000e+00
  %42 = fptosi double %41 to i64
  %43 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %44 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @GdipGetFamily(i32* %45, i32** %6)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @Ok, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @expect(i32 %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %53 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %52, i32 0, i32 4
  %54 = call i32 @GdipGetEmHeight(i32* %50, i64 %51, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @Ok, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %61 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %60, i32 0, i32 3
  %62 = call i32 @GdipGetLineSpacing(i32* %58, i64 %59, i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @Ok, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @expect(i32 %63, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %69 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %68, i32 0, i32 2
  %70 = call i32 @GdipGetCellAscent(i32* %66, i64 %67, i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @Ok, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @expect(i32 %71, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.font_metrics*, %struct.font_metrics** %4, align 8
  %77 = getelementptr inbounds %struct.font_metrics, %struct.font_metrics* %76, i32 0, i32 1
  %78 = call i32 @GdipGetCellDescent(i32* %74, i64 %75, i32* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @Ok, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @expect(i32 %79, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @GdipDeleteFontFamily(i32* %82)
  ret void
}

declare dso_local i32 @GdipGetFontStyle(i32*, i64*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipGetFontHeight(i32*, i32*, i32*) #1

declare dso_local i32 @GdipGetFontSize(i32*, double*) #1

declare dso_local i32 @GdipGetFamily(i32*, i32**) #1

declare dso_local i32 @GdipGetEmHeight(i32*, i64, i32*) #1

declare dso_local i32 @GdipGetLineSpacing(i32*, i64, i32*) #1

declare dso_local i32 @GdipGetCellAscent(i32*, i64, i32*) #1

declare dso_local i32 @GdipGetCellDescent(i32*, i64, i32*) #1

declare dso_local i32 @GdipDeleteFontFamily(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
