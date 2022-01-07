; ModuleID = '/home/carl/AnghaBench/sway/common/extr_background-image.c_render_background_image.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_background-image.c_render_background_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAIRO_EXTEND_REPEAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_background_image(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call double @cairo_image_surface_get_width(i32* %22)
  store double %23, double* %11, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call double @cairo_image_surface_get_height(i32* %24)
  store double %25, double* %12, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @cairo_save(i32* %26)
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %176 [
    i32 129, label %29
    i32 133, label %43
    i32 132, label %96
    i32 134, label %149
    i32 128, label %165
    i32 130, label %174
    i32 131, label %174
  ]

29:                                               ; preds = %5
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sitofp i32 %31 to double
  %33 = load double, double* %11, align 8
  %34 = fdiv double %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = sitofp i32 %35 to double
  %37 = load double, double* %12, align 8
  %38 = fdiv double %36, %37
  %39 = call i32 @cairo_scale(i32* %30, double %34, double %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @cairo_set_source_surface(i32* %40, i32* %41, double 0.000000e+00, double 0.000000e+00)
  br label %176

43:                                               ; preds = %5
  %44 = load i32, i32* %9, align 4
  %45 = sitofp i32 %44 to double
  %46 = load i32, i32* %10, align 4
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %45, %47
  store double %48, double* %13, align 8
  %49 = load double, double* %11, align 8
  %50 = load double, double* %12, align 8
  %51 = fdiv double %49, %50
  store double %51, double* %14, align 8
  %52 = load double, double* %13, align 8
  %53 = load double, double* %14, align 8
  %54 = fcmp ogt double %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %43
  %56 = load i32, i32* %9, align 4
  %57 = sitofp i32 %56 to double
  %58 = load double, double* %11, align 8
  %59 = fdiv double %57, %58
  store double %59, double* %15, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load double, double* %15, align 8
  %62 = load double, double* %15, align 8
  %63 = call i32 @cairo_scale(i32* %60, double %61, double %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %67, 2.000000e+00
  %69 = load double, double* %15, align 8
  %70 = fdiv double %68, %69
  %71 = load double, double* %12, align 8
  %72 = fdiv double %71, 2.000000e+00
  %73 = fsub double %70, %72
  %74 = call i32 @cairo_set_source_surface(i32* %64, i32* %65, double 0.000000e+00, double %73)
  br label %95

75:                                               ; preds = %43
  %76 = load i32, i32* %10, align 4
  %77 = sitofp i32 %76 to double
  %78 = load double, double* %12, align 8
  %79 = fdiv double %77, %78
  store double %79, double* %16, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load double, double* %16, align 8
  %82 = load double, double* %16, align 8
  %83 = call i32 @cairo_scale(i32* %80, double %81, double %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %87, 2.000000e+00
  %89 = load double, double* %16, align 8
  %90 = fdiv double %88, %89
  %91 = load double, double* %11, align 8
  %92 = fdiv double %91, 2.000000e+00
  %93 = fsub double %90, %92
  %94 = call i32 @cairo_set_source_surface(i32* %84, i32* %85, double %93, double 0.000000e+00)
  br label %95

95:                                               ; preds = %75, %55
  br label %176

96:                                               ; preds = %5
  %97 = load i32, i32* %9, align 4
  %98 = sitofp i32 %97 to double
  %99 = load i32, i32* %10, align 4
  %100 = sitofp i32 %99 to double
  %101 = fdiv double %98, %100
  store double %101, double* %17, align 8
  %102 = load double, double* %11, align 8
  %103 = load double, double* %12, align 8
  %104 = fdiv double %102, %103
  store double %104, double* %18, align 8
  %105 = load double, double* %17, align 8
  %106 = load double, double* %18, align 8
  %107 = fcmp ogt double %105, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %96
  %109 = load i32, i32* %10, align 4
  %110 = sitofp i32 %109 to double
  %111 = load double, double* %12, align 8
  %112 = fdiv double %110, %111
  store double %112, double* %19, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load double, double* %19, align 8
  %115 = load double, double* %19, align 8
  %116 = call i32 @cairo_scale(i32* %113, double %114, double %115)
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sitofp i32 %119 to double
  %121 = fdiv double %120, 2.000000e+00
  %122 = load double, double* %19, align 8
  %123 = fdiv double %121, %122
  %124 = load double, double* %11, align 8
  %125 = fdiv double %124, 2.000000e+00
  %126 = fsub double %123, %125
  %127 = call i32 @cairo_set_source_surface(i32* %117, i32* %118, double %126, double 0.000000e+00)
  br label %148

128:                                              ; preds = %96
  %129 = load i32, i32* %9, align 4
  %130 = sitofp i32 %129 to double
  %131 = load double, double* %11, align 8
  %132 = fdiv double %130, %131
  store double %132, double* %20, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = load double, double* %20, align 8
  %135 = load double, double* %20, align 8
  %136 = call i32 @cairo_scale(i32* %133, double %134, double %135)
  %137 = load i32*, i32** %6, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sitofp i32 %139 to double
  %141 = fdiv double %140, 2.000000e+00
  %142 = load double, double* %20, align 8
  %143 = fdiv double %141, %142
  %144 = load double, double* %12, align 8
  %145 = fdiv double %144, 2.000000e+00
  %146 = fsub double %143, %145
  %147 = call i32 @cairo_set_source_surface(i32* %137, i32* %138, double 0.000000e+00, double %146)
  br label %148

148:                                              ; preds = %128, %108
  br label %176

149:                                              ; preds = %5
  %150 = load i32*, i32** %6, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sitofp i32 %152 to double
  %154 = fdiv double %153, 2.000000e+00
  %155 = load double, double* %11, align 8
  %156 = fdiv double %155, 2.000000e+00
  %157 = fsub double %154, %156
  %158 = load i32, i32* %10, align 4
  %159 = sitofp i32 %158 to double
  %160 = fdiv double %159, 2.000000e+00
  %161 = load double, double* %12, align 8
  %162 = fdiv double %161, 2.000000e+00
  %163 = fsub double %160, %162
  %164 = call i32 @cairo_set_source_surface(i32* %150, i32* %151, double %157, double %163)
  br label %176

165:                                              ; preds = %5
  %166 = load i32*, i32** %7, align 8
  %167 = call i32* @cairo_pattern_create_for_surface(i32* %166)
  store i32* %167, i32** %21, align 8
  %168 = load i32*, i32** %21, align 8
  %169 = load i32, i32* @CAIRO_EXTEND_REPEAT, align 4
  %170 = call i32 @cairo_pattern_set_extend(i32* %168, i32 %169)
  %171 = load i32*, i32** %6, align 8
  %172 = load i32*, i32** %21, align 8
  %173 = call i32 @cairo_set_source(i32* %171, i32* %172)
  br label %176

174:                                              ; preds = %5, %5
  %175 = call i32 @assert(i32 0)
  br label %176

176:                                              ; preds = %5, %174, %165, %149, %148, %95, %29
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @cairo_paint(i32* %177)
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @cairo_restore(i32* %179)
  ret void
}

declare dso_local double @cairo_image_surface_get_width(i32*) #1

declare dso_local double @cairo_image_surface_get_height(i32*) #1

declare dso_local i32 @cairo_save(i32*) #1

declare dso_local i32 @cairo_scale(i32*, double, double) #1

declare dso_local i32 @cairo_set_source_surface(i32*, i32*, double, double) #1

declare dso_local i32* @cairo_pattern_create_for_surface(i32*) #1

declare dso_local i32 @cairo_pattern_set_extend(i32*, i32) #1

declare dso_local i32 @cairo_set_source(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32 @cairo_restore(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
