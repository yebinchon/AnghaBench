; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_do_ft_render_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_do_ft_render_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__, %struct.TYPE_28__* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }

@SHEAR = common dso_local global i32 0, align 4
@FZ_LOCK_FREETYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"FT_Set_Char_Size(%s,%d,72): %s\00", align 1
@FT_LOAD_NO_BITMAP = common dso_local global i32 0, align 4
@FT_LOAD_TARGET_MONO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"FT_Load_Glyph(%s,%d,FT_LOAD_TARGET_MONO): %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"FT_Set_Char_Size(%s,65536,72): %s\00", align 1
@FT_LOAD_NO_HINTING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"FT_Load_Glyph(%s,%d,FT_LOAD_NO_HINTING): %s\00", align 1
@FT_RENDER_MODE_NORMAL = common dso_local global i32 0, align 4
@FT_RENDER_MODE_MONO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"FT_Render_Glyph(%s,%d,FT_RENDER_MODE_NORMAL): %s\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"FT_Render_Glyph(%s,%d,FT_RENDER_MODE_MONO): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_27__* (i32*, %struct.TYPE_24__*, i32, %struct.TYPE_23__*, i32)* @do_ft_render_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_27__* @do_ft_render_glyph(i32* %0, %struct.TYPE_24__* %1, i32 %2, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_26__, align 4
  %13 = alloca %struct.TYPE_25__, align 4
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_23__, align 4
  %17 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %11, align 8
  %21 = call float @fz_matrix_expansion(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %3)
  %22 = fmul float %21, 0x3F947AE140000000
  store float %22, float* %15, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @fz_adjust_ft_glyph_width(i32* %23, %struct.TYPE_24__* %24, i32 %25, %struct.TYPE_23__* %3)
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load i32, i32* @SHEAR, align 4
  call void @fz_pre_shear(%struct.TYPE_23__* sret %16, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %3, i32 %33, i32 0)
  %34 = bitcast %struct.TYPE_23__* %3 to i8*
  %35 = bitcast %struct.TYPE_23__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 4 %35, i64 24, i1 false)
  br label %36

36:                                               ; preds = %32, %5
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %39 = call i32 @fz_lock(i32* %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %120

42:                                               ; preds = %36
  %43 = call float @fz_matrix_expansion(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %3)
  store float %43, float* %17, align 4
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 65536
  %47 = sitofp i32 %46 to float
  %48 = load float, float* %17, align 4
  %49 = fdiv float %47, %48
  %50 = fptosi float %49 to i32
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 65536
  %55 = sitofp i32 %54 to float
  %56 = load float, float* %17, align 4
  %57 = fdiv float %55, %56
  %58 = fptosi float %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 65536
  %63 = sitofp i32 %62 to float
  %64 = load float, float* %17, align 4
  %65 = fdiv float %63, %64
  %66 = fptosi float %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 65536
  %71 = sitofp i32 %70 to float
  %72 = load float, float* %17, align 4
  %73 = fdiv float %71, %72
  %74 = fptosi float %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %79 = load float, float* %17, align 4
  %80 = fmul float 6.400000e+01, %79
  %81 = fptosi float %80 to i32
  %82 = load float, float* %17, align 4
  %83 = fmul float 6.400000e+01, %82
  %84 = fptosi float %83 to i32
  %85 = call i64 @FT_Set_Char_Size(%struct.TYPE_28__* %78, i32 %81, i32 %84, i32 72, i32 72)
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %14, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %42
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load float, float* %17, align 4
  %94 = fmul float 6.400000e+01, %93
  %95 = fptosi float %94 to i32
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @ft_error_string(i64 %96)
  %98 = call i32 (i32*, i8*, i32, i32, ...) @fz_warn(i32* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %88, %42
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %101 = call i32 @FT_Set_Transform(%struct.TYPE_28__* %100, %struct.TYPE_26__* %12, %struct.TYPE_25__* %13)
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @FT_LOAD_NO_BITMAP, align 4
  %105 = load i32, i32* @FT_LOAD_TARGET_MONO, align 4
  %106 = or i32 %104, %105
  %107 = call i64 @FT_Load_Glyph(%struct.TYPE_28__* %102, i32 %103, i32 %106)
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %99
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i64, i64* %14, align 8
  %117 = call i32 @ft_error_string(i64 %116)
  %118 = call i32 (i32*, i8*, i32, i32, ...) @fz_warn(i32* %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %115, i32 %117)
  br label %121

119:                                              ; preds = %99
  br label %215

120:                                              ; preds = %36
  br label %121

121:                                              ; preds = %120, %110
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %123, -512
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 512
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %121
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  br label %281

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, -512
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 512
  br i1 %137, label %138, label %139

138:                                              ; preds = %134, %130
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  br label %281

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %141, -512
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp sgt i32 %145, 512
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %139
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  br label %281

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %150, -512
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 512
  br i1 %155, label %156, label %157

156:                                              ; preds = %152, %148
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  br label %281

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 %159, 64
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 %163, 64
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  store i32 %164, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %167, 64
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  store i32 %168, i32* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %171, 64
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 3
  store i32 %172, i32* %173, align 4
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %175, 64
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %3, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %179, 64
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  store i32 %180, i32* %181, align 4
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %183 = call i64 @FT_Set_Char_Size(%struct.TYPE_28__* %182, i32 65536, i32 65536, i32 72, i32 72)
  store i64 %183, i64* %14, align 8
  %184 = load i64, i64* %14, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %157
  %187 = load i32*, i32** %7, align 8
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* %14, align 8
  %192 = call i32 @ft_error_string(i64 %191)
  %193 = call i32 (i32*, i8*, i32, i32, ...) @fz_warn(i32* %187, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %190, i32 %192)
  br label %194

194:                                              ; preds = %186, %157
  %195 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %196 = call i32 @FT_Set_Transform(%struct.TYPE_28__* %195, %struct.TYPE_26__* %12, %struct.TYPE_25__* %13)
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @FT_LOAD_NO_BITMAP, align 4
  %200 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %201 = or i32 %199, %200
  %202 = call i64 @FT_Load_Glyph(%struct.TYPE_28__* %197, i32 %198, i32 %201)
  store i64 %202, i64* %14, align 8
  %203 = load i64, i64* %14, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %194
  %206 = load i32*, i32** %7, align 8
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load i64, i64* %14, align 8
  %212 = call i32 @ft_error_string(i64 %211)
  %213 = call i32 (i32*, i8*, i32, i32, ...) @fz_warn(i32* %206, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %209, i32 %210, i32 %212)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  br label %281

214:                                              ; preds = %194
  br label %215

215:                                              ; preds = %214, %119
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %240

221:                                              ; preds = %215
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 0
  %226 = load float, float* %15, align 4
  %227 = fmul float %226, 6.400000e+01
  %228 = call i32 @FT_Outline_Embolden(i32* %225, float %227)
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 0
  %233 = load float, float* %15, align 4
  %234 = fneg float %233
  %235 = fmul float %234, 3.200000e+01
  %236 = load float, float* %15, align 4
  %237 = fneg float %236
  %238 = fmul float %237, 3.200000e+01
  %239 = call i32 @FT_Outline_Translate(i32* %232, float %235, float %238)
  br label %240

240:                                              ; preds = %221, %215
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32, i32* @FT_RENDER_MODE_NORMAL, align 4
  br label %250

248:                                              ; preds = %240
  %249 = load i32, i32* @FT_RENDER_MODE_MONO, align 4
  br label %250

250:                                              ; preds = %248, %246
  %251 = phi i32 [ %247, %246 ], [ %249, %248 ]
  %252 = call i64 @FT_Render_Glyph(%struct.TYPE_27__* %243, i32 %251)
  store i64 %252, i64* %14, align 8
  %253 = load i64, i64* %14, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %277

255:                                              ; preds = %250
  %256 = load i32, i32* %10, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = load i32*, i32** %7, align 8
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = load i64, i64* %14, align 8
  %265 = call i32 @ft_error_string(i64 %264)
  %266 = call i32 (i32*, i8*, i32, i32, ...) @fz_warn(i32* %259, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %262, i32 %263, i32 %265)
  br label %276

267:                                              ; preds = %255
  %268 = load i32*, i32** %7, align 8
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load i64, i64* %14, align 8
  %274 = call i32 @ft_error_string(i64 %273)
  %275 = call i32 (i32*, i8*, i32, i32, ...) @fz_warn(i32* %268, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %271, i32 %272, i32 %274)
  br label %276

276:                                              ; preds = %267, %258
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  br label %281

277:                                              ; preds = %250
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %279, align 8
  store %struct.TYPE_27__* %280, %struct.TYPE_27__** %6, align 8
  br label %281

281:                                              ; preds = %277, %276, %205, %156, %147, %138, %129
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  ret %struct.TYPE_27__* %282
}

declare dso_local float @fz_matrix_expansion(%struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #1

declare dso_local i32 @fz_adjust_ft_glyph_width(i32*, %struct.TYPE_24__*, i32, %struct.TYPE_23__*) #1

declare dso_local void @fz_pre_shear(%struct.TYPE_23__* sret, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_lock(i32*, i32) #1

declare dso_local i64 @FT_Set_Char_Size(%struct.TYPE_28__*, i32, i32, i32, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @ft_error_string(i64) #1

declare dso_local i32 @FT_Set_Transform(%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i64 @FT_Load_Glyph(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @FT_Outline_Embolden(i32*, float) #1

declare dso_local i32 @FT_Outline_Translate(i32*, float, float) #1

declare dso_local i64 @FT_Render_Glyph(%struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
