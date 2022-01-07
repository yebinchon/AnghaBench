; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_highlight_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_highlight_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { float, float }

@fz_empty_rect = common dso_local global i32 0, align 4
@ExtGState = common dso_local global i32 0, align 4
@H = common dso_local global i32 0, align 4
@Type = common dso_local global i32 0, align 4
@BM = common dso_local global i32 0, align 4
@Multiply = common dso_local global i32 0, align 4
@ca = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"/H gs\0A\00", align 1
@QuadPoints = common dso_local global i32 0, align 4
@LR = common dso_local global i64 0, align 8
@LL = common dso_local global i64 0, align 8
@UL = common dso_local global i64 0, align 8
@UR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%g %g %g %g %g %g c\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%g %g l\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32*, i32*, i32**)* @pdf_write_highlight_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_highlight_appearance(i32* %0, %struct.TYPE_11__* %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [4 x %struct.TYPE_12__], align 16
  %15 = alloca [4 x %struct.TYPE_12__], align 16
  %16 = alloca %struct.TYPE_12__, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32** %4, i32*** %10, align 8
  %26 = load i32, i32* @fz_empty_rect, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @pdf_new_dict(i32* %28, i32 %33, i32 1)
  %35 = load i32**, i32*** %10, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32**, i32*** %10, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @ExtGState, align 4
  %40 = call i32 @PDF_NAME(i32 %39)
  %41 = call i32* @pdf_dict_put_dict(i32* %36, i32* %38, i32 %40, i32 1)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @H, align 4
  %45 = call i32 @PDF_NAME(i32 %44)
  %46 = call i32* @pdf_dict_put_dict(i32* %42, i32* %43, i32 %45, i32 2)
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* @Type, align 4
  %50 = call i32 @PDF_NAME(i32 %49)
  %51 = load i32, i32* @ExtGState, align 4
  %52 = call i32 @PDF_NAME(i32 %51)
  %53 = call i32 @pdf_dict_put(i32* %47, i32* %48, i32 %50, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* @BM, align 4
  %57 = call i32 @PDF_NAME(i32 %56)
  %58 = load i32, i32* @Multiply, align 4
  %59 = call i32 @PDF_NAME(i32 %58)
  %60 = call i32 @pdf_dict_put(i32* %54, i32* %55, i32 %57, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %63 = call float @pdf_annot_opacity(i32* %61, %struct.TYPE_11__* %62)
  store float %63, float* %17, align 4
  %64 = load float, float* %17, align 4
  %65 = fcmp olt float %64, 1.000000e+00
  br i1 %65, label %66, label %73

66:                                               ; preds = %5
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* @ca, align 4
  %70 = call i32 @PDF_NAME(i32 %69)
  %71 = load float, float* %17, align 4
  %72 = call i32 @pdf_dict_put_real(i32* %67, i32* %68, i32 %70, float %71)
  br label %73

73:                                               ; preds = %66, %5
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @pdf_write_fill_color_appearance(i32* %74, %struct.TYPE_11__* %75, i32* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %78, i32* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @QuadPoints, align 4
  %86 = call i32 @PDF_NAME(i32 %85)
  %87 = call i32* @pdf_dict_get(i32* %81, i32 %84, i32 %86)
  store i32* %87, i32** %13, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @pdf_array_len(i32* %88, i32* %89)
  store i32 %90, i32* %24, align 4
  %91 = load i32, i32* %24, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %357

93:                                               ; preds = %73
  store i32 0, i32* %23, align 4
  br label %94

94:                                               ; preds = %353, %93
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %24, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %356

98:                                               ; preds = %94
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 0
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %23, align 4
  %103 = call float @extract_quad(i32* %99, %struct.TYPE_12__* %100, i32* %101, i32 %102)
  store float %103, float* %18, align 4
  %104 = load float, float* %18, align 4
  %105 = fdiv float %104, 0x4010F851E0000000
  store float %105, float* %19, align 4
  %106 = load i64, i64* @LR, align 8
  %107 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load float, float* %108, align 8
  %110 = load i64, i64* @LL, align 8
  %111 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load float, float* %112, align 8
  %114 = fsub float %109, %113
  store float %114, float* %20, align 4
  %115 = load i64, i64* @LR, align 8
  %116 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load float, float* %117, align 4
  %119 = load i64, i64* @LL, align 8
  %120 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load float, float* %121, align 4
  %123 = fsub float %118, %122
  store float %123, float* %21, align 4
  %124 = load float, float* %20, align 4
  %125 = load float, float* %20, align 4
  %126 = fmul float %124, %125
  %127 = load float, float* %21, align 4
  %128 = load float, float* %21, align 4
  %129 = fmul float %127, %128
  %130 = fadd float %126, %129
  %131 = call float @sqrtf(float %130) #4
  store float %131, float* %22, align 4
  %132 = load float, float* %20, align 4
  %133 = load float, float* %19, align 4
  %134 = fmul float %132, %133
  %135 = load float, float* %22, align 4
  %136 = fdiv float %134, %135
  %137 = load float, float* %21, align 4
  %138 = load float, float* %19, align 4
  %139 = fmul float %137, %138
  %140 = load float, float* %22, align 4
  %141 = fdiv float %139, %140
  %142 = call <2 x float> @fz_make_point(float %136, float %141)
  %143 = bitcast %struct.TYPE_12__* %25 to <2 x float>*
  store <2 x float> %142, <2 x float>* %143, align 4
  %144 = bitcast %struct.TYPE_12__* %16 to i8*
  %145 = bitcast %struct.TYPE_12__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 4 %145, i64 8, i1 false)
  %146 = load i64, i64* @LL, align 8
  %147 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load float, float* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %151 = load float, float* %150, align 4
  %152 = fsub float %149, %151
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %154 = load float, float* %153, align 4
  %155 = fsub float %152, %154
  %156 = load i64, i64* @LL, align 8
  %157 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store float %155, float* %158, align 8
  %159 = load i64, i64* @LL, align 8
  %160 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load float, float* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %164 = load float, float* %163, align 4
  %165 = fsub float %162, %164
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %167 = load float, float* %166, align 4
  %168 = fadd float %165, %167
  %169 = load i64, i64* @LL, align 8
  %170 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  store float %168, float* %171, align 4
  %172 = load i64, i64* @UL, align 8
  %173 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load float, float* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %177 = load float, float* %176, align 4
  %178 = fsub float %175, %177
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %180 = load float, float* %179, align 4
  %181 = fadd float %178, %180
  %182 = load i64, i64* @UL, align 8
  %183 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  store float %181, float* %184, align 8
  %185 = load i64, i64* @UL, align 8
  %186 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load float, float* %187, align 4
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %190 = load float, float* %189, align 4
  %191 = fsub float %188, %190
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %193 = load float, float* %192, align 4
  %194 = fsub float %191, %193
  %195 = load i64, i64* @UL, align 8
  %196 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store float %194, float* %197, align 4
  %198 = load i64, i64* @LR, align 8
  %199 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load float, float* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %203 = load float, float* %202, align 4
  %204 = fadd float %201, %203
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %206 = load float, float* %205, align 4
  %207 = fsub float %204, %206
  %208 = load i64, i64* @LR, align 8
  %209 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store float %207, float* %210, align 8
  %211 = load i64, i64* @LR, align 8
  %212 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = load float, float* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %216 = load float, float* %215, align 4
  %217 = fadd float %214, %216
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %219 = load float, float* %218, align 4
  %220 = fadd float %217, %219
  %221 = load i64, i64* @LR, align 8
  %222 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  store float %220, float* %223, align 4
  %224 = load i64, i64* @UR, align 8
  %225 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load float, float* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %229 = load float, float* %228, align 4
  %230 = fadd float %227, %229
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %232 = load float, float* %231, align 4
  %233 = fadd float %230, %232
  %234 = load i64, i64* @UR, align 8
  %235 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  store float %233, float* %236, align 8
  %237 = load i64, i64* @UR, align 8
  %238 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = load float, float* %239, align 4
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %242 = load float, float* %241, align 4
  %243 = fadd float %240, %242
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %245 = load float, float* %244, align 4
  %246 = fsub float %243, %245
  %247 = load i64, i64* @UR, align 8
  %248 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  store float %246, float* %249, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = load i32*, i32** %8, align 8
  %252 = load i64, i64* @LL, align 8
  %253 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load float, float* %254, align 8
  %256 = fpext float %255 to double
  %257 = load i64, i64* @LL, align 8
  %258 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 1
  %260 = load float, float* %259, align 4
  %261 = fpext float %260 to double
  %262 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %250, i32* %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %256, double %261)
  %263 = load i32*, i32** %6, align 8
  %264 = load i32*, i32** %8, align 8
  %265 = load i64, i64* @LL, align 8
  %266 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = load float, float* %267, align 8
  %269 = fpext float %268 to double
  %270 = load i64, i64* @LL, align 8
  %271 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  %273 = load float, float* %272, align 4
  %274 = fpext float %273 to double
  %275 = load i64, i64* @UL, align 8
  %276 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load float, float* %277, align 8
  %279 = fpext float %278 to double
  %280 = load i64, i64* @UL, align 8
  %281 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %283 = load float, float* %282, align 4
  %284 = fpext float %283 to double
  %285 = load i64, i64* @UL, align 8
  %286 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load float, float* %287, align 8
  %289 = fpext float %288 to double
  %290 = load i64, i64* @UL, align 8
  %291 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 1
  %293 = load float, float* %292, align 4
  %294 = fpext float %293 to double
  %295 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %263, i32* %264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), double %269, double %274, double %279, double %284, double %289, double %294)
  %296 = load i32*, i32** %6, align 8
  %297 = load i32*, i32** %8, align 8
  %298 = load i64, i64* @UR, align 8
  %299 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load float, float* %300, align 8
  %302 = fpext float %301 to double
  %303 = load i64, i64* @UR, align 8
  %304 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 1
  %306 = load float, float* %305, align 4
  %307 = fpext float %306 to double
  %308 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %296, i32* %297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), double %302, double %307)
  %309 = load i32*, i32** %6, align 8
  %310 = load i32*, i32** %8, align 8
  %311 = load i64, i64* @UR, align 8
  %312 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  %314 = load float, float* %313, align 8
  %315 = fpext float %314 to double
  %316 = load i64, i64* @UR, align 8
  %317 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 1
  %319 = load float, float* %318, align 4
  %320 = fpext float %319 to double
  %321 = load i64, i64* @LR, align 8
  %322 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  %324 = load float, float* %323, align 8
  %325 = fpext float %324 to double
  %326 = load i64, i64* @LR, align 8
  %327 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 1
  %329 = load float, float* %328, align 4
  %330 = fpext float %329 to double
  %331 = load i64, i64* @LR, align 8
  %332 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  %334 = load float, float* %333, align 8
  %335 = fpext float %334 to double
  %336 = load i64, i64* @LR, align 8
  %337 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load float, float* %338, align 4
  %340 = fpext float %339 to double
  %341 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %309, i32* %310, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), double %315, double %320, double %325, double %330, double %335, double %340)
  %342 = load i32*, i32** %6, align 8
  %343 = load i32*, i32** %8, align 8
  %344 = call i32 (i32*, i32*, i8*, ...) @fz_append_printf(i32* %342, i32* %343, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %345 = load i32*, i32** %9, align 8
  %346 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %14, i64 0, i64 0
  %347 = load float, float* %18, align 4
  %348 = fdiv float %347, 1.600000e+01
  %349 = call i32 @union_quad(i32* %345, %struct.TYPE_12__* %346, float %348)
  %350 = load i32*, i32** %9, align 8
  %351 = getelementptr inbounds [4 x %struct.TYPE_12__], [4 x %struct.TYPE_12__]* %15, i64 0, i64 0
  %352 = call i32 @union_quad(i32* %350, %struct.TYPE_12__* %351, float 0.000000e+00)
  br label %353

353:                                              ; preds = %98
  %354 = load i32, i32* %23, align 4
  %355 = add nsw i32 %354, 8
  store i32 %355, i32* %23, align 4
  br label %94

356:                                              ; preds = %94
  br label %357

357:                                              ; preds = %356, %73
  ret void
}

declare dso_local i32* @pdf_new_dict(i32*, i32, i32) #1

declare dso_local i32* @pdf_dict_put_dict(i32*, i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32, i32) #1

declare dso_local float @pdf_annot_opacity(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @pdf_dict_put_real(i32*, i32*, i32, float) #1

declare dso_local i32 @pdf_write_fill_color_appearance(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local float @extract_quad(i32*, %struct.TYPE_12__*, i32*, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local <2 x float> @fz_make_point(float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @union_quad(i32*, %struct.TYPE_12__*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
