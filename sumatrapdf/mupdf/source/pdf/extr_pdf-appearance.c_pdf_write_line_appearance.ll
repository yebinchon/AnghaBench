; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_line_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_line_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32, i32 }

@L = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%g %g m\0A%g %g l\0A\00", align 1
@LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, i32*, %struct.TYPE_13__*)* @pdf_write_line_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_line_appearance(i32* %0, %struct.TYPE_12__* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__, align 4
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call float @pdf_write_border_appearance(i32* %20, %struct.TYPE_12__* %21, i32* %22)
  store float %23, float* %13, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @pdf_write_stroke_color_appearance(i32* %24, %struct.TYPE_12__* %25, i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @pdf_write_interior_fill_color_appearance(i32* %28, %struct.TYPE_12__* %29, i32* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @L, align 4
  %37 = call i32 @PDF_NAME(i32 %36)
  %38 = call i32* @pdf_dict_get(i32* %32, i32 %35, i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i8* @pdf_array_get_real(i32* %39, i32* %40, i32 0)
  %42 = ptrtoint i8* %41 to i32
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i8* @pdf_array_get_real(i32* %44, i32* %45, i32 1)
  %47 = ptrtoint i8* %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i8* @pdf_array_get_real(i32* %49, i32* %50, i32 2)
  %52 = ptrtoint i8* %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i8* @pdf_array_get_real(i32* %54, i32* %55, i32 3)
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fz_append_printf(i32* %59, i32* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64, i32 %66, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @maybe_stroke(i32* %70, i32* %71, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @fz_min(i32 %75, i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @fz_min(i32 %82, i32 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sitofp i32 %91 to float
  %93 = call i8* @fz_max(i32 %89, float %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sitofp i32 %99 to float
  %101 = call i8* @fz_max(i32 %97, float %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @LE, align 4
  %109 = call i32 @PDF_NAME(i32 %108)
  %110 = call i32* @pdf_dict_get(i32* %104, i32 %107, i32 %109)
  store i32* %110, i32** %10, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @pdf_array_len(i32* %111, i32* %112)
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %182

115:                                              ; preds = %4
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %117, %119
  %121 = sitofp i32 %120 to float
  store float %121, float* %16, align 4
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %123, %125
  %127 = sitofp i32 %126 to float
  store float %127, float* %17, align 4
  %128 = load float, float* %16, align 4
  %129 = load float, float* %16, align 4
  %130 = fmul float %128, %129
  %131 = load float, float* %17, align 4
  %132 = load float, float* %17, align 4
  %133 = fmul float %131, %132
  %134 = fadd float %130, %133
  %135 = call float @sqrtf(float %134) #4
  store float %135, float* %18, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sitofp i32 %140 to float
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sitofp i32 %143 to float
  %145 = load float, float* %16, align 4
  %146 = load float, float* %18, align 4
  %147 = fdiv float %145, %146
  %148 = load float, float* %17, align 4
  %149 = load float, float* %18, align 4
  %150 = fdiv float %148, %149
  %151 = load float, float* %13, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @pdf_array_get(i32* %154, i32* %155, i32 0)
  %157 = call i32 @pdf_write_line_cap_appearance(i32* %136, i32* %137, %struct.TYPE_13__* %138, float %141, float %144, float %147, float %150, float %151, i32 %152, i32 %153, i32 %156)
  %158 = load i32*, i32** %5, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sitofp i32 %162 to float
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sitofp i32 %165 to float
  %167 = load float, float* %16, align 4
  %168 = fneg float %167
  %169 = load float, float* %18, align 4
  %170 = fdiv float %168, %169
  %171 = load float, float* %17, align 4
  %172 = fneg float %171
  %173 = load float, float* %18, align 4
  %174 = fdiv float %172, %173
  %175 = load float, float* %13, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32*, i32** %5, align 8
  %179 = load i32*, i32** %10, align 8
  %180 = call i32 @pdf_array_get(i32* %178, i32* %179, i32 1)
  %181 = call i32 @pdf_write_line_cap_appearance(i32* %158, i32* %159, %struct.TYPE_13__* %160, float %163, float %166, float %170, float %174, float %175, i32 %176, i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %115, %4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %185 = load float, float* %13, align 4
  %186 = call i8* @fz_max(i32 1, float %185)
  call void @fz_expand_rect(%struct.TYPE_13__* sret %19, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %184, i8* %186)
  %187 = bitcast %struct.TYPE_13__* %183 to i8*
  %188 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 32, i1 false)
  ret void
}

declare dso_local float @pdf_write_border_appearance(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @pdf_write_stroke_color_appearance(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @pdf_write_interior_fill_color_appearance(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i8* @pdf_array_get_real(i32*, i32*, i32) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @maybe_stroke(i32*, i32*, i32) #1

declare dso_local i8* @fz_min(i32, i32) #1

declare dso_local i8* @fz_max(i32, float) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local i32 @pdf_write_line_cap_appearance(i32*, i32*, %struct.TYPE_13__*, float, float, float, float, float, i32, i32, i32) #1

declare dso_local i32 @pdf_array_get(i32*, i32*, i32) #1

declare dso_local void @fz_expand_rect(%struct.TYPE_13__* sret, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
