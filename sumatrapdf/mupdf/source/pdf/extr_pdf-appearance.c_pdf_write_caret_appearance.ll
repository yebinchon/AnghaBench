; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_caret_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_caret_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"0 0 m\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"10 0 10 7 10 14 c\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"10 7 10 0 20 0 c\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @pdf_write_caret_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_caret_appearance(i32* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_5__, align 4
  %14 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = sdiv i32 %21, 2
  %23 = sitofp i32 %22 to float
  store float %23, float* %11, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sdiv i32 %30, 2
  %32 = sitofp i32 %31 to float
  store float %32, float* %12, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @pdf_write_fill_color_appearance(i32* %33, i32* %34, i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @fz_append_string(i32* %37, i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @fz_append_string(i32* %40, i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @fz_append_string(i32* %43, i32* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @fz_append_string(i32* %46, i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = load float, float* %11, align 4
  %51 = fsub float %50, 1.000000e+01
  %52 = load float, float* %12, align 4
  %53 = fsub float %52, 7.000000e+00
  %54 = load float, float* %11, align 4
  %55 = fadd float %54, 1.000000e+01
  %56 = fptosi float %55 to i32
  %57 = load float, float* %12, align 4
  %58 = fadd float %57, 7.000000e+00
  %59 = fptosi float %58 to i32
  %60 = call { i64, i64 } @fz_make_rect(float %51, float %53, i32 %56, i32 %59)
  %61 = bitcast %struct.TYPE_5__* %13 to { i64, i64 }*
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 0
  %63 = extractvalue { i64, i64 } %60, 0
  store i64 %63, i64* %62, align 4
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 1
  %65 = extractvalue { i64, i64 } %60, 1
  store i64 %65, i64* %64, align 4
  %66 = bitcast %struct.TYPE_5__* %49 to i8*
  %67 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 16, i1 false)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %69 = call { i64, i64 } @fz_make_rect(float 0.000000e+00, float 0.000000e+00, i32 20, i32 14)
  %70 = bitcast %struct.TYPE_5__* %14 to { i64, i64 }*
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 0
  %72 = extractvalue { i64, i64 } %69, 0
  store i64 %72, i64* %71, align 4
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 1
  %74 = extractvalue { i64, i64 } %69, 1
  store i64 %74, i64* %73, align 4
  %75 = bitcast %struct.TYPE_5__* %68 to i8*
  %76 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 16, i1 false)
  ret void
}

declare dso_local i32 @pdf_write_fill_color_appearance(i32*, i32*, i32*) #1

declare dso_local i32 @fz_append_string(i32*, i32*, i8*) #1

declare dso_local { i64, i64 } @fz_make_rect(float, float, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
