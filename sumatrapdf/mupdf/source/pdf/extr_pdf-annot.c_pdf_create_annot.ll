; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_create_annot.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_create_annot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@pdf_create_annot.black = internal constant [3 x float] zeroinitializer, align 4
@pdf_create_annot.red = internal constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@pdf_create_annot.green = internal constant [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], align 4
@pdf_create_annot.blue = internal constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@pdf_create_annot.yellow = internal constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], align 4
@pdf_create_annot.magenta = internal constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@PDF_ANNOT_IS_PRINT = common dso_local global i32 0, align 4
@__const.pdf_create_annot.icon_rect = private unnamed_addr constant %struct.TYPE_21__ { i32 12, i32 12, i32 32, i32 32 }, align 4
@PDF_ANNOT_IS_NO_ZOOM = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_NO_ROTATE = common dso_local global i32 0, align 4
@__const.pdf_create_annot.text_rect = private unnamed_addr constant %struct.TYPE_21__ { i32 12, i32 12, i32 212, i32 112 }, align 4
@Rotate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Helv\00", align 1
@__const.pdf_create_annot.stamp_rect = private unnamed_addr constant %struct.TYPE_21__ { i32 12, i32 12, i32 202, i32 62 }, align 4
@__const.pdf_create_annot.caret_rect = private unnamed_addr constant %struct.TYPE_21__ { i32 12, i32 12, i32 30, i32 27 }, align 4
@__const.pdf_create_annot.a = private unnamed_addr constant %struct.TYPE_22__ { i32 12, i32 12 }, align 4
@__const.pdf_create_annot.b = private unnamed_addr constant %struct.TYPE_22__ { i32 112, i32 62 }, align 4
@__const.pdf_create_annot.shape_rect = private unnamed_addr constant %struct.TYPE_21__ { i32 12, i32 12, i32 112, i32 62 }, align 4
@P = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @pdf_create_annot(i32* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_21__, align 4
  %10 = alloca %struct.TYPE_21__, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__, align 4
  %13 = alloca %struct.TYPE_21__, align 4
  %14 = alloca %struct.TYPE_22__, align 4
  %15 = alloca %struct.TYPE_22__, align 4
  %16 = alloca %struct.TYPE_21__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @PDF_ANNOT_IS_PRINT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_20__* @pdf_create_annot_raw(i32* %18, %struct.TYPE_19__* %19, i32 %20)
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %8, align 8
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %23 [
    i32 129, label %24
    i32 141, label %24
    i32 134, label %24
    i32 140, label %42
    i32 131, label %79
    i32 143, label %92
    i32 137, label %105
    i32 133, label %121
    i32 142, label %121
    i32 136, label %137
    i32 135, label %137
    i32 138, label %137
    i32 139, label %144
    i32 128, label %148
    i32 130, label %152
    i32 132, label %156
  ]

23:                                               ; preds = %3
  br label %160

24:                                               ; preds = %3, %3, %3
  %25 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.TYPE_21__* @__const.pdf_create_annot.icon_rect to i8*), i64 16, i1 false)
  %26 = load i32, i32* @PDF_ANNOT_IS_PRINT, align 4
  %27 = load i32, i32* @PDF_ANNOT_IS_NO_ZOOM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PDF_ANNOT_IS_NO_ROTATE, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = bitcast %struct.TYPE_21__* %9 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 4
  %38 = call i32 @pdf_set_annot_rect(i32* %31, %struct.TYPE_20__* %32, i64 %35, i64 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = call i32 @pdf_set_annot_color(i32* %39, %struct.TYPE_20__* %40, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.yellow, i64 0, i64 0))
  br label %160

42:                                               ; preds = %3
  %43 = bitcast %struct.TYPE_21__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 bitcast (%struct.TYPE_21__* @__const.pdf_create_annot.text_rect to i8*), i64 16, i1 false)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @Rotate, align 4
  %50 = call i32 @PDF_NAME(i32 %49)
  %51 = call i32 @pdf_dict_get_inheritable(i32* %45, i32 %48, i32 %50)
  %52 = call i32 @pdf_to_int(i32* %44, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @Rotate, align 4
  %61 = call i32 @PDF_NAME(i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @pdf_dict_put_int(i32* %56, i32 %59, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %42
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %67 = bitcast %struct.TYPE_21__* %10 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 4
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 4
  %72 = call i32 @pdf_set_annot_rect(i32* %65, %struct.TYPE_20__* %66, i64 %69, i64 %71)
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %75 = call i32 @pdf_set_annot_border(i32* %73, %struct.TYPE_20__* %74, i32 0)
  %76 = load i32*, i32** %4, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %78 = call i32 @pdf_set_annot_default_appearance(i32* %76, %struct.TYPE_20__* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 12, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.black, i64 0, i64 0))
  br label %160

79:                                               ; preds = %3
  %80 = bitcast %struct.TYPE_21__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 bitcast (%struct.TYPE_21__* @__const.pdf_create_annot.stamp_rect to i8*), i64 16, i1 false)
  %81 = load i32*, i32** %4, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %83 = bitcast %struct.TYPE_21__* %12 to { i64, i64 }*
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 4
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 4
  %88 = call i32 @pdf_set_annot_rect(i32* %81, %struct.TYPE_20__* %82, i64 %85, i64 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %91 = call i32 @pdf_set_annot_color(i32* %89, %struct.TYPE_20__* %90, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.red, i64 0, i64 0))
  br label %160

92:                                               ; preds = %3
  %93 = bitcast %struct.TYPE_21__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 bitcast (%struct.TYPE_21__* @__const.pdf_create_annot.caret_rect to i8*), i64 16, i1 false)
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %96 = bitcast %struct.TYPE_21__* %13 to { i64, i64 }*
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 4
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 1
  %100 = load i64, i64* %99, align 4
  %101 = call i32 @pdf_set_annot_rect(i32* %94, %struct.TYPE_20__* %95, i64 %98, i64 %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %104 = call i32 @pdf_set_annot_color(i32* %102, %struct.TYPE_20__* %103, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.blue, i64 0, i64 0))
  br label %160

105:                                              ; preds = %3
  %106 = bitcast %struct.TYPE_22__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 bitcast (%struct.TYPE_22__* @__const.pdf_create_annot.a to i8*), i64 8, i1 false)
  %107 = bitcast %struct.TYPE_22__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 bitcast (%struct.TYPE_22__* @__const.pdf_create_annot.b to i8*), i64 8, i1 false)
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %110 = bitcast %struct.TYPE_22__* %14 to i64*
  %111 = load i64, i64* %110, align 4
  %112 = bitcast %struct.TYPE_22__* %15 to i64*
  %113 = load i64, i64* %112, align 4
  %114 = call i32 @pdf_set_annot_line(i32* %108, %struct.TYPE_20__* %109, i64 %111, i64 %113)
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %117 = call i32 @pdf_set_annot_border(i32* %115, %struct.TYPE_20__* %116, i32 1)
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %120 = call i32 @pdf_set_annot_color(i32* %118, %struct.TYPE_20__* %119, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.red, i64 0, i64 0))
  br label %160

121:                                              ; preds = %3, %3
  %122 = bitcast %struct.TYPE_21__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 bitcast (%struct.TYPE_21__* @__const.pdf_create_annot.shape_rect to i8*), i64 16, i1 false)
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %125 = bitcast %struct.TYPE_21__* %16 to { i64, i64 }*
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 4
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 1
  %129 = load i64, i64* %128, align 4
  %130 = call i32 @pdf_set_annot_rect(i32* %123, %struct.TYPE_20__* %124, i64 %127, i64 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %133 = call i32 @pdf_set_annot_border(i32* %131, %struct.TYPE_20__* %132, i32 1)
  %134 = load i32*, i32** %4, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %136 = call i32 @pdf_set_annot_color(i32* %134, %struct.TYPE_20__* %135, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.red, i64 0, i64 0))
  br label %160

137:                                              ; preds = %3, %3, %3
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %140 = call i32 @pdf_set_annot_border(i32* %138, %struct.TYPE_20__* %139, i32 1)
  %141 = load i32*, i32** %4, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %143 = call i32 @pdf_set_annot_color(i32* %141, %struct.TYPE_20__* %142, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.red, i64 0, i64 0))
  br label %160

144:                                              ; preds = %3
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %147 = call i32 @pdf_set_annot_color(i32* %145, %struct.TYPE_20__* %146, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.yellow, i64 0, i64 0))
  br label %160

148:                                              ; preds = %3
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %151 = call i32 @pdf_set_annot_color(i32* %149, %struct.TYPE_20__* %150, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.green, i64 0, i64 0))
  br label %160

152:                                              ; preds = %3
  %153 = load i32*, i32** %4, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %155 = call i32 @pdf_set_annot_color(i32* %153, %struct.TYPE_20__* %154, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.red, i64 0, i64 0))
  br label %160

156:                                              ; preds = %3
  %157 = load i32*, i32** %4, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %159 = call i32 @pdf_set_annot_color(i32* %157, %struct.TYPE_20__* %158, i32 3, float* getelementptr inbounds ([3 x float], [3 x float]* @pdf_create_annot.magenta, i64 0, i64 0))
  br label %160

160:                                              ; preds = %156, %152, %148, %144, %137, %121, %105, %92, %79, %64, %24, %23
  %161 = load i32*, i32** %4, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @P, align 4
  %166 = call i32 @PDF_NAME(i32 %165)
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @pdf_dict_put(i32* %161, i32 %164, i32 %166, i32 %169)
  %171 = load i32*, i32** %4, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @F, align 4
  %176 = call i32 @PDF_NAME(i32 %175)
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @pdf_dict_put_int(i32* %171, i32 %174, i32 %176, i32 %177)
  %179 = load i32*, i32** %4, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %181 = call %struct.TYPE_20__* @pdf_keep_annot(i32* %179, %struct.TYPE_20__* %180)
  ret %struct.TYPE_20__* %181
}

declare dso_local %struct.TYPE_20__* @pdf_create_annot_raw(i32*, %struct.TYPE_19__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pdf_set_annot_rect(i32*, %struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @pdf_set_annot_color(i32*, %struct.TYPE_20__*, i32, float*) #1

declare dso_local i32 @pdf_to_int(i32*, i32) #1

declare dso_local i32 @pdf_dict_get_inheritable(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32, i32, i32) #1

declare dso_local i32 @pdf_set_annot_border(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @pdf_set_annot_default_appearance(i32*, %struct.TYPE_20__*, i8*, i32, float*) #1

declare dso_local i32 @pdf_set_annot_line(i32*, %struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @pdf_dict_put(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_20__* @pdf_keep_annot(i32*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
