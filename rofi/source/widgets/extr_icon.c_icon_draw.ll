; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_icon.c_icon_draw.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_icon.c_icon_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @icon_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icon_draw(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32* @rofi_icon_fetcher_get(i64 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @cairo_surface_reference(i32* %39)
  br label %41

41:                                               ; preds = %36, %25
  br label %42

42:                                               ; preds = %41, %20, %2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %146

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @cairo_image_surface_get_height(i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @cairo_image_surface_get_width(i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @MAX(i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = sitofp i64 %62 to double
  %64 = load i32, i32* %8, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %63, %65
  store double %66, double* %9, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = call i32 @WIDGET(%struct.TYPE_5__* %67)
  %69 = call i32 @widget_padding_get_left(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = call i32 @WIDGET(%struct.TYPE_5__* %70)
  %72 = call i32 @widget_padding_get_right(i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = call i32 @WIDGET(%struct.TYPE_5__* %73)
  %75 = call i32 @widget_padding_get_top(i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = call i32 @WIDGET(%struct.TYPE_5__* %76)
  %78 = call i32 @widget_padding_get_bottom(i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @cairo_save(i32* %79)
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sitofp i32 %82 to double
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sitofp i32 %87 to double
  %89 = load i32, i32* %7, align 4
  %90 = sitofp i32 %89 to double
  %91 = load double, double* %9, align 8
  %92 = fmul double %90, %91
  %93 = fsub double %88, %92
  %94 = load i32, i32* %10, align 4
  %95 = sitofp i32 %94 to double
  %96 = fsub double %93, %95
  %97 = load i32, i32* %11, align 4
  %98 = sitofp i32 %97 to double
  %99 = fsub double %96, %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sitofp i32 %102 to double
  %104 = fmul double %99, %103
  %105 = fadd double %83, %104
  %106 = fptosi double %105 to i32
  %107 = load i32, i32* %12, align 4
  %108 = sitofp i32 %107 to double
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sitofp i32 %112 to double
  %114 = load i32, i32* %6, align 4
  %115 = sitofp i32 %114 to double
  %116 = load double, double* %9, align 8
  %117 = fmul double %115, %116
  %118 = fsub double %113, %117
  %119 = load i32, i32* %12, align 4
  %120 = sitofp i32 %119 to double
  %121 = fsub double %118, %120
  %122 = load i32, i32* %13, align 4
  %123 = sitofp i32 %122 to double
  %124 = fsub double %121, %123
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sitofp i32 %127 to double
  %129 = fmul double %124, %128
  %130 = fadd double %108, %129
  %131 = fptosi double %130 to i32
  %132 = call i32 @cairo_translate(i32* %81, i32 %106, i32 %131)
  %133 = load i32*, i32** %4, align 8
  %134 = load double, double* %9, align 8
  %135 = load double, double* %9, align 8
  %136 = call i32 @cairo_scale(i32* %133, double %134, double %135)
  %137 = load i32*, i32** %4, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @cairo_set_source_surface(i32* %137, i32* %140, i32 0, i32 0)
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @cairo_paint(i32* %142)
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @cairo_restore(i32* %144)
  br label %146

146:                                              ; preds = %48, %47
  ret void
}

declare dso_local i32* @rofi_icon_fetcher_get(i64) #1

declare dso_local i32 @cairo_surface_reference(i32*) #1

declare dso_local i32 @cairo_image_surface_get_height(i32*) #1

declare dso_local i32 @cairo_image_surface_get_width(i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @widget_padding_get_left(i32) #1

declare dso_local i32 @WIDGET(%struct.TYPE_5__*) #1

declare dso_local i32 @widget_padding_get_right(i32) #1

declare dso_local i32 @widget_padding_get_top(i32) #1

declare dso_local i32 @widget_padding_get_bottom(i32) #1

declare dso_local i32 @cairo_save(i32*) #1

declare dso_local i32 @cairo_translate(i32*, i32, i32) #1

declare dso_local i32 @cairo_scale(i32*, double, double) #1

declare dso_local i32 @cairo_set_source_surface(i32*, i32*, i32, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32 @cairo_restore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
