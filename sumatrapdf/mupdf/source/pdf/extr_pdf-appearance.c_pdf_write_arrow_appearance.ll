; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_arrow_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_arrow_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float }

@.str = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, float, float, float, float, float)* @pdf_write_arrow_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_arrow_appearance(i32* %0, i32* %1, i32* %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_5__, align 4
  %20 = alloca %struct.TYPE_5__, align 4
  %21 = alloca %struct.TYPE_5__, align 4
  %22 = alloca %struct.TYPE_5__, align 4
  %23 = alloca %struct.TYPE_5__, align 4
  %24 = alloca %struct.TYPE_5__, align 4
  %25 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %26 = load float, float* %16, align 4
  %27 = call float @fz_max(i32 1, float %26)
  store float %27, float* %17, align 4
  %28 = load float, float* %15, align 4
  %29 = load float, float* %14, align 4
  %30 = call float @atan2f(float %28, float %29) #4
  store float %30, float* %18, align 4
  %31 = load float, float* %18, align 4
  %32 = load float, float* %17, align 4
  %33 = fmul float 0x40219999A0000000, %32
  %34 = load float, float* %17, align 4
  %35 = fmul float 4.500000e+00, %34
  %36 = call <2 x float> @rotate_vector(float %31, float %33, float %35)
  %37 = bitcast %struct.TYPE_5__* %22 to <2 x float>*
  store <2 x float> %36, <2 x float>* %37, align 4
  %38 = bitcast %struct.TYPE_5__* %19 to i8*
  %39 = bitcast %struct.TYPE_5__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 8, i1 false)
  %40 = load float, float* %12, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %42 = load float, float* %41, align 4
  %43 = fadd float %40, %42
  %44 = load float, float* %13, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = fadd float %44, %46
  %48 = call <2 x float> @fz_make_point(float %43, float %47)
  %49 = bitcast %struct.TYPE_5__* %23 to <2 x float>*
  store <2 x float> %48, <2 x float>* %49, align 4
  %50 = bitcast %struct.TYPE_5__* %20 to i8*
  %51 = bitcast %struct.TYPE_5__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 8, i1 false)
  %52 = load float, float* %18, align 4
  %53 = load float, float* %17, align 4
  %54 = fmul float 0x40219999A0000000, %53
  %55 = load float, float* %17, align 4
  %56 = fmul float -4.500000e+00, %55
  %57 = call <2 x float> @rotate_vector(float %52, float %54, float %56)
  %58 = bitcast %struct.TYPE_5__* %24 to <2 x float>*
  store <2 x float> %57, <2 x float>* %58, align 4
  %59 = bitcast %struct.TYPE_5__* %19 to i8*
  %60 = bitcast %struct.TYPE_5__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  %61 = load float, float* %12, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %63 = load float, float* %62, align 4
  %64 = fadd float %61, %63
  %65 = load float, float* %13, align 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %67 = load float, float* %66, align 4
  %68 = fadd float %65, %67
  %69 = call <2 x float> @fz_make_point(float %64, float %68)
  %70 = bitcast %struct.TYPE_5__* %25 to <2 x float>*
  store <2 x float> %69, <2 x float>* %70, align 4
  %71 = bitcast %struct.TYPE_5__* %21 to i8*
  %72 = bitcast %struct.TYPE_5__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 8, i1 false)
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = bitcast %struct.TYPE_5__* %20 to <2 x float>*
  %76 = load <2 x float>, <2 x float>* %75, align 4
  %77 = call i32 @fz_include_point_in_rect(i32 %74, <2 x float> %76)
  %78 = load i32*, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = bitcast %struct.TYPE_5__* %21 to <2 x float>*
  %82 = load <2 x float>, <2 x float>* %81, align 4
  %83 = call i32 @fz_include_point_in_rect(i32 %80, <2 x float> %82)
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load float, float* %16, align 4
  %88 = call i32 @fz_expand_rect(i32 %86, float %87)
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %93 = load float, float* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %95 = load float, float* %94, align 4
  %96 = call i32 @fz_append_printf(i32* %90, i32* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), float %93, float %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load float, float* %12, align 4
  %100 = load float, float* %13, align 4
  %101 = call i32 @fz_append_printf(i32* %97, i32* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), float %99, float %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %105 = load float, float* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %107 = load float, float* %106, align 4
  %108 = call i32 @fz_append_printf(i32* %102, i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), float %105, float %107)
  ret void
}

declare dso_local float @fz_max(i32, float) #1

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #2

declare dso_local <2 x float> @rotate_vector(float, float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local <2 x float> @fz_make_point(float, float) #1

declare dso_local i32 @fz_include_point_in_rect(i32, <2 x float>) #1

declare dso_local i32 @fz_expand_rect(i32, float) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
