; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-interpret.c_pdf_tos_make_trm.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-interpret.c_pdf_tos_make_trm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { float, float, i32, i32, i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_20__ = type { i32, i32, float, float }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, float, i64, i64, i64 }
%struct.TYPE_22__ = type { float }
%struct.TYPE_19__ = type { float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_tos_make_trm(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2, %struct.TYPE_23__* %3, i32 %4, %struct.TYPE_24__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca %struct.TYPE_22__, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_19__, align 4
  %17 = alloca { <2 x float>, float }, align 8
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_24__, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_24__* %5, %struct.TYPE_24__** %12, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  %37 = load float, float* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  store float %37, float* %38, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %6
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call float @pdf_lookup_hmtx(i32* %44, %struct.TYPE_23__* %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  store float %47, float* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %50 = load float, float* %49, align 4
  %51 = fmul float %50, 0x3F50624DE0000000
  store float %51, float* %15, align 4
  %52 = load float, float* %15, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sitofp i32 %55 to float
  %57 = fmul float %52, %56
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 3
  %60 = load float, float* %59, align 4
  %61 = fadd float %57, %60
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to float
  %66 = fmul float %61, %65
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  store float %66, float* %68, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  store float 0.000000e+00, float* %70, align 4
  br label %71

71:                                               ; preds = %43, %6
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %125

76:                                               ; preds = %71
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call { <2 x float>, float } @pdf_lookup_vmtx(i32* %77, %struct.TYPE_23__* %78, i32 %79)
  store { <2 x float>, float } %80, { <2 x float>, float }* %17, align 8
  %81 = bitcast { <2 x float>, float }* %17 to i8*
  %82 = bitcast %struct.TYPE_19__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 8 %81, i64 12, i1 false)
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %84 = load float, float* %83, align 4
  %85 = fmul float %84, 0x3F50624DE0000000
  store float %85, float* %18, align 4
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %87 = load float, float* %86, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sitofp i32 %90 to float
  %92 = call float @llvm.fabs.f32(float %91)
  %93 = fmul float %87, %92
  %94 = fmul float %93, 0x3F50624DE0000000
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to float
  %98 = fsub float %97, %94
  %99 = fptosi float %98 to i64
  store i64 %99, i64* %95, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  %101 = load float, float* %100, align 4
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sitofp i32 %104 to float
  %106 = fmul float %101, %105
  %107 = fmul float %106, 0x3F50624DE0000000
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  %109 = load float, float* %108, align 8
  %110 = fsub float %109, %107
  store float %110, float* %108, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  store float 0.000000e+00, float* %112, align 8
  %113 = load float, float* %18, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sitofp i32 %116 to float
  %118 = fmul float %113, %117
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 3
  %121 = load float, float* %120, align 4
  %122 = fadd float %118, %121
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  store float %122, float* %124, align 4
  br label %125

125:                                              ; preds = %76, %71
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  call void @fz_concat(%struct.TYPE_24__* sret %19, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %13, i32 %129)
  %130 = bitcast %struct.TYPE_24__* %126 to i8*
  %131 = bitcast %struct.TYPE_24__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 40, i1 false)
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @pdf_font_cid_to_gid(i32* %135, %struct.TYPE_23__* %136, i32 %137)
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 5
  store %struct.TYPE_23__* %141, %struct.TYPE_23__** %143, align 8
  %144 = load i32*, i32** %7, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %152 = call i32 @fz_bound_glyph(i32* %144, i32 %147, i32 %150, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8 %151)
  %153 = call i32 @fz_expand_rect(i32 %152, i32 1)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  ret i32 %158
}

declare dso_local float @pdf_lookup_hmtx(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local { <2 x float>, float } @pdf_lookup_vmtx(i32*, %struct.TYPE_23__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

declare dso_local void @fz_concat(%struct.TYPE_24__* sret, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8, i32) #1

declare dso_local i32 @pdf_font_cid_to_gid(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @fz_expand_rect(i32, i32) #1

declare dso_local i32 @fz_bound_glyph(i32*, i32, i32, %struct.TYPE_24__* byval(%struct.TYPE_24__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
