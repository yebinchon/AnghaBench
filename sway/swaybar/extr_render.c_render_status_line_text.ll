; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_status_line_text.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_status_line_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { double, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.swaybar_config*, %struct.TYPE_4__* }
%struct.swaybar_config = type { double, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaybar_output*, double*)* @render_status_line_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @render_status_line_text(i32* %0, %struct.swaybar_output* %1, double* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.swaybar_output*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.swaybar_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
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
  br label %157

28:                                               ; preds = %3
  %29 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %30 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.swaybar_config*, %struct.swaybar_config** %32, align 8
  store %struct.swaybar_config* %33, %struct.swaybar_config** %9, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %36 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %41 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %49

44:                                               ; preds = %28
  %45 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %46 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i32 [ %43, %39 ], [ %48, %44 ]
  %51 = call i32 @cairo_set_source_u32(i32* %34, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %54 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %57 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %60 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @get_text_size(i32* %52, i32 %55, i32* %10, i32* %11, i32* null, double %58, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %65 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %68 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %67, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = fmul double %66, %69
  store double %70, double* %12, align 8
  %71 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %72 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %71, i32 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = fmul double 3.000000e+00, %73
  %75 = fptosi double %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sitofp i32 %76 to double
  %78 = load double, double* %12, align 8
  %79 = fmul double %78, 2.000000e+00
  %80 = fadd double %77, %79
  %81 = fptosi double %80 to i64
  store i64 %81, i64* %14, align 8
  %82 = load i64, i64* %14, align 8
  %83 = sitofp i64 %82 to double
  %84 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %85 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %84, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = fdiv double %83, %86
  %88 = fptosi double %87 to i64
  store i64 %88, i64* %15, align 8
  %89 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %90 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.swaybar_config*, %struct.swaybar_config** %92, align 8
  %94 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %49
  %98 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %99 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i64, i64* %15, align 8
  store i64 %104, i64* %4, align 8
  br label %157

105:                                              ; preds = %97, %49
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  %109 = sitofp i32 %108 to double
  %110 = load double*, double** %7, align 8
  %111 = load double, double* %110, align 8
  %112 = fsub double %111, %109
  store double %112, double* %110, align 8
  %113 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %114 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = sitofp i64 %115 to double
  %117 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %118 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %117, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = fmul double %116, %119
  %121 = fptosi double %120 to i64
  store i64 %121, i64* %16, align 8
  %122 = load i64, i64* %16, align 8
  %123 = sitofp i64 %122 to double
  %124 = fdiv double %123, 2.000000e+00
  %125 = load i32, i32* %11, align 4
  %126 = sitofp i32 %125 to double
  %127 = fdiv double %126, 2.000000e+00
  %128 = fsub double %124, %127
  store double %128, double* %17, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load double*, double** %7, align 8
  %131 = load double, double* %130, align 8
  %132 = load double, double* %17, align 8
  %133 = call i64 @floor(double %132)
  %134 = trunc i64 %133 to i32
  %135 = call i32 @cairo_move_to(i32* %129, double %131, i32 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %138 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %141 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %140, i32 0, i32 0
  %142 = load double, double* %141, align 8
  %143 = fptosi double %142 to i64
  %144 = load %struct.swaybar_config*, %struct.swaybar_config** %9, align 8
  %145 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @pango_printf(i32* %136, i32 %139, i64 %143, i32 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %147)
  %149 = load i32, i32* %13, align 4
  %150 = sitofp i32 %149 to double
  %151 = load double*, double** %7, align 8
  %152 = load double, double* %151, align 8
  %153 = fsub double %152, %150
  store double %153, double* %151, align 8
  %154 = load %struct.swaybar_output*, %struct.swaybar_output** %6, align 8
  %155 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %4, align 8
  br label %157

157:                                              ; preds = %105, %103, %27
  %158 = load i64, i64* %4, align 8
  ret i64 %158
}

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, double, i32, i8*, i8*) #1

declare dso_local i32 @cairo_move_to(i32*, double, i32) #1

declare dso_local i64 @floor(double) #1

declare dso_local i32 @pango_printf(i32*, i32, i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
