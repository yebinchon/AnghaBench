; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_tx_widget_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_pdf_write_tx_widget_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { float, float, float, float }

@MK = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/Tx BMC\0Aq\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0 0 %g %g re\0Af\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%g %g %g %g re\0As\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%g %g %g %g re\0AW\0An\0A\00", align 1
@PDF_TX_FIELD_IS_MULTILINE = common dso_local global i32 0, align 4
@PDF_TX_FIELD_IS_COMB = common dso_local global i32 0, align 4
@MaxLen = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"%g %g m %g %g l s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Q\0AEMC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32**, i8*, i32)* @pdf_write_tx_widget_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_write_tx_widget_appearance(i32* %0, %struct.TYPE_13__* %1, i32* %2, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4, i32* %5, i32** %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca float, align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_14__, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca i32, align 4
  %33 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32** %6, i32*** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %26, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MK, align 4
  %40 = call i32 @PDF_NAME(i32 %39)
  %41 = call i32 @pdf_dict_get(i32* %35, i32 %38, i32 %40)
  %42 = load i32, i32* @R, align 4
  %43 = call i32 @PDF_NAME(i32 %42)
  %44 = call i32 @pdf_dict_get_int(i32* %34, i32 %41, i32 %43)
  store i32 %44, i32* %28, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %47 = call i32 @pdf_annot_quadding(i32* %45, %struct.TYPE_13__* %46)
  store i32 %47, i32* %27, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %51 = call i32 @pdf_annot_default_appearance(i32* %48, %struct.TYPE_13__* %49, i8** %19, float* %20, float* %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = fsub float %54, %57
  store float %58, float* %22, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load float, float* %60, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load float, float* %63, align 4
  %65 = fsub float %61, %64
  store float %65, float* %23, align 4
  %66 = load i32, i32* %28, align 4
  %67 = srem i32 %66, 360
  store i32 %67, i32* %28, align 4
  %68 = load i32, i32* %28, align 4
  %69 = icmp eq i32 %68, 90
  br i1 %69, label %73, label %70

70:                                               ; preds = %9
  %71 = load i32, i32* %28, align 4
  %72 = icmp eq i32 %71, 270
  br i1 %72, label %73, label %77

73:                                               ; preds = %70, %9
  %74 = load float, float* %23, align 4
  store float %74, float* %24, align 4
  %75 = load float, float* %22, align 4
  store float %75, float* %23, align 4
  %76 = load float, float* %24, align 4
  store float %76, float* %22, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %28, align 4
  %79 = call i32 @fz_rotate(i32 %78)
  %80 = load i32*, i32** %15, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %82 = load float, float* %22, align 4
  %83 = load float, float* %23, align 4
  %84 = call { <2 x float>, <2 x float> } @fz_make_rect(i32 0, i32 0, float %82, float %83)
  %85 = bitcast %struct.TYPE_14__* %29 to { <2 x float>, <2 x float> }*
  %86 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %85, i32 0, i32 0
  %87 = extractvalue { <2 x float>, <2 x float> } %84, 0
  store <2 x float> %87, <2 x float>* %86, align 4
  %88 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %85, i32 0, i32 1
  %89 = extractvalue { <2 x float>, <2 x float> } %84, 1
  store <2 x float> %89, <2 x float>* %88, align 4
  %90 = bitcast %struct.TYPE_14__* %81 to i8*
  %91 = bitcast %struct.TYPE_14__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 16, i1 false)
  %92 = load i32*, i32** %10, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @fz_append_string(i32* %92, i32* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = call i64 @pdf_write_MK_BG_appearance(i32* %95, %struct.TYPE_13__* %96, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %77
  %101 = load i32*, i32** %10, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load float, float* %22, align 4
  %104 = load float, float* %23, align 4
  %105 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %101, i32* %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), float %103, float %104)
  br label %106

106:                                              ; preds = %100, %77
  %107 = load i32*, i32** %10, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call float @pdf_write_border_appearance(i32* %107, %struct.TYPE_13__* %108, i32* %109)
  store float %110, float* %25, align 4
  %111 = load float, float* %25, align 4
  %112 = fcmp ogt float %111, 0.000000e+00
  br i1 %112, label %113, label %135

113:                                              ; preds = %106
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = call i64 @pdf_write_MK_BC_appearance(i32* %114, %struct.TYPE_13__* %115, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %113
  %120 = load i32*, i32** %10, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load float, float* %25, align 4
  %123 = fdiv float %122, 2.000000e+00
  %124 = load float, float* %25, align 4
  %125 = fdiv float %124, 2.000000e+00
  %126 = load float, float* %22, align 4
  %127 = load float, float* %25, align 4
  %128 = fsub float %126, %127
  %129 = fpext float %128 to double
  %130 = load float, float* %23, align 4
  %131 = load float, float* %25, align 4
  %132 = fsub float %130, %131
  %133 = fpext float %132 to double
  %134 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %120, i32* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), float %123, float %125, double %129, double %133)
  store i32 1, i32* %26, align 4
  br label %135

135:                                              ; preds = %119, %113, %106
  %136 = load i32*, i32** %10, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load float, float* %25, align 4
  %139 = load float, float* %25, align 4
  %140 = load float, float* %22, align 4
  %141 = load float, float* %25, align 4
  %142 = fmul float %141, 2.000000e+00
  %143 = fsub float %140, %142
  %144 = fpext float %143 to double
  %145 = load float, float* %23, align 4
  %146 = load float, float* %25, align 4
  %147 = fmul float %146, 2.000000e+00
  %148 = fsub float %145, %147
  %149 = fpext float %148 to double
  %150 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %136, i32* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), float %138, float %139, double %144, double %149)
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* @PDF_TX_FIELD_IS_MULTILINE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %135
  %156 = load i32*, i32** %10, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = load i32**, i32*** %16, align 8
  %160 = load i8*, i8** %17, align 8
  %161 = load i8*, i8** %19, align 8
  %162 = load float, float* %20, align 4
  %163 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %164 = load i32, i32* %27, align 4
  %165 = load float, float* %22, align 4
  %166 = load float, float* %23, align 4
  %167 = load float, float* %25, align 4
  %168 = fmul float %167, 2.000000e+00
  %169 = call i32 @write_variable_text(i32* %156, %struct.TYPE_13__* %157, i32* %158, i32** %159, i8* %160, i8* %161, float %162, float* %163, i32 %164, float %165, float %166, float %168, float 0x3FF1DB22E0000000, float 0x3FF1DB22E0000000, i32 1, i32 0, i32 1)
  br label %254

170:                                              ; preds = %135
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* @PDF_TX_FIELD_IS_COMB, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %238

175:                                              ; preds = %170
  %176 = load i32*, i32** %10, align 8
  %177 = load i32*, i32** %10, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @MaxLen, align 4
  %182 = call i32 @PDF_NAME(i32 %181)
  %183 = call i32 @pdf_dict_get_inheritable(i32* %177, i32 %180, i32 %182)
  %184 = call i32 @pdf_to_int(i32* %176, i32 %183)
  store i32 %184, i32* %30, align 4
  %185 = load i32, i32* %26, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %224

187:                                              ; preds = %175
  %188 = load i32, i32* %30, align 4
  %189 = icmp sgt i32 %188, 1
  br i1 %189, label %190, label %224

190:                                              ; preds = %187
  %191 = load float, float* %22, align 4
  %192 = load float, float* %25, align 4
  %193 = fmul float 2.000000e+00, %192
  %194 = fsub float %191, %193
  %195 = load i32, i32* %30, align 4
  %196 = sitofp i32 %195 to float
  %197 = fdiv float %194, %196
  store float %197, float* %31, align 4
  store i32 1, i32* %32, align 4
  br label %198

198:                                              ; preds = %220, %190
  %199 = load i32, i32* %32, align 4
  %200 = load i32, i32* %30, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %223

202:                                              ; preds = %198
  %203 = load float, float* %25, align 4
  %204 = load float, float* %31, align 4
  %205 = load i32, i32* %32, align 4
  %206 = sitofp i32 %205 to float
  %207 = fmul float %204, %206
  %208 = fadd float %203, %207
  store float %208, float* %33, align 4
  %209 = load i32*, i32** %10, align 8
  %210 = load i32*, i32** %12, align 8
  %211 = load float, float* %33, align 4
  %212 = load float, float* %25, align 4
  %213 = load float, float* %33, align 4
  %214 = fpext float %213 to double
  %215 = load float, float* %23, align 4
  %216 = load float, float* %25, align 4
  %217 = fsub float %215, %216
  %218 = fpext float %217 to double
  %219 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %209, i32* %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), float %211, float %212, double %214, double %218)
  br label %220

220:                                              ; preds = %202
  %221 = load i32, i32* %32, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %32, align 4
  br label %198

223:                                              ; preds = %198
  br label %224

224:                                              ; preds = %223, %187, %175
  %225 = load i32*, i32** %10, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %227 = load i32*, i32** %12, align 8
  %228 = load i32**, i32*** %16, align 8
  %229 = load i8*, i8** %17, align 8
  %230 = load i8*, i8** %19, align 8
  %231 = load float, float* %20, align 4
  %232 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %233 = load i32, i32* %27, align 4
  %234 = load float, float* %22, align 4
  %235 = load float, float* %23, align 4
  %236 = load i32, i32* %30, align 4
  %237 = call i32 @write_variable_text(i32* %225, %struct.TYPE_13__* %226, i32* %227, i32** %228, i8* %229, i8* %230, float %231, float* %232, i32 %233, float %234, float %235, float 0.000000e+00, float 0x3FE99999A0000000, float 0x3FF3333340000000, i32 0, i32 %236, i32 0)
  br label %253

238:                                              ; preds = %170
  %239 = load i32*, i32** %10, align 8
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %241 = load i32*, i32** %12, align 8
  %242 = load i32**, i32*** %16, align 8
  %243 = load i8*, i8** %17, align 8
  %244 = load i8*, i8** %19, align 8
  %245 = load float, float* %20, align 4
  %246 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %247 = load i32, i32* %27, align 4
  %248 = load float, float* %22, align 4
  %249 = load float, float* %23, align 4
  %250 = load float, float* %25, align 4
  %251 = fmul float %250, 2.000000e+00
  %252 = call i32 @write_variable_text(i32* %239, %struct.TYPE_13__* %240, i32* %241, i32** %242, i8* %243, i8* %244, float %245, float* %246, i32 %247, float %248, float %249, float %251, float 0x3FE99999A0000000, float 0x3FF3333340000000, i32 0, i32 0, i32 0)
  br label %253

253:                                              ; preds = %238, %224
  br label %254

254:                                              ; preds = %253, %155
  %255 = load i32*, i32** %10, align 8
  %256 = load i32*, i32** %12, align 8
  %257 = call i32 @fz_append_string(i32* %255, i32* %256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pdf_dict_get_int(i32*, i32, i32) #1

declare dso_local i32 @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_annot_quadding(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @pdf_annot_default_appearance(i32*, %struct.TYPE_13__*, i8**, float*, float*) #1

declare dso_local i32 @fz_rotate(i32) #1

declare dso_local { <2 x float>, <2 x float> } @fz_make_rect(i32, i32, float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_append_string(i32*, i32*, i8*) #1

declare dso_local i64 @pdf_write_MK_BG_appearance(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, float, float, ...) #1

declare dso_local float @pdf_write_border_appearance(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @pdf_write_MK_BC_appearance(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @write_variable_text(i32*, %struct.TYPE_13__*, i32*, i32**, i8*, i8*, float, float*, i32, float, float, float, float, float, i32, i32, i32) #1

declare dso_local i32 @pdf_to_int(i32*, i32) #1

declare dso_local i32 @pdf_dict_get_inheritable(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
