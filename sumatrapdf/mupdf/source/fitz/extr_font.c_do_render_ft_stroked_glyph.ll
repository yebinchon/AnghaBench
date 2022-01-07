; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_do_render_ft_stroked_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_do_render_ft_stroked_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_28__, %struct.TYPE_36__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { float, i64, i64, i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }

@SHEAR = common dso_local global i32 0, align 4
@FZ_LOCK_FREETYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"FT_Set_Char_Size(%s,65536,72): %s\00", align 1
@FT_LOAD_NO_BITMAP = common dso_local global i32 0, align 4
@FT_LOAD_NO_HINTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"FT_Load_Glyph(%s,%d,FT_LOAD_NO_HINTING): %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"FT_Stroker_New(): %s\00", align 1
@FZ_LINEJOIN_MITER = common dso_local global i64 0, align 8
@FT_STROKER_LINEJOIN_MITER_FIXED = common dso_local global i32 0, align 4
@FZ_LINEJOIN_ROUND = common dso_local global i64 0, align 8
@FT_STROKER_LINEJOIN_ROUND = common dso_local global i32 0, align 4
@FZ_LINEJOIN_BEVEL = common dso_local global i64 0, align 8
@FT_STROKER_LINEJOIN_BEVEL = common dso_local global i32 0, align 4
@FT_STROKER_LINEJOIN_MITER_VARIABLE = common dso_local global i32 0, align 4
@FZ_LINECAP_BUTT = common dso_local global i64 0, align 8
@FT_STROKER_LINECAP_BUTT = common dso_local global i32 0, align 4
@FZ_LINECAP_ROUND = common dso_local global i64 0, align 8
@FT_STROKER_LINECAP_ROUND = common dso_local global i32 0, align 4
@FZ_LINECAP_SQUARE = common dso_local global i64 0, align 8
@FT_STROKER_LINECAP_SQUARE = common dso_local global i32 0, align 4
@FZ_LINECAP_TRIANGLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"FT_Get_Glyph(): %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"FT_Glyph_Stroke(): %s\00", align 1
@FT_RENDER_MODE_NORMAL = common dso_local global i32 0, align 4
@FT_RENDER_MODE_MONO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"FT_Glyph_To_Bitmap(): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_33__*, %struct.TYPE_32__*, i32, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_30__*, i32)* @do_render_ft_stroked_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_render_ft_stroked_glyph(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1, i32 %2, %struct.TYPE_31__* byval(%struct.TYPE_31__) align 8 %3, %struct.TYPE_31__* byval(%struct.TYPE_31__) align 8 %4, %struct.TYPE_30__* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_35__, align 4
  %18 = alloca %struct.TYPE_34__, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_31__, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %9, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_30__* %5, %struct.TYPE_30__** %12, align 8
  store i32 %6, i32* %13, align 4
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_36__*, %struct.TYPE_36__** %26, align 8
  store %struct.TYPE_36__* %27, %struct.TYPE_36__** %14, align 8
  %28 = call float @fz_matrix_expansion(%struct.TYPE_31__* byval(%struct.TYPE_31__) align 8 %4)
  store float %28, float* %15, align 4
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = load float, float* %30, align 8
  %32 = load float, float* %15, align 4
  %33 = fmul float %31, %32
  %34 = fmul float %33, 6.400000e+01
  %35 = fdiv float %34, 2.000000e+00
  %36 = fptosi float %35 to i32
  store i32 %36, i32* %16, align 4
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @fz_adjust_ft_glyph_width(%struct.TYPE_33__* %37, %struct.TYPE_32__* %38, i32 %39, %struct.TYPE_31__* %3)
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %7
  %47 = load i32, i32* @SHEAR, align 4
  call void @fz_pre_shear(%struct.TYPE_31__* sret %24, %struct.TYPE_31__* byval(%struct.TYPE_31__) align 8 %3, i32 %47, i32 0)
  %48 = bitcast %struct.TYPE_31__* %3 to i8*
  %49 = bitcast %struct.TYPE_31__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 4 %49, i64 24, i1 false)
  br label %50

50:                                               ; preds = %46, %7
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 64
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %3, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 64
  %58 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %3, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 64
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %3, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 64
  %66 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %3, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 64
  %70 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %3, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 64
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %76 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %77 = call i32 @fz_lock(%struct.TYPE_33__* %75, i32 %76)
  %78 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %79 = call i64 @FT_Set_Char_Size(%struct.TYPE_36__* %78, i32 65536, i32 65536, i32 72, i32 72)
  store i64 %79, i64* %19, align 8
  %80 = load i64, i64* %19, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %50
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %19, align 8
  %88 = call i32 @ft_error_string(i64 %87)
  %89 = call i32 (%struct.TYPE_33__*, i8*, i32, ...) @fz_warn(%struct.TYPE_33__* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %88)
  store i32* null, i32** %8, align 8
  br label %256

90:                                               ; preds = %50
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %92 = call i32 @FT_Set_Transform(%struct.TYPE_36__* %91, %struct.TYPE_35__* %17, %struct.TYPE_34__* %18)
  %93 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @FT_LOAD_NO_BITMAP, align 4
  %96 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %97 = or i32 %95, %96
  %98 = call i64 @FT_Load_Glyph(%struct.TYPE_36__* %93, i32 %94, i32 %97)
  store i64 %98, i64* %19, align 8
  %99 = load i64, i64* %19, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %90
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i64, i64* %19, align 8
  %108 = call i32 @ft_error_string(i64 %107)
  %109 = call i32 (%struct.TYPE_33__*, i8*, i32, ...) @fz_warn(%struct.TYPE_33__* %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106, i32 %108)
  store i32* null, i32** %8, align 8
  br label %256

110:                                              ; preds = %90
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @FT_Stroker_New(i32 %115, i32* %20)
  store i64 %116, i64* %19, align 8
  %117 = load i64, i64* %19, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %121 = load i64, i64* %19, align 8
  %122 = call i32 @ft_error_string(i64 %121)
  %123 = call i32 (%struct.TYPE_33__*, i8*, i32, ...) @fz_warn(%struct.TYPE_33__* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  store i32* null, i32** %8, align 8
  br label %256

124:                                              ; preds = %110
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @FZ_LINEJOIN_MITER, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @FT_STROKER_LINEJOIN_MITER_FIXED, align 4
  br label %154

132:                                              ; preds = %124
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @FZ_LINEJOIN_ROUND, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @FT_STROKER_LINEJOIN_ROUND, align 4
  br label %152

140:                                              ; preds = %132
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @FZ_LINEJOIN_BEVEL, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @FT_STROKER_LINEJOIN_BEVEL, align 4
  br label %150

148:                                              ; preds = %140
  %149 = load i32, i32* @FT_STROKER_LINEJOIN_MITER_VARIABLE, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  br label %152

152:                                              ; preds = %150, %138
  %153 = phi i32 [ %139, %138 ], [ %151, %150 ]
  br label %154

154:                                              ; preds = %152, %130
  %155 = phi i32 [ %131, %130 ], [ %153, %152 ]
  store i32 %155, i32* %22, align 4
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @FZ_LINECAP_BUTT, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @FT_STROKER_LINECAP_BUTT, align 4
  br label %195

163:                                              ; preds = %154
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @FZ_LINECAP_ROUND, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @FT_STROKER_LINECAP_ROUND, align 4
  br label %193

171:                                              ; preds = %163
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @FZ_LINECAP_SQUARE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i32, i32* @FT_STROKER_LINECAP_SQUARE, align 4
  br label %191

179:                                              ; preds = %171
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @FZ_LINECAP_TRIANGLE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i32, i32* @FT_STROKER_LINECAP_BUTT, align 4
  br label %189

187:                                              ; preds = %179
  %188 = load i32, i32* @FT_STROKER_LINECAP_BUTT, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  br label %191

191:                                              ; preds = %189, %177
  %192 = phi i32 [ %178, %177 ], [ %190, %189 ]
  br label %193

193:                                              ; preds = %191, %169
  %194 = phi i32 [ %170, %169 ], [ %192, %191 ]
  br label %195

195:                                              ; preds = %193, %161
  %196 = phi i32 [ %162, %161 ], [ %194, %193 ]
  store i32 %196, i32* %23, align 4
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* %22, align 4
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 %203, 65536
  %205 = call i32 @FT_Stroker_Set(i32 %197, i32 %198, i32 %199, i32 %200, i32 %204)
  %206 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @FT_Get_Glyph(i32 %208, i32** %21)
  store i64 %209, i64* %19, align 8
  %210 = load i64, i64* %19, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %195
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %214 = load i64, i64* %19, align 8
  %215 = call i32 @ft_error_string(i64 %214)
  %216 = call i32 (%struct.TYPE_33__*, i8*, i32, ...) @fz_warn(%struct.TYPE_33__* %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %20, align 4
  %218 = call i32 @FT_Stroker_Done(i32 %217)
  store i32* null, i32** %8, align 8
  br label %256

219:                                              ; preds = %195
  %220 = load i32, i32* %20, align 4
  %221 = call i64 @FT_Glyph_Stroke(i32** %21, i32 %220, i32 1)
  store i64 %221, i64* %19, align 8
  %222 = load i64, i64* %19, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %219
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %226 = load i64, i64* %19, align 8
  %227 = call i32 @ft_error_string(i64 %226)
  %228 = call i32 (%struct.TYPE_33__*, i8*, i32, ...) @fz_warn(%struct.TYPE_33__* %225, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %227)
  %229 = load i32*, i32** %21, align 8
  %230 = call i32 @FT_Done_Glyph(i32* %229)
  %231 = load i32, i32* %20, align 4
  %232 = call i32 @FT_Stroker_Done(i32 %231)
  store i32* null, i32** %8, align 8
  br label %256

233:                                              ; preds = %219
  %234 = load i32, i32* %20, align 4
  %235 = call i32 @FT_Stroker_Done(i32 %234)
  %236 = load i32, i32* %13, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233
  %239 = load i32, i32* @FT_RENDER_MODE_NORMAL, align 4
  br label %242

240:                                              ; preds = %233
  %241 = load i32, i32* @FT_RENDER_MODE_MONO, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  %244 = call i64 @FT_Glyph_To_Bitmap(i32** %21, i32 %243, i32 0, i32 1)
  store i64 %244, i64* %19, align 8
  %245 = load i64, i64* %19, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %242
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %249 = load i64, i64* %19, align 8
  %250 = call i32 @ft_error_string(i64 %249)
  %251 = call i32 (%struct.TYPE_33__*, i8*, i32, ...) @fz_warn(%struct.TYPE_33__* %248, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %250)
  %252 = load i32*, i32** %21, align 8
  %253 = call i32 @FT_Done_Glyph(i32* %252)
  store i32* null, i32** %8, align 8
  br label %256

254:                                              ; preds = %242
  %255 = load i32*, i32** %21, align 8
  store i32* %255, i32** %8, align 8
  br label %256

256:                                              ; preds = %254, %247, %224, %212, %119, %101, %82
  %257 = load i32*, i32** %8, align 8
  ret i32* %257
}

declare dso_local float @fz_matrix_expansion(%struct.TYPE_31__* byval(%struct.TYPE_31__) align 8) #1

declare dso_local i32 @fz_adjust_ft_glyph_width(%struct.TYPE_33__*, %struct.TYPE_32__*, i32, %struct.TYPE_31__*) #1

declare dso_local void @fz_pre_shear(%struct.TYPE_31__* sret, %struct.TYPE_31__* byval(%struct.TYPE_31__) align 8, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_lock(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @FT_Set_Char_Size(%struct.TYPE_36__*, i32, i32, i32, i32) #1

declare dso_local i32 @fz_warn(%struct.TYPE_33__*, i8*, i32, ...) #1

declare dso_local i32 @ft_error_string(i64) #1

declare dso_local i32 @FT_Set_Transform(%struct.TYPE_36__*, %struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i64 @FT_Load_Glyph(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i64 @FT_Stroker_New(i32, i32*) #1

declare dso_local i32 @FT_Stroker_Set(i32, i32, i32, i32, i32) #1

declare dso_local i64 @FT_Get_Glyph(i32, i32**) #1

declare dso_local i32 @FT_Stroker_Done(i32) #1

declare dso_local i64 @FT_Glyph_Stroke(i32**, i32, i32) #1

declare dso_local i32 @FT_Done_Glyph(i32*) #1

declare dso_local i64 @FT_Glyph_To_Bitmap(i32**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
