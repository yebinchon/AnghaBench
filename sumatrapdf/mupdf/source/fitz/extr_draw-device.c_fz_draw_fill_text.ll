; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_fill_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_fill_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32, i32, %struct.TYPE_45__*, %struct.TYPE_50__, %struct.TYPE_46__* }
%struct.TYPE_45__ = type { i32, i64, i64 }
%struct.TYPE_50__ = type { i64, i64, i32, i64, i64, i32 }
%struct.TYPE_41__ = type { i64, i32, i64, i32*, %struct.TYPE_52__*, %struct.TYPE_50__ }
%struct.TYPE_52__ = type { i32, %struct.TYPE_43__*, %struct.TYPE_43__*, i32, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32, i32* }
%struct.TYPE_49__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_51__ = type { %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i32, i64, i64, i32, i32 }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"color destination requires source color\00", align 1
@FZ_BLEND_KNOCKOUT = common dso_local global i32 0, align 4
@FZ_DONT_INTERPOLATE_IMAGES = common dso_local global i32 0, align 4
@FZ_DEVFLAG_GRIDFIT_AS_TILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot render glyph\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_42__*, %struct.TYPE_47__*, %struct.TYPE_50__*, i32*, float*, float, i32)* @fz_draw_fill_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_fill_text(i32* %0, %struct.TYPE_42__* %1, %struct.TYPE_47__* %2, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8 %3, i32* %4, float* %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_47__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_41__*, align 8
  %17 = alloca %struct.TYPE_50__, align 8
  %18 = alloca %struct.TYPE_52__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca %struct.TYPE_46__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_49__, align 4
  %29 = alloca %struct.TYPE_49__*, align 8
  %30 = alloca %struct.TYPE_50__, align 8
  %31 = alloca %struct.TYPE_50__, align 8
  %32 = alloca %struct.TYPE_51__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_50__, align 8
  %35 = alloca %struct.TYPE_48__*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_50__, align 8
  %39 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_42__* %1, %struct.TYPE_42__** %10, align 8
  store %struct.TYPE_47__* %2, %struct.TYPE_47__** %11, align 8
  store i32* %4, i32** %12, align 8
  store float* %5, float** %13, align 8
  store float %6, float* %14, align 4
  store i32 %7, i32* %15, align 4
  %40 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %41 = bitcast %struct.TYPE_42__* %40 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %41, %struct.TYPE_41__** %16, align 8
  %42 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %42, i32 0, i32 5
  call void @fz_concat(%struct.TYPE_50__* sret %17, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8 %3, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8 %43)
  %44 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_52__*, %struct.TYPE_52__** %45, align 8
  %47 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %46, i64 %49
  store %struct.TYPE_52__* %50, %struct.TYPE_52__** %18, align 8
  %51 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_43__*, %struct.TYPE_43__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %19, align 8
  %56 = load i32, i32* @FZ_MAX_COLORS, align 4
  %57 = add nsw i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %20, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %21, align 8
  store i32* null, i32** %26, align 8
  %61 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %27, align 8
  %64 = bitcast %struct.TYPE_49__* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %64, i8 0, i64 4, i1 false)
  %65 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %8
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_52__* @push_group_for_separations(i32* %75, %struct.TYPE_41__* %76, i32 %77, i32 %80)
  store %struct.TYPE_52__* %81, %struct.TYPE_52__** %18, align 8
  br label %82

82:                                               ; preds = %74, %69, %8
  %83 = load i32*, i32** %12, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32* @fz_default_colorspace(i32* %86, i32 %89, i32* %90)
  store i32* %91, i32** %26, align 8
  br label %92

92:                                               ; preds = %85, %82
  %93 = load i32*, i32** %26, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32*, i32** %19, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %101 = call i32 @fz_throw(i32* %99, i32 %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %98, %95, %92
  %103 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %112 = call %struct.TYPE_52__* @fz_knockout_begin(i32* %110, %struct.TYPE_41__* %111)
  store %struct.TYPE_52__* %112, %struct.TYPE_52__** %18, align 8
  br label %113

113:                                              ; preds = %109, %102
  %114 = load i32*, i32** %9, align 8
  %115 = load float*, float** %13, align 8
  %116 = load i32*, i32** %26, align 8
  %117 = load float, float* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_43__*, %struct.TYPE_43__** %120, align 8
  %122 = call %struct.TYPE_49__* @resolve_color(i32* %114, %struct.TYPE_49__* %28, float* %115, i32* %116, float %117, i32 %118, i8* %60, %struct.TYPE_43__* %121)
  store %struct.TYPE_49__* %122, %struct.TYPE_49__** %29, align 8
  store i8 -1, i8* %22, align 1
  %123 = load float, float* %14, align 4
  %124 = fmul float 2.550000e+02, %123
  %125 = fptoui float %124 to i8
  store i8 %125, i8* %23, align 1
  %126 = load %struct.TYPE_47__*, %struct.TYPE_47__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_46__*, %struct.TYPE_46__** %127, align 8
  store %struct.TYPE_46__* %128, %struct.TYPE_46__** %24, align 8
  br label %129

129:                                              ; preds = %341, %113
  %130 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %131 = icmp ne %struct.TYPE_46__* %130, null
  br i1 %131, label %132, label %345

132:                                              ; preds = %129
  %133 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %134 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %133, i32 0, i32 3
  %135 = bitcast %struct.TYPE_50__* %30 to i8*
  %136 = bitcast %struct.TYPE_50__* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 48, i1 false)
  store i32 0, i32* %25, align 4
  br label %137

137:                                              ; preds = %337, %132
  %138 = load i32, i32* %25, align 4
  %139 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %140 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %340

143:                                              ; preds = %137
  %144 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %145 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_45__*, %struct.TYPE_45__** %145, align 8
  %147 = load i32, i32* %25, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %33, align 4
  %152 = load i32, i32* %33, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %143
  br label %337

155:                                              ; preds = %143
  %156 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %157 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_45__*, %struct.TYPE_45__** %157, align 8
  %159 = load i32, i32* %25, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %30, i32 0, i32 1
  store i64 %163, i64* %164, align 8
  %165 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %166 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_45__*, %struct.TYPE_45__** %166, align 8
  %168 = load i32, i32* %25, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %30, i32 0, i32 0
  store i64 %172, i64* %173, align 8
  call void @fz_concat(%struct.TYPE_50__* sret %34, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8 %30, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8 %17)
  %174 = bitcast %struct.TYPE_50__* %31 to i8*
  %175 = bitcast %struct.TYPE_50__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 48, i1 false)
  %176 = load i32*, i32** %9, align 8
  %177 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %178 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %33, align 4
  %181 = load i32*, i32** %19, align 8
  %182 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_43__*, %struct.TYPE_43__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32*, i32** %27, align 8
  %190 = call i32 @fz_rasterizer_text_aa_level(i32* %189)
  %191 = call %struct.TYPE_51__* @fz_render_glyph(i32* %176, i32 %179, i32 %180, %struct.TYPE_50__* %31, i32* %181, i32* %183, i32 %188, i32 %190)
  store %struct.TYPE_51__* %191, %struct.TYPE_51__** %32, align 8
  %192 = load %struct.TYPE_51__*, %struct.TYPE_51__** %32, align 8
  %193 = icmp ne %struct.TYPE_51__* %192, null
  br i1 %193, label %194, label %311

194:                                              ; preds = %155
  %195 = load %struct.TYPE_51__*, %struct.TYPE_51__** %32, align 8
  %196 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_48__*, %struct.TYPE_48__** %196, align 8
  store %struct.TYPE_48__* %197, %struct.TYPE_48__** %35, align 8
  %198 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %31, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @floorf(i64 %199)
  store i32 %200, i32* %36, align 4
  %201 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %31, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @floorf(i64 %202)
  store i32 %203, i32* %37, align 4
  %204 = load %struct.TYPE_48__*, %struct.TYPE_48__** %35, align 8
  %205 = icmp eq %struct.TYPE_48__* %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %194
  %207 = load %struct.TYPE_48__*, %struct.TYPE_48__** %35, align 8
  %208 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %252

211:                                              ; preds = %206, %194
  %212 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %213 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_43__*, %struct.TYPE_43__** %213, align 8
  %215 = load %struct.TYPE_51__*, %struct.TYPE_51__** %32, align 8
  %216 = load i32, i32* %36, align 4
  %217 = load i32, i32* %37, align 4
  %218 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_49__*, %struct.TYPE_49__** %29, align 8
  %221 = call i32 @draw_glyph(i8* %60, %struct.TYPE_43__* %214, %struct.TYPE_51__* %215, i32 %216, i32 %217, i32* %219, %struct.TYPE_49__* %220)
  %222 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_43__*, %struct.TYPE_43__** %223, align 8
  %225 = icmp ne %struct.TYPE_43__* %224, null
  br i1 %225, label %226, label %236

226:                                              ; preds = %211
  %227 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %228 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_43__*, %struct.TYPE_43__** %228, align 8
  %230 = load %struct.TYPE_51__*, %struct.TYPE_51__** %32, align 8
  %231 = load i32, i32* %36, align 4
  %232 = load i32, i32* %37, align 4
  %233 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %234 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %233, i32 0, i32 3
  %235 = call i32 @draw_glyph(i8* %22, %struct.TYPE_43__* %229, %struct.TYPE_51__* %230, i32 %231, i32 %232, i32* %234, %struct.TYPE_49__* null)
  br label %236

236:                                              ; preds = %226, %211
  %237 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_43__*, %struct.TYPE_43__** %238, align 8
  %240 = icmp ne %struct.TYPE_43__* %239, null
  br i1 %240, label %241, label %251

241:                                              ; preds = %236
  %242 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %243 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_43__*, %struct.TYPE_43__** %243, align 8
  %245 = load %struct.TYPE_51__*, %struct.TYPE_51__** %32, align 8
  %246 = load i32, i32* %36, align 4
  %247 = load i32, i32* %37, align 4
  %248 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %248, i32 0, i32 3
  %250 = call i32 @draw_glyph(i8* %23, %struct.TYPE_43__* %244, %struct.TYPE_51__* %245, i32 %246, i32 %247, i32* %249, %struct.TYPE_49__* null)
  br label %251

251:                                              ; preds = %241, %236
  br label %307

252:                                              ; preds = %206
  %253 = load %struct.TYPE_48__*, %struct.TYPE_48__** %35, align 8
  %254 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %38, i32 0, i32 5
  store i32 %255, i32* %256, align 8
  %257 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %38, i32 0, i32 3
  store i64 0, i64* %257, align 8
  %258 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %38, i32 0, i32 4
  store i64 0, i64* %258, align 8
  %259 = load %struct.TYPE_48__*, %struct.TYPE_48__** %35, align 8
  %260 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %38, i32 0, i32 2
  store i32 %261, i32* %262, align 8
  %263 = load i32, i32* %36, align 4
  %264 = sext i32 %263 to i64
  %265 = load %struct.TYPE_48__*, %struct.TYPE_48__** %35, align 8
  %266 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %264, %267
  %269 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %38, i32 0, i32 1
  store i64 %268, i64* %269, align 8
  %270 = load i32, i32* %37, align 4
  %271 = sext i32 %270 to i64
  %272 = load %struct.TYPE_48__*, %struct.TYPE_48__** %35, align 8
  %273 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %271, %274
  %276 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %38, i32 0, i32 0
  store i64 %275, i64* %276, align 8
  %277 = load i32*, i32** %9, align 8
  %278 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %278, i32 0, i32 4
  %280 = load %struct.TYPE_43__*, %struct.TYPE_43__** %279, align 8
  %281 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %282 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_43__*, %struct.TYPE_43__** %284, align 8
  %286 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_43__*, %struct.TYPE_43__** %287, align 8
  %289 = load %struct.TYPE_48__*, %struct.TYPE_48__** %35, align 8
  %290 = load float, float* %14, align 4
  %291 = fmul float %290, 2.550000e+02
  %292 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @FZ_DONT_INTERPOLATE_IMAGES, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  %298 = xor i1 %297, true
  %299 = zext i1 %298 to i32
  %300 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @FZ_DEVFLAG_GRIDFIT_AS_TILED, align 4
  %304 = and i32 %302, %303
  %305 = load %struct.TYPE_49__*, %struct.TYPE_49__** %29, align 8
  %306 = call i32 @fz_paint_image(i32* %277, %struct.TYPE_43__* %280, i32* %282, %struct.TYPE_43__* %285, %struct.TYPE_43__* %288, %struct.TYPE_48__* %289, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8 %38, float %291, i32 %299, i32 %304, %struct.TYPE_49__* %305)
  br label %307

307:                                              ; preds = %252, %251
  %308 = load i32*, i32** %9, align 8
  %309 = load %struct.TYPE_51__*, %struct.TYPE_51__** %32, align 8
  %310 = call i32 @fz_drop_glyph(i32* %308, %struct.TYPE_51__* %309)
  br label %336

311:                                              ; preds = %155
  %312 = load i32*, i32** %9, align 8
  %313 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %314 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %33, align 4
  %317 = call i32* @fz_outline_glyph(i32* %312, i32 %315, i32 %316, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8 %30)
  store i32* %317, i32** %39, align 8
  %318 = load i32*, i32** %39, align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %320, label %332

320:                                              ; preds = %311
  %321 = load i32*, i32** %9, align 8
  %322 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %323 = load i32*, i32** %39, align 8
  %324 = load i32*, i32** %26, align 8
  %325 = load float*, float** %13, align 8
  %326 = load float, float* %14, align 4
  %327 = load i32, i32* %15, align 4
  %328 = call i32 @fz_draw_fill_path(i32* %321, %struct.TYPE_42__* %322, i32* %323, i32 0, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8 %3, i32* %324, float* %325, float %326, i32 %327)
  %329 = load i32*, i32** %9, align 8
  %330 = load i32*, i32** %39, align 8
  %331 = call i32 @fz_drop_path(i32* %329, i32* %330)
  br label %335

332:                                              ; preds = %311
  %333 = load i32*, i32** %9, align 8
  %334 = call i32 @fz_warn(i32* %333, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %335

335:                                              ; preds = %332, %320
  br label %336

336:                                              ; preds = %335, %307
  br label %337

337:                                              ; preds = %336, %154
  %338 = load i32, i32* %25, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %25, align 4
  br label %137

340:                                              ; preds = %137
  br label %341

341:                                              ; preds = %340
  %342 = load %struct.TYPE_46__*, %struct.TYPE_46__** %24, align 8
  %343 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %342, i32 0, i32 4
  %344 = load %struct.TYPE_46__*, %struct.TYPE_46__** %343, align 8
  store %struct.TYPE_46__* %344, %struct.TYPE_46__** %24, align 8
  br label %129

345:                                              ; preds = %129
  %346 = load %struct.TYPE_52__*, %struct.TYPE_52__** %18, align 8
  %347 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %345
  %353 = load i32*, i32** %9, align 8
  %354 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %355 = call i32 @fz_knockout_end(i32* %353, %struct.TYPE_41__* %354)
  br label %356

356:                                              ; preds = %352, %345
  %357 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %357)
  ret void
}

declare dso_local void @fz_concat(%struct.TYPE_50__* sret, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local %struct.TYPE_52__* @push_group_for_separations(i32*, %struct.TYPE_41__*, i32, i32) #1

declare dso_local i32* @fz_default_colorspace(i32*, i32, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_52__* @fz_knockout_begin(i32*, %struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_49__* @resolve_color(i32*, %struct.TYPE_49__*, float*, i32*, float, i32, i8*, %struct.TYPE_43__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.TYPE_51__* @fz_render_glyph(i32*, i32, i32, %struct.TYPE_50__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_rasterizer_text_aa_level(i32*) #1

declare dso_local i32 @floorf(i64) #1

declare dso_local i32 @draw_glyph(i8*, %struct.TYPE_43__*, %struct.TYPE_51__*, i32, i32, i32*, %struct.TYPE_49__*) #1

declare dso_local i32 @fz_paint_image(i32*, %struct.TYPE_43__*, i32*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_48__*, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8, float, i32, i32, %struct.TYPE_49__*) #1

declare dso_local i32 @fz_drop_glyph(i32*, %struct.TYPE_51__*) #1

declare dso_local i32* @fz_outline_glyph(i32*, i32, i32, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8) #1

declare dso_local i32 @fz_draw_fill_path(i32*, %struct.TYPE_42__*, i32*, i32, %struct.TYPE_50__* byval(%struct.TYPE_50__) align 8, i32*, float*, float, i32) #1

declare dso_local i32 @fz_drop_path(i32*, i32*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @fz_knockout_end(i32*, %struct.TYPE_41__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
