; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_edit_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float, float, float, float }
%struct.TYPE_17__ = type { i64, i64, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i32, i64, i32 }

@do_edit_rect.start_rect = internal global %struct.TYPE_15__ zeroinitializer, align 4
@do_edit_rect.state = internal global i32 0, align 4
@selected_annot = common dso_local global i64 0, align 8
@ui = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@view_page_inv_ctm = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_15__*)* @do_edit_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_edit_rect(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %0, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %4, align 8
  call void @fz_expand_irect(%struct.TYPE_16__* sret %5, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %1, i32 5)
  %9 = bitcast %struct.TYPE_16__* %1 to i8*
  %10 = bitcast %struct.TYPE_16__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 32, i1 false)
  %11 = call i64 @ui_mouse_inside(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %70

13:                                               ; preds = %3
  %14 = call i64 @ui_mouse_inside(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %13
  %17 = load i64, i64* @selected_annot, align 8
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 7), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 5), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  %24 = load i64, i64* @selected_annot, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 0), align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = bitcast %struct.TYPE_15__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_15__* @do_edit_rect.start_rect to i8*), i8* align 4 %26, i64 16, i1 false)
  store i32 0, i32* @do_edit_rect.state, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 1), align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 10
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @do_edit_rect.state, align 4
  %34 = or i32 %33, 8
  store i32 %34, i32* @do_edit_rect.state, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 1), align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 10
  %40 = sext i32 %39 to i64
  %41 = icmp sge i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @do_edit_rect.state, align 4
  %44 = or i32 %43, 2
  store i32 %44, i32* @do_edit_rect.state, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 2), align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 10
  %50 = icmp sle i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @do_edit_rect.state, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* @do_edit_rect.state, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 2), align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 10
  %59 = sext i32 %58 to i64
  %60 = icmp sge i64 %55, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @do_edit_rect.state, align 4
  %63 = or i32 %62, 4
  store i32 %63, i32* @do_edit_rect.state, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* @do_edit_rect.state, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 15, i32* @do_edit_rect.state, align 4
  br label %68

68:                                               ; preds = %67, %64
  br label %69

69:                                               ; preds = %68, %20, %16
  br label %70

70:                                               ; preds = %69, %13, %3
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 0), align 8
  %72 = load i64, i64* @selected_annot, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %249

74:                                               ; preds = %70
  %75 = load i32, i32* @do_edit_rect.state, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %249

77:                                               ; preds = %74
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = bitcast %struct.TYPE_15__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 bitcast (%struct.TYPE_15__* @do_edit_rect.start_rect to i8*), i64 16, i1 false)
  %80 = load i32, i32* @do_edit_rect.state, align 4
  %81 = and i32 %80, 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 1), align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 3), align 8
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %84, %86
  %88 = sitofp i64 %87 to float
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load float, float* %90, align 4
  %92 = fadd float %91, %88
  store float %92, float* %90, align 4
  br label %93

93:                                               ; preds = %83, %77
  %94 = load i32, i32* @do_edit_rect.state, align 4
  %95 = and i32 %94, 2
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 1), align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 3), align 8
  %100 = sext i32 %99 to i64
  %101 = sub nsw i64 %98, %100
  %102 = sitofp i64 %101 to float
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load float, float* %104, align 4
  %106 = fadd float %105, %102
  store float %106, float* %104, align 4
  br label %107

107:                                              ; preds = %97, %93
  %108 = load i32, i32* @do_edit_rect.state, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 2), align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 4), align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = sitofp i64 %115 to float
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load float, float* %118, align 4
  %120 = fadd float %119, %116
  store float %120, float* %118, align 4
  br label %121

121:                                              ; preds = %111, %107
  %122 = load i32, i32* @do_edit_rect.state, align 4
  %123 = and i32 %122, 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 2), align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 4), align 4
  %128 = sext i32 %127 to i64
  %129 = sub nsw i64 %126, %128
  %130 = sitofp i64 %129 to float
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  %133 = load float, float* %132, align 4
  %134 = fadd float %133, %130
  store float %134, float* %132, align 4
  br label %135

135:                                              ; preds = %125, %121
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load float, float* %137, align 4
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load float, float* %140, align 4
  %142 = fcmp olt float %138, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %135
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load float, float* %145, align 4
  store float %146, float* %6, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load float, float* %148, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  store float %149, float* %151, align 4
  %152 = load float, float* %6, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  store float %152, float* %154, align 4
  br label %155

155:                                              ; preds = %143, %135
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = load float, float* %157, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  %161 = load float, float* %160, align 4
  %162 = fcmp olt float %158, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %155
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  %166 = load float, float* %165, align 4
  store float %166, float* %7, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = load float, float* %168, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 3
  store float %169, float* %171, align 4
  %172 = load float, float* %7, align 4
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  store float %172, float* %174, align 4
  br label %175

175:                                              ; preds = %163, %155
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load float, float* %177, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load float, float* %180, align 4
  %182 = fadd float %181, 1.000000e+01
  %183 = fcmp olt float %178, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %175
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load float, float* %186, align 4
  %188 = fadd float %187, 1.000000e+01
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  store float %188, float* %190, align 4
  br label %191

191:                                              ; preds = %184, %175
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 3
  %194 = load float, float* %193, align 4
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load float, float* %196, align 4
  %198 = fadd float %197, 1.000000e+01
  %199 = fcmp olt float %194, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %191
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 2
  %203 = load float, float* %202, align 4
  %204 = fadd float %203, 1.000000e+01
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 3
  store float %204, float* %206, align 4
  br label %207

207:                                              ; preds = %200, %191
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 6), align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 0, i32* @do_edit_rect.state, align 4
  br label %211

211:                                              ; preds = %210, %207
  %212 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ui, i32 0, i32 5), align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %248, label %214

214:                                              ; preds = %211
  store i32 0, i32* @do_edit_rect.state, align 4
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %216 = load <2 x float>, <2 x float>* getelementptr inbounds ({ <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* bitcast (%struct.TYPE_15__* @do_edit_rect.start_rect to { <2 x float>, <2 x float> }*), i32 0, i32 0), align 4
  %217 = load <2 x float>, <2 x float>* getelementptr inbounds ({ <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* bitcast (%struct.TYPE_15__* @do_edit_rect.start_rect to { <2 x float>, <2 x float> }*), i32 0, i32 1), align 4
  %218 = bitcast %struct.TYPE_15__* %215 to { <2 x float>, <2 x float> }*
  %219 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %218, i32 0, i32 0
  %220 = load <2 x float>, <2 x float>* %219, align 4
  %221 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %218, i32 0, i32 1
  %222 = load <2 x float>, <2 x float>* %221, align 4
  %223 = call i64 @rects_differ(<2 x float> %216, <2 x float> %217, <2 x float> %220, <2 x float> %222, i32 1)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %247

225:                                              ; preds = %214
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %227 = load i32, i32* @view_page_inv_ctm, align 4
  %228 = bitcast %struct.TYPE_15__* %226 to { <2 x float>, <2 x float> }*
  %229 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %228, i32 0, i32 0
  %230 = load <2 x float>, <2 x float>* %229, align 4
  %231 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %228, i32 0, i32 1
  %232 = load <2 x float>, <2 x float>* %231, align 4
  %233 = call { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float> %230, <2 x float> %232, i32 %227)
  %234 = bitcast %struct.TYPE_15__* %8 to { <2 x float>, <2 x float> }*
  %235 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %234, i32 0, i32 0
  %236 = extractvalue { <2 x float>, <2 x float> } %233, 0
  store <2 x float> %236, <2 x float>* %235, align 4
  %237 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %234, i32 0, i32 1
  %238 = extractvalue { <2 x float>, <2 x float> } %233, 1
  store <2 x float> %238, <2 x float>* %237, align 4
  %239 = load i32, i32* @ctx, align 4
  %240 = load i64, i64* @selected_annot, align 8
  %241 = bitcast %struct.TYPE_15__* %8 to { <2 x float>, <2 x float> }*
  %242 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %241, i32 0, i32 0
  %243 = load <2 x float>, <2 x float>* %242, align 4
  %244 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %241, i32 0, i32 1
  %245 = load <2 x float>, <2 x float>* %244, align 4
  %246 = call i32 @pdf_set_annot_rect(i32 %239, i64 %240, <2 x float> %243, <2 x float> %245)
  br label %247

247:                                              ; preds = %225, %214
  br label %248

248:                                              ; preds = %247, %211
  br label %249

249:                                              ; preds = %248, %74, %70
  ret void
}

declare dso_local void @fz_expand_irect(%struct.TYPE_16__* sret, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ui_mouse_inside(%struct.TYPE_16__* byval(%struct.TYPE_16__) align 8) #1

declare dso_local i64 @rects_differ(<2 x float>, <2 x float>, <2 x float>, <2 x float>, i32) #1

declare dso_local { <2 x float>, <2 x float> } @fz_transform_rect(<2 x float>, <2 x float>, i32) #1

declare dso_local i32 @pdf_set_annot_rect(i32, i64, <2 x float>, <2 x float>) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
