; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_status_line_error.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_status_line_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { double, i8*, i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaybar_output*, double*)* @render_status_line_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @render_status_line_error(i32* %0, %struct.swaybar_output* %1, double* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.swaybar_output*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %6, align 8
  store double* %2, double** %7, align 8
  %18 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %19 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %134

28:                                               ; preds = %3
  %29 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %30 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %33 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = mul nsw i64 %31, %34
  store i64 %35, i64* %9, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @cairo_set_source_u32(i32* %36, i32 -16776961)
  %38 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %39 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = mul nsw i64 3, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %44 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %51 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  %54 = fmul double %49, %53
  store double %54, double* %11, align 8
  %55 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %56 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %12, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %65 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sitofp i64 %66 to double
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @get_text_size(i32* %62, i8* %63, i32* %13, i32* %14, i32* null, double %67, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %14, align 4
  %71 = sitofp i32 %70 to double
  %72 = load double, double* %11, align 8
  %73 = fmul double %72, 2.000000e+00
  %74 = fadd double %71, %73
  %75 = fptosi double %74 to i64
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %78 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sdiv i64 %76, %79
  store i64 %80, i64* %16, align 8
  %81 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %82 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %28
  %90 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %91 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %16, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* %16, align 8
  store i64 %96, i64* %4, align 8
  br label %134

97:                                               ; preds = %89, %28
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %98, %99
  %101 = sitofp i32 %100 to double
  %102 = load double*, double** %7, align 8
  %103 = load double, double* %102, align 8
  %104 = fsub double %103, %101
  store double %104, double* %102, align 8
  %105 = load i64, i64* %9, align 8
  %106 = sitofp i64 %105 to double
  %107 = fdiv double %106, 2.000000e+00
  %108 = load i32, i32* %14, align 4
  %109 = sitofp i32 %108 to double
  %110 = fdiv double %109, 2.000000e+00
  %111 = fsub double %107, %110
  store double %111, double* %17, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load double*, double** %7, align 8
  %114 = load double, double* %113, align 8
  %115 = load double, double* %17, align 8
  %116 = call i64 @floor(double %115)
  %117 = trunc i64 %116 to i32
  %118 = call i32 @cairo_move_to(i32* %112, double %114, i32 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %122 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @pango_printf(i32* %119, i8* %120, i64 %123, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %124)
  %126 = load i32, i32* %10, align 4
  %127 = sitofp i32 %126 to double
  %128 = load double*, double** %7, align 8
  %129 = load double, double* %128, align 8
  %130 = fsub double %129, %127
  store double %130, double* %128, align 8
  %131 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %132 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %4, align 8
  br label %134

134:                                              ; preds = %97, %95, %27
  %135 = load i64, i64* %4, align 8
  ret i64 %135
}

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @get_text_size(i32*, i8*, i32*, i32*, i32*, double, i32, i8*, i8*) #1

declare dso_local i32 @cairo_move_to(i32*, double, i32) #1

declare dso_local i64 @floor(double) #1

declare dso_local i32 @pango_printf(i32*, i8*, i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
