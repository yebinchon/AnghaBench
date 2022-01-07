; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_sig_widget_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_sig_widget_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"1 w\0A0 G\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%g %g %g %g re\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%g %g m %g %g l\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"s\0A\00", align 1
@fz_identity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32*, i32**)* @pdf_write_sig_widget_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_sig_widget_appearance(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3, %struct.TYPE_4__* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32** %6, i32*** %14, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = sitofp i32 %24 to float
  store float %25, float* %15, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = sitofp i32 %29 to float
  store float %30, float* %16, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sitofp i32 %34 to float
  store float %35, float* %17, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sitofp i32 %39 to float
  store float %40, float* %18, align 4
  %41 = load float, float* %17, align 4
  %42 = load float, float* %15, align 4
  %43 = fsub float %41, %42
  store float %43, float* %19, align 4
  %44 = load float, float* %18, align 4
  %45 = load float, float* %16, align 4
  %46 = fsub float %44, %45
  store float %46, float* %20, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %47, i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load float, float* %15, align 4
  %53 = fpext float %52 to double
  %54 = load float, float* %16, align 4
  %55 = fpext float %54 to double
  %56 = load float, float* %19, align 4
  %57 = fpext float %56 to double
  %58 = load float, float* %20, align 4
  %59 = fpext float %58 to double
  %60 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %50, i32* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double %53, double %55, double %57, double %59)
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load float, float* %15, align 4
  %64 = fpext float %63 to double
  %65 = load float, float* %16, align 4
  %66 = fpext float %65 to double
  %67 = load float, float* %17, align 4
  %68 = fpext float %67 to double
  %69 = load float, float* %18, align 4
  %70 = fpext float %69 to double
  %71 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %61, i32* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %64, double %66, double %68, double %70)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load float, float* %17, align 4
  %75 = fpext float %74 to double
  %76 = load float, float* %16, align 4
  %77 = fpext float %76 to double
  %78 = load float, float* %15, align 4
  %79 = fpext float %78 to double
  %80 = load float, float* %18, align 4
  %81 = fpext float %80 to double
  %82 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %72, i32* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %75, double %77, double %79, double %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %83, i32* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = bitcast %struct.TYPE_4__* %86 to i8*
  %89 = bitcast %struct.TYPE_4__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 16, i1 false)
  %90 = load i32, i32* @fz_identity, align 4
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  ret void
}

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
