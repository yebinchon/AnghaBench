; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_squiggly_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_squiggly_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@fz_empty_rect = common dso_local global i32 0, align 4
@QuadPoints = common dso_local global i32 0, align 4
@LR = common dso_local global i64 0, align 8
@LL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%g w\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@UL = common dso_local global i64 0, align 8
@UR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"S\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32*, i32*)* @pdf_write_squiggly_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_squiggly_appearance(i32* %0, %struct.TYPE_11__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x %struct.TYPE_12__], align 16
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__, align 4
  %22 = alloca %struct.TYPE_12__, align 4
  %23 = alloca %struct.TYPE_12__, align 4
  %24 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %25 = load i32, i32* @fz_empty_rect, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @pdf_write_stroke_color_appearance(i32* %27, %struct.TYPE_11__* %28, i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @QuadPoints, align 4
  %36 = call i32 @PDF_NAME(i32 %35)
  %37 = call i32* @pdf_dict_get(i32* %31, i32 %34, i32 %36)
  store i32* %37, i32** %17, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i32 @pdf_array_len(i32* %38, i32* %39)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %190

43:                                               ; preds = %4
  store i32 0, i32* %18, align 4
  br label %44

44:                                               ; preds = %186, %43
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %189

48:                                               ; preds = %44
  store i32 1, i32* %20, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 0
  %51 = load i32*, i32** %17, align 8
  %52 = load i32, i32* %18, align 4
  %53 = call float @extract_quad(i32* %49, %struct.TYPE_12__* %50, i32* %51, i32 %52)
  store float %53, float* %14, align 4
  %54 = load i64, i64* @LR, align 8
  %55 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* @LL, align 8
  %59 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %57, %61
  %63 = load i64, i64* @LR, align 8
  %64 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @LL, align 8
  %68 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %66, %70
  %72 = call i64 @fz_make_point(i32 %62, i32 %71)
  %73 = bitcast %struct.TYPE_12__* %21 to i64*
  store i64 %72, i64* %73, align 4
  %74 = bitcast %struct.TYPE_12__* %13 to i8*
  %75 = bitcast %struct.TYPE_12__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 8, i1 false)
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %77, %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %82, %84
  %86 = add nsw i32 %80, %85
  %87 = call float @sqrtf(i32 %86)
  store float %87, float* %16, align 4
  store float 0.000000e+00, float* %15, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load float, float* %14, align 4
  %91 = fdiv float %90, 1.600000e+01
  %92 = fpext float %91 to double
  %93 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %88, i32* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %92)
  %94 = load i32*, i32** %5, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i64, i64* @LL, align 8
  %97 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* @LL, align 8
  %101 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %94, i32* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %172, %48
  %106 = load float, float* %15, align 4
  %107 = load float, float* %16, align 4
  %108 = fcmp olt float %106, %107
  br i1 %108, label %109, label %177

109:                                              ; preds = %105
  %110 = load float, float* %14, align 4
  %111 = fdiv float %110, 7.000000e+00
  %112 = load float, float* %15, align 4
  %113 = fadd float %112, %111
  store float %113, float* %15, align 4
  %114 = load i64, i64* @LL, align 8
  %115 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %114
  %116 = load i64, i64* @LR, align 8
  %117 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %116
  %118 = load float, float* %15, align 4
  %119 = load float, float* %16, align 4
  %120 = fdiv float %118, %119
  %121 = fptosi float %120 to i32
  %122 = bitcast %struct.TYPE_12__* %115 to i64*
  %123 = load i64, i64* %122, align 8
  %124 = bitcast %struct.TYPE_12__* %117 to i64*
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @lerp_point(i64 %123, i64 %125, i32 %121)
  %127 = bitcast %struct.TYPE_12__* %22 to i64*
  store i64 %126, i64* %127, align 4
  %128 = bitcast %struct.TYPE_12__* %10 to i8*
  %129 = bitcast %struct.TYPE_12__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 8, i1 false)
  %130 = load i32, i32* %20, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %164

132:                                              ; preds = %109
  %133 = load i64, i64* @UL, align 8
  %134 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %133
  %135 = load i64, i64* @UR, align 8
  %136 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 %135
  %137 = load float, float* %15, align 4
  %138 = load float, float* %16, align 4
  %139 = fdiv float %137, %138
  %140 = fptosi float %139 to i32
  %141 = bitcast %struct.TYPE_12__* %134 to i64*
  %142 = load i64, i64* %141, align 8
  %143 = bitcast %struct.TYPE_12__* %136 to i64*
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @lerp_point(i64 %142, i64 %144, i32 %140)
  %146 = bitcast %struct.TYPE_12__* %23 to i64*
  store i64 %145, i64* %146, align 4
  %147 = bitcast %struct.TYPE_12__* %11 to i8*
  %148 = bitcast %struct.TYPE_12__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 %148, i64 8, i1 false)
  %149 = bitcast %struct.TYPE_12__* %10 to i64*
  %150 = load i64, i64* %149, align 4
  %151 = bitcast %struct.TYPE_12__* %11 to i64*
  %152 = load i64, i64* %151, align 4
  %153 = call i64 @lerp_point(i64 %150, i64 %152, i32 0)
  %154 = bitcast %struct.TYPE_12__* %24 to i64*
  store i64 %153, i64* %154, align 4
  %155 = bitcast %struct.TYPE_12__* %12 to i8*
  %156 = bitcast %struct.TYPE_12__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 8, i1 false)
  %157 = load i32*, i32** %5, align 8
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %157, i32* %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %162)
  br label %172

164:                                              ; preds = %109
  %165 = load i32*, i32** %5, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %165, i32* %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %168, i32 %170)
  br label %172

172:                                              ; preds = %164, %132
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %20, align 4
  br label %105

177:                                              ; preds = %105
  %178 = load i32*, i32** %5, align 8
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %178, i32* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %181 = load i32*, i32** %8, align 8
  %182 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %9, i64 0, i64 0
  %183 = load float, float* %14, align 4
  %184 = fdiv float %183, 1.600000e+01
  %185 = call i32 @union_quad(i32* %181, %struct.TYPE_12__* %182, float %184)
  br label %186

186:                                              ; preds = %177
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 8
  store i32 %188, i32* %18, align 4
  br label %44

189:                                              ; preds = %44
  br label %190

190:                                              ; preds = %189, %4
  ret void
}

declare dso_local i32 @pdf_write_stroke_color_appearance(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local float @extract_quad(i32*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @fz_make_point(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @sqrtf(i32) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, ...) #1

declare dso_local i64 @lerp_point(i64, i64, i32) #1

declare dso_local i32 @union_quad(i32*, %struct.TYPE_12__*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
