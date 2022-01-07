; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_draw_flow_box.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_draw_flow_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64, float, float, i32, float, float, %struct.TYPE_26__, i32, %struct.TYPE_27__*, i32, i64, %struct.TYPE_31__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { float, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { float, float, float }
%struct.TYPE_30__ = type { float, float, float, float, i64, i64 }
%struct.TYPE_29__ = type { float, i32, i64, i64, i32, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32, i32, i64, i64 }

@FLOW_IMAGE = common dso_local global i64 0, align 8
@FLOW_WORD = common dso_local global i64 0, align 8
@FLOW_SPACE = common dso_local global i64 0, align 8
@FLOW_SHYPHEN = common dso_local global i64 0, align 8
@V_VISIBLE = common dso_local global i64 0, align 8
@fz_default_color_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_32__*, float, float, i32*, %struct.TYPE_30__*, i32*)* @draw_flow_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_flow_box(i32* %0, %struct.TYPE_32__* %1, float %2, float %3, i32* %4, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_30__, align 8
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca %struct.TYPE_29__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_30__, align 8
  %32 = alloca %struct.TYPE_30__, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %6, i32** %13, align 8
  store i32* null, i32** %15, align 8
  %33 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 0
  store float 0.000000e+00, float* %33, align 4
  %34 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 1
  store float 0.000000e+00, float* %34, align 4
  %35 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 2
  store float 0.000000e+00, float* %35, align 4
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %37, align 8
  store %struct.TYPE_31__* %38, %struct.TYPE_31__** %14, align 8
  br label %39

39:                                               ; preds = %526, %7
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %41 = icmp ne %struct.TYPE_31__* %40, null
  br i1 %41, label %42, label %530

42:                                               ; preds = %39
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %19, align 8
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FLOW_IMAGE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %42
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 1
  %56 = load float, float* %55, align 8
  %57 = load float, float* %11, align 4
  %58 = fcmp oge float %56, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 1
  %62 = load float, float* %61, align 8
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 2
  %65 = load float, float* %64, align 4
  %66 = fadd float %62, %65
  %67 = load float, float* %10, align 4
  %68 = fcmp ole float %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59, %53
  br label %526

70:                                               ; preds = %59
  br label %85

71:                                               ; preds = %42
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 8
  %75 = load float, float* %11, align 4
  %76 = fcmp ogt float %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 1
  %80 = load float, float* %79, align 8
  %81 = load float, float* %10, align 4
  %82 = fcmp olt float %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %71
  br label %526

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @FLOW_WORD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %85
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @FLOW_SPACE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @FLOW_SHYPHEN, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %471

103:                                              ; preds = %97, %91, %85
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @FLOW_SPACE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 10
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %526

115:                                              ; preds = %109, %103
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @FLOW_SHYPHEN, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 10
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  br label %526

127:                                              ; preds = %121, %115
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @V_VISIBLE, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %526

134:                                              ; preds = %127
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load float, float* %137, align 8
  %139 = fdiv float %138, 2.550000e+02
  %140 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  store float %139, float* %140, align 4
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 1
  %144 = load float, float* %143, align 4
  %145 = fdiv float %144, 2.550000e+02
  %146 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 1
  store float %145, float* %146, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 2
  %150 = load float, float* %149, align 8
  %151 = fdiv float %150, 2.550000e+02
  %152 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 2
  store float %151, float* %152, align 4
  %153 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %154 = load float, float* %153, align 4
  %155 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 0
  %156 = load float, float* %155, align 4
  %157 = fcmp une float %154, %156
  br i1 %157, label %170, label %158

158:                                              ; preds = %134
  %159 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 1
  %160 = load float, float* %159, align 4
  %161 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 1
  %162 = load float, float* %161, align 4
  %163 = fcmp une float %160, %162
  br i1 %163, label %170, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 2
  %166 = load float, float* %165, align 4
  %167 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 2
  %168 = load float, float* %167, align 4
  %169 = fcmp une float %166, %168
  br i1 %169, label %170, label %195

170:                                              ; preds = %164, %158, %134
  %171 = load i32*, i32** %15, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load i32*, i32** %8, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @fz_device_rgb(i32* %177)
  %179 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 0
  %180 = load i32, i32* @fz_default_color_params, align 4
  %181 = call i32 @fz_fill_text(i32* %174, i32* %175, i32* %176, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %5, i32 %178, float* %179, i32 1, i32 %180)
  %182 = load i32*, i32** %8, align 8
  %183 = load i32*, i32** %15, align 8
  %184 = call i32 @fz_drop_text(i32* %182, i32* %183)
  store i32* null, i32** %15, align 8
  br label %185

185:                                              ; preds = %173, %170
  %186 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %187 = load float, float* %186, align 4
  %188 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 0
  store float %187, float* %188, align 4
  %189 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 1
  %190 = load float, float* %189, align 4
  %191 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 1
  store float %190, float* %191, align 4
  %192 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 2
  %193 = load float, float* %192, align 4
  %194 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 0, i64 2
  store float %193, float* %194, align 4
  br label %195

195:                                              ; preds = %185, %164
  %196 = load i32*, i32** %15, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32*, i32** %8, align 8
  %200 = call i32* @fz_new_text(i32* %199)
  store i32* %200, i32** %15, align 8
  br label %201

201:                                              ; preds = %198, %195
  %202 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, 1
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %201
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %208, i32 0, i32 4
  %210 = load float, float* %209, align 4
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 5
  %213 = load float, float* %212, align 8
  %214 = fadd float %210, %213
  store float %214, float* %22, align 4
  br label %219

215:                                              ; preds = %201
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 4
  %218 = load float, float* %217, align 4
  store float %218, float* %22, align 4
  br label %219

219:                                              ; preds = %215, %207
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 1
  %222 = load float, float* %221, align 8
  store float %222, float* %23, align 4
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 8
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 0
  %227 = load float, float* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  store float %227, float* %228, align 8
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 5
  store i64 0, i64* %229, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 4
  store i64 0, i64* %230, align 8
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 8
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 0
  %235 = load float, float* %234, align 8
  %236 = fneg float %235
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 1
  store float %236, float* %237, align 4
  %238 = load float, float* %22, align 4
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 2
  store float %238, float* %239, align 8
  %240 = load float, float* %23, align 4
  %241 = load float, float* %10, align 4
  %242 = fsub float %240, %241
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 3
  store float %242, float* %243, align 4
  %244 = load i32*, i32** %8, align 8
  %245 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %246 = call i8* @get_node_text(i32* %244, %struct.TYPE_31__* %245)
  store i8* %246, i8** %21, align 8
  %247 = load i32*, i32** %8, align 8
  %248 = load i32*, i32** %13, align 8
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = and i32 %251, 1
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 9
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i8*, i8** %21, align 8
  %266 = call i32 @init_string_walker(i32* %247, %struct.TYPE_29__* %20, i32* %248, i32 %252, i32 %255, i32 %258, i32 %261, i32 %264, i8* %265)
  br label %267

267:                                              ; preds = %463, %219
  %268 = call i64 @walk_string(%struct.TYPE_29__* %20)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %470

270:                                              ; preds = %267
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %271, i32 0, i32 8
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 0
  %275 = load float, float* %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 0
  %277 = load float, float* %276, align 8
  %278 = fdiv float %275, %277
  store float %278, float* %24, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %25, align 4
  br label %279

279:                                              ; preds = %325, %270
  %280 = load i32, i32* %25, align 4
  %281 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp ult i32 %280, %282
  br i1 %283, label %284, label %328

284:                                              ; preds = %279
  %285 = load i32, i32* %29, align 4
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 6
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %286, align 8
  %288 = load i32, i32* %25, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %292, %285
  store i32 %293, i32* %291, align 8
  %294 = load i32, i32* %30, align 4
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 6
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %295, align 8
  %297 = load i32, i32* %25, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, %294
  store i32 %302, i32* %300, align 4
  %303 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 6
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %303, align 8
  %305 = load i32, i32* %25, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* %29, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %309
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %29, align 4
  %314 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 6
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %314, align 8
  %316 = load i32, i32* %25, align 4
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = load i32, i32* %30, align 4
  %322 = sext i32 %321 to i64
  %323 = add nsw i64 %322, %320
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %30, align 4
  br label %325

325:                                              ; preds = %284
  %326 = load i32, i32* %25, align 4
  %327 = add i32 %326, 1
  store i32 %327, i32* %25, align 4
  br label %279

328:                                              ; preds = %279
  %329 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %330 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = and i32 %331, 1
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %328
  %335 = load i32, i32* %29, align 4
  %336 = sitofp i32 %335 to float
  %337 = load float, float* %24, align 4
  %338 = fmul float %336, %337
  %339 = load float, float* %22, align 4
  %340 = fsub float %339, %338
  store float %340, float* %22, align 4
  br label %341

341:                                              ; preds = %334, %328
  store i64 0, i64* %26, align 8
  br label %342

342:                                              ; preds = %445, %341
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* %26, align 8
  %346 = add nsw i64 %344, %345
  %347 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 3
  %348 = load i64, i64* %347, align 8
  %349 = icmp slt i64 %346, %348
  br i1 %349, label %350, label %450

350:                                              ; preds = %342
  %351 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* %26, align 8
  %354 = add nsw i64 %352, %353
  %355 = call i32 @fz_chartorune(i32* %27, i64 %354)
  store i32 %355, i32* %28, align 4
  store i32 0, i32* %25, align 4
  br label %356

356:                                              ; preds = %423, %350
  %357 = load i32, i32* %25, align 4
  %358 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp ult i32 %357, %359
  br i1 %360, label %361, label %426

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 5
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %362, align 8
  %364 = load i32, i32* %25, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* %26, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %422

371:                                              ; preds = %361
  %372 = load float, float* %22, align 4
  %373 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 6
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %373, align 8
  %375 = load i32, i32* %25, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = sitofp i32 %379 to float
  %381 = load float, float* %24, align 4
  %382 = fmul float %380, %381
  %383 = fadd float %372, %382
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 2
  store float %383, float* %384, align 8
  %385 = load float, float* %23, align 4
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 6
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %386, align 8
  %388 = load i32, i32* %25, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = sitofp i32 %392 to float
  %394 = load float, float* %24, align 4
  %395 = fmul float %393, %394
  %396 = fsub float %385, %395
  %397 = load float, float* %10, align 4
  %398 = fsub float %396, %397
  %399 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 3
  store float %398, float* %399, align 4
  %400 = load i32*, i32** %8, align 8
  %401 = load i32*, i32** %15, align 8
  %402 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 4
  %403 = load i32, i32* %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 5
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %404, align 8
  %406 = load i32, i32* %25, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* %27, align 4
  %412 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %413 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %416 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %419 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %418, i32 0, i32 7
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @fz_show_glyph(i32* %400, i32* %401, i32 %403, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %16, i32 %410, i32 %411, i32 0, i32 %414, i32 %417, i32 %420)
  store i32 -1, i32* %27, align 4
  br label %422

422:                                              ; preds = %371, %361
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %25, align 4
  %425 = add i32 %424, 1
  store i32 %425, i32* %25, align 4
  br label %356

426:                                              ; preds = %356
  %427 = load i32, i32* %27, align 4
  %428 = icmp ne i32 %427, -1
  br i1 %428, label %429, label %445

429:                                              ; preds = %426
  %430 = load i32*, i32** %8, align 8
  %431 = load i32*, i32** %15, align 8
  %432 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 4
  %433 = load i32, i32* %432, align 8
  %434 = load i32, i32* %27, align 4
  %435 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %436 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %439 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %442 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %441, i32 0, i32 7
  %443 = load i32, i32* %442, align 8
  %444 = call i32 @fz_show_glyph(i32* %430, i32* %431, i32 %433, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %16, i32 -1, i32 %434, i32 0, i32 %437, i32 %440, i32 %443)
  br label %445

445:                                              ; preds = %429, %426
  %446 = load i32, i32* %28, align 4
  %447 = sext i32 %446 to i64
  %448 = load i64, i64* %26, align 8
  %449 = add nsw i64 %448, %447
  store i64 %449, i64* %26, align 8
  br label %342

450:                                              ; preds = %342
  %451 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %452 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 8
  %454 = and i32 %453, 1
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %463

456:                                              ; preds = %450
  %457 = load i32, i32* %29, align 4
  %458 = sitofp i32 %457 to float
  %459 = load float, float* %24, align 4
  %460 = fmul float %458, %459
  %461 = load float, float* %22, align 4
  %462 = fadd float %461, %460
  store float %462, float* %22, align 4
  br label %463

463:                                              ; preds = %456, %450
  %464 = load i32, i32* %30, align 4
  %465 = sitofp i32 %464 to float
  %466 = load float, float* %24, align 4
  %467 = fmul float %465, %466
  %468 = load float, float* %23, align 4
  %469 = fadd float %468, %467
  store float %469, float* %23, align 4
  br label %267

470:                                              ; preds = %267
  br label %525

471:                                              ; preds = %97
  %472 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %473 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @FLOW_IMAGE, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %477, label %524

477:                                              ; preds = %471
  %478 = load i32*, i32** %15, align 8
  %479 = icmp ne i32* %478, null
  br i1 %479, label %480, label %492

480:                                              ; preds = %477
  %481 = load i32*, i32** %8, align 8
  %482 = load i32*, i32** %12, align 8
  %483 = load i32*, i32** %15, align 8
  %484 = load i32*, i32** %8, align 8
  %485 = call i32 @fz_device_rgb(i32* %484)
  %486 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %487 = load i32, i32* @fz_default_color_params, align 4
  %488 = call i32 @fz_fill_text(i32* %481, i32* %482, i32* %483, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %5, i32 %485, float* %486, i32 1, i32 %487)
  %489 = load i32*, i32** %8, align 8
  %490 = load i32*, i32** %15, align 8
  %491 = call i32 @fz_drop_text(i32* %489, i32* %490)
  store i32* null, i32** %15, align 8
  br label %492

492:                                              ; preds = %480, %477
  %493 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %494 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %493, i32 0, i32 0
  %495 = load i64, i64* %494, align 8
  %496 = load i64, i64* @V_VISIBLE, align 8
  %497 = icmp eq i64 %495, %496
  br i1 %497, label %498, label %523

498:                                              ; preds = %492
  %499 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %500 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %499, i32 0, i32 4
  %501 = load float, float* %500, align 4
  %502 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %503 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %502, i32 0, i32 1
  %504 = load float, float* %503, align 8
  %505 = load float, float* %10, align 4
  %506 = fsub float %504, %505
  call void @fz_pre_translate(%struct.TYPE_30__* sret %31, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %5, float %501, float %506)
  %507 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %508 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %507, i32 0, i32 5
  %509 = load float, float* %508, align 8
  %510 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %511 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %510, i32 0, i32 2
  %512 = load float, float* %511, align 4
  call void @fz_pre_scale(%struct.TYPE_30__* sret %32, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %31, float %509, float %512)
  %513 = bitcast %struct.TYPE_30__* %31 to i8*
  %514 = bitcast %struct.TYPE_30__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %513, i8* align 8 %514, i64 32, i1 false)
  %515 = load i32*, i32** %8, align 8
  %516 = load i32*, i32** %12, align 8
  %517 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %518 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %517, i32 0, i32 6
  %519 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* @fz_default_color_params, align 4
  %522 = call i32 @fz_fill_image(i32* %515, i32* %516, i32 %520, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %31, i32 1, i32 %521)
  br label %523

523:                                              ; preds = %498, %492
  br label %524

524:                                              ; preds = %523, %471
  br label %525

525:                                              ; preds = %524, %470
  br label %526

526:                                              ; preds = %525, %133, %126, %114, %83, %69
  %527 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %528 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %527, i32 0, i32 11
  %529 = load %struct.TYPE_31__*, %struct.TYPE_31__** %528, align 8
  store %struct.TYPE_31__* %529, %struct.TYPE_31__** %14, align 8
  br label %39

530:                                              ; preds = %39
  %531 = load i32*, i32** %15, align 8
  %532 = icmp ne i32* %531, null
  br i1 %532, label %533, label %545

533:                                              ; preds = %530
  %534 = load i32*, i32** %8, align 8
  %535 = load i32*, i32** %12, align 8
  %536 = load i32*, i32** %15, align 8
  %537 = load i32*, i32** %8, align 8
  %538 = call i32 @fz_device_rgb(i32* %537)
  %539 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %540 = load i32, i32* @fz_default_color_params, align 4
  %541 = call i32 @fz_fill_text(i32* %534, i32* %535, i32* %536, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8 %5, i32 %538, float* %539, i32 1, i32 %540)
  %542 = load i32*, i32** %8, align 8
  %543 = load i32*, i32** %15, align 8
  %544 = call i32 @fz_drop_text(i32* %542, i32* %543)
  store i32* null, i32** %15, align 8
  br label %545

545:                                              ; preds = %533, %530
  ret void
}

declare dso_local i32 @fz_fill_text(i32*, i32*, i32*, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8, i32, float*, i32, i32) #1

declare dso_local i32 @fz_device_rgb(i32*) #1

declare dso_local i32 @fz_drop_text(i32*, i32*) #1

declare dso_local i32* @fz_new_text(i32*) #1

declare dso_local i8* @get_node_text(i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @init_string_walker(i32*, %struct.TYPE_29__*, i32*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @walk_string(%struct.TYPE_29__*) #1

declare dso_local i32 @fz_chartorune(i32*, i64) #1

declare dso_local i32 @fz_show_glyph(i32*, i32*, i32, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8, i32, i32, i32, i32, i32, i32) #1

declare dso_local void @fz_pre_translate(%struct.TYPE_30__* sret, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8, float, float) #1

declare dso_local void @fz_pre_scale(%struct.TYPE_30__* sret, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8, float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_fill_image(i32*, i32*, i32, %struct.TYPE_30__* byval(%struct.TYPE_30__) align 8, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
