; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_bound_ft_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_bound_ft_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { float, float, float, float }
%struct.TYPE_28__ = type { %struct.TYPE_24__, i32, %struct.TYPE_26__*, %struct.TYPE_31__* }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_32__ = type { float, float, float, float }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }

@fz_identity = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@SHEAR = common dso_local global i32 0, align 4
@FZ_LOCK_FREETYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"FT_Set_Char_Size(%s,%d,72): %s\00", align 1
@FT_LOAD_NO_BITMAP = common dso_local global i32 0, align 4
@FT_LOAD_NO_HINTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"FT_Load_Glyph(%s,%d,FT_LOAD_NO_HINTING): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (i32*, %struct.TYPE_28__*, i32)* @fz_bound_ft_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @fz_bound_ft_glyph(i32* %0, %struct.TYPE_28__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_32__, align 4
  %11 = alloca %struct.TYPE_30__, align 4
  %12 = alloca %struct.TYPE_29__, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_27__, align 8
  %18 = alloca %struct.TYPE_27__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  store %struct.TYPE_31__* %21, %struct.TYPE_31__** %8, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i64 %26
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %13, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float 1.000000e+00, %32
  store float %33, float* %15, align 4
  store float 0x3F947AE140000000, float* %16, align 4
  %34 = bitcast %struct.TYPE_27__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 bitcast (%struct.TYPE_27__* @fz_identity to i8*), i64 24, i1 false)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @fz_adjust_ft_glyph_width(i32* %35, %struct.TYPE_28__* %36, i32 %37, %struct.TYPE_27__* %17)
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %3
  %45 = load i32, i32* @SHEAR, align 4
  call void @fz_pre_shear(%struct.TYPE_27__* sret %18, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8 %17, i32 %45, i32 0)
  %46 = bitcast %struct.TYPE_27__* %17 to i8*
  %47 = bitcast %struct.TYPE_27__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 24, i1 false)
  br label %48

48:                                               ; preds = %44, %3
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 65536
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 65536
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 65536
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 65536
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %66, 65536
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 65536
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %75 = call i32 @fz_lock(i32* %73, i32 %74)
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i64 @FT_Set_Char_Size(%struct.TYPE_31__* %76, i32 %77, i32 %78, i32 72, i32 72)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %48
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @ft_error_string(i64 %88)
  %90 = call i32 @fz_warn(i32* %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %82, %48
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %93 = call i32 @FT_Set_Transform(%struct.TYPE_31__* %92, %struct.TYPE_30__* %11, %struct.TYPE_29__* %12)
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @FT_LOAD_NO_BITMAP, align 4
  %97 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %98 = or i32 %96, %97
  %99 = call i64 @FT_Load_Glyph(%struct.TYPE_31__* %94, i32 %95, i32 %98)
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %91
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @ft_error_string(i64 %108)
  %110 = call i32 @fz_warn(i32* %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107, i32 %109)
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %113 = call i32 @fz_unlock(i32* %111, i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = sitofp i32 %115 to float
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 1
  store float %116, float* %118, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  store float %116, float* %120, align 4
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = sitofp i32 %122 to float
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 3
  store float %123, float* %125, align 4
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 2
  store float %123, float* %127, align 4
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %128, %struct.TYPE_26__** %4, align 8
  br label %213

129:                                              ; preds = %91
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %129
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i32, i32* %14, align 4
  %141 = sitofp i32 %140 to float
  %142 = fmul float 0x3F947AE140000000, %141
  %143 = call i32 @FT_Outline_Embolden(i32* %139, float %142)
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load i32, i32* %14, align 4
  %149 = sitofp i32 %148 to float
  %150 = fmul float 0xBF847AE140000000, %149
  %151 = load i32, i32* %14, align 4
  %152 = sitofp i32 %151 to float
  %153 = fmul float 0xBF847AE140000000, %152
  %154 = call i32 @FT_Outline_Translate(i32* %147, float %150, float %153)
  br label %155

155:                                              ; preds = %135, %129
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  %160 = call i32 @FT_Outline_Get_CBox(i32* %159, %struct.TYPE_32__* %10)
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %163 = call i32 @fz_unlock(i32* %161, i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %165 = load float, float* %164, align 4
  %166 = load float, float* %15, align 4
  %167 = fmul float %165, %166
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  store float %167, float* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  %171 = load float, float* %170, align 4
  %172 = load float, float* %15, align 4
  %173 = fmul float %171, %172
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 2
  store float %173, float* %175, align 4
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 2
  %177 = load float, float* %176, align 4
  %178 = load float, float* %15, align 4
  %179 = fmul float %177, %178
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 1
  store float %179, float* %181, align 4
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 3
  %183 = load float, float* %182, align 4
  %184 = load float, float* %15, align 4
  %185 = fmul float %183, %184
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 3
  store float %185, float* %187, align 4
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %189 = bitcast %struct.TYPE_26__* %188 to { <2 x float>, <2 x float> }*
  %190 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %189, i32 0, i32 0
  %191 = load <2 x float>, <2 x float>* %190, align 4
  %192 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %189, i32 0, i32 1
  %193 = load <2 x float>, <2 x float>* %192, align 4
  %194 = call i64 @fz_is_empty_rect(<2 x float> %191, <2 x float> %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %155
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = sitofp i32 %198 to float
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 1
  store float %199, float* %201, align 4
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 0
  store float %199, float* %203, align 4
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = sitofp i32 %205 to float
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 3
  store float %206, float* %208, align 4
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 2
  store float %206, float* %210, align 4
  br label %211

211:                                              ; preds = %196, %155
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %212, %struct.TYPE_26__** %4, align 8
  br label %213

213:                                              ; preds = %211, %102
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  ret %struct.TYPE_26__* %214
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fz_adjust_ft_glyph_width(i32*, %struct.TYPE_28__*, i32, %struct.TYPE_27__*) #2

declare dso_local void @fz_pre_shear(%struct.TYPE_27__* sret, %struct.TYPE_27__* byval(%struct.TYPE_27__) align 8, i32, i32) #2

declare dso_local i32 @fz_lock(i32*, i32) #2

declare dso_local i64 @FT_Set_Char_Size(%struct.TYPE_31__*, i32, i32, i32, i32) #2

declare dso_local i32 @fz_warn(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @ft_error_string(i64) #2

declare dso_local i32 @FT_Set_Transform(%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_29__*) #2

declare dso_local i64 @FT_Load_Glyph(%struct.TYPE_31__*, i32, i32) #2

declare dso_local i32 @fz_unlock(i32*, i32) #2

declare dso_local i32 @FT_Outline_Embolden(i32*, float) #2

declare dso_local i32 @FT_Outline_Translate(i32*, float, float) #2

declare dso_local i32 @FT_Outline_Get_CBox(i32*, %struct.TYPE_32__*) #2

declare dso_local i64 @fz_is_empty_rect(<2 x float>, <2 x float>) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
