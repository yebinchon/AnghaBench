; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_draw_block_box.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-layout.c_draw_block_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float*, float*, float, float, float, float, %struct.TYPE_8__*, %struct.TYPE_8__*, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32*, i32 }

@L = common dso_local global i64 0, align 8
@T = common dso_local global i64 0, align 8
@R = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@V_VISIBLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, float, float, i32*, i32, i32*)* @draw_block_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_block_box(i32* %0, %struct.TYPE_8__* %1, float %2, float %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load float*, float** %22, align 8
  store float* %23, float** %19, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load float*, float** %25, align 8
  store float* %26, float** %20, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = call i32 @fz_html_box_has_boxes(%struct.TYPE_8__* %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load float, float* %31, align 8
  %33 = load float*, float** %20, align 8
  %34 = load i64, i64* @L, align 8
  %35 = getelementptr inbounds float, float* %33, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fsub float %32, %36
  store float %37, float* %15, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %20, align 8
  %42 = load i64, i64* @T, align 8
  %43 = getelementptr inbounds float, float* %41, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fsub float %40, %44
  store float %45, float* %16, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load float, float* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load float, float* %50, align 8
  %52 = fadd float %48, %51
  %53 = load float*, float** %20, align 8
  %54 = load i64, i64* @R, align 8
  %55 = getelementptr inbounds float, float* %53, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fadd float %52, %56
  store float %57, float* %17, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 5
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %20, align 8
  %62 = load i64, i64* @B, align 8
  %63 = getelementptr inbounds float, float* %61, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fadd float %60, %64
  store float %65, float* %18, align 4
  %66 = load float, float* %16, align 4
  %67 = load float, float* %11, align 4
  %68 = fcmp ogt float %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %7
  %70 = load float, float* %18, align 4
  %71 = load float, float* %10, align 4
  %72 = fcmp olt float %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %7
  br label %289

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 9
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @V_VISIBLE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %269

82:                                               ; preds = %74
  %83 = load i32*, i32** %8, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load float, float* %10, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 9
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load float, float* %15, align 4
  %93 = load float, float* %16, align 4
  %94 = load float, float* %17, align 4
  %95 = load float, float* %18, align 4
  %96 = call i32 @draw_rect(i32* %83, i32* %84, i32 %85, float %86, i32 %91, float %92, float %93, float %94, float %95)
  %97 = load float*, float** %19, align 8
  %98 = load i64, i64* @T, align 8
  %99 = getelementptr inbounds float, float* %97, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fcmp ogt float %100, 0.000000e+00
  br i1 %101, label %102, label %135

102:                                              ; preds = %82
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load float, float* %10, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 9
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @T, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load float, float* %15, align 4
  %116 = load float*, float** %19, align 8
  %117 = load i64, i64* @L, align 8
  %118 = getelementptr inbounds float, float* %116, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fsub float %115, %119
  %121 = load float, float* %16, align 4
  %122 = load float*, float** %19, align 8
  %123 = load i64, i64* @T, align 8
  %124 = getelementptr inbounds float, float* %122, i64 %123
  %125 = load float, float* %124, align 4
  %126 = fsub float %121, %125
  %127 = load float, float* %17, align 4
  %128 = load float*, float** %19, align 8
  %129 = load i64, i64* @R, align 8
  %130 = getelementptr inbounds float, float* %128, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fadd float %127, %131
  %133 = load float, float* %16, align 4
  %134 = call i32 @draw_rect(i32* %103, i32* %104, i32 %105, float %106, i32 %114, float %120, float %126, float %132, float %133)
  br label %135

135:                                              ; preds = %102, %82
  %136 = load float*, float** %19, align 8
  %137 = load i64, i64* @B, align 8
  %138 = getelementptr inbounds float, float* %136, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fcmp ogt float %139, 0.000000e+00
  br i1 %140, label %141, label %174

141:                                              ; preds = %135
  %142 = load i32*, i32** %8, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load float, float* %10, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 9
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @B, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load float, float* %15, align 4
  %155 = load float*, float** %19, align 8
  %156 = load i64, i64* @L, align 8
  %157 = getelementptr inbounds float, float* %155, i64 %156
  %158 = load float, float* %157, align 4
  %159 = fsub float %154, %158
  %160 = load float, float* %18, align 4
  %161 = load float, float* %17, align 4
  %162 = load float*, float** %19, align 8
  %163 = load i64, i64* @R, align 8
  %164 = getelementptr inbounds float, float* %162, i64 %163
  %165 = load float, float* %164, align 4
  %166 = fadd float %161, %165
  %167 = load float, float* %18, align 4
  %168 = load float*, float** %19, align 8
  %169 = load i64, i64* @B, align 8
  %170 = getelementptr inbounds float, float* %168, i64 %169
  %171 = load float, float* %170, align 4
  %172 = fadd float %167, %171
  %173 = call i32 @draw_rect(i32* %142, i32* %143, i32 %144, float %145, i32 %153, float %159, float %160, float %166, float %172)
  br label %174

174:                                              ; preds = %141, %135
  %175 = load float*, float** %19, align 8
  %176 = load i64, i64* @L, align 8
  %177 = getelementptr inbounds float, float* %175, i64 %176
  %178 = load float, float* %177, align 4
  %179 = fcmp ogt float %178, 0.000000e+00
  br i1 %179, label %180, label %213

180:                                              ; preds = %174
  %181 = load i32*, i32** %8, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load float, float* %10, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 9
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @L, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load float, float* %15, align 4
  %194 = load float*, float** %19, align 8
  %195 = load i64, i64* @L, align 8
  %196 = getelementptr inbounds float, float* %194, i64 %195
  %197 = load float, float* %196, align 4
  %198 = fsub float %193, %197
  %199 = load float, float* %16, align 4
  %200 = load float*, float** %19, align 8
  %201 = load i64, i64* @T, align 8
  %202 = getelementptr inbounds float, float* %200, i64 %201
  %203 = load float, float* %202, align 4
  %204 = fsub float %199, %203
  %205 = load float, float* %15, align 4
  %206 = load float, float* %18, align 4
  %207 = load float*, float** %19, align 8
  %208 = load i64, i64* @B, align 8
  %209 = getelementptr inbounds float, float* %207, i64 %208
  %210 = load float, float* %209, align 4
  %211 = fadd float %206, %210
  %212 = call i32 @draw_rect(i32* %181, i32* %182, i32 %183, float %184, i32 %192, float %198, float %204, float %205, float %211)
  br label %213

213:                                              ; preds = %180, %174
  %214 = load float*, float** %19, align 8
  %215 = load i64, i64* @R, align 8
  %216 = getelementptr inbounds float, float* %214, i64 %215
  %217 = load float, float* %216, align 4
  %218 = fcmp ogt float %217, 0.000000e+00
  br i1 %218, label %219, label %252

219:                                              ; preds = %213
  %220 = load i32*, i32** %8, align 8
  %221 = load i32*, i32** %12, align 8
  %222 = load i32, i32* %13, align 4
  %223 = load float, float* %10, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 9
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* @R, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load float, float* %17, align 4
  %233 = load float, float* %16, align 4
  %234 = load float*, float** %19, align 8
  %235 = load i64, i64* @T, align 8
  %236 = getelementptr inbounds float, float* %234, i64 %235
  %237 = load float, float* %236, align 4
  %238 = fsub float %233, %237
  %239 = load float, float* %17, align 4
  %240 = load float*, float** %19, align 8
  %241 = load i64, i64* @R, align 8
  %242 = getelementptr inbounds float, float* %240, i64 %241
  %243 = load float, float* %242, align 4
  %244 = fadd float %239, %243
  %245 = load float, float* %18, align 4
  %246 = load float*, float** %19, align 8
  %247 = load i64, i64* @B, align 8
  %248 = getelementptr inbounds float, float* %246, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fadd float %245, %249
  %251 = call i32 @draw_rect(i32* %220, i32* %221, i32 %222, float %223, i32 %231, float %232, float %238, float %244, float %250)
  br label %252

252:                                              ; preds = %219, %213
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 8
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = load i32*, i32** %8, align 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %260 = load float, float* %10, align 4
  %261 = load float, float* %11, align 4
  %262 = load i32*, i32** %12, align 8
  %263 = load i32, i32* %13, align 4
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 8
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @draw_list_mark(i32* %258, %struct.TYPE_8__* %259, float %260, float %261, i32* %262, i32 %263, i64 %266)
  br label %268

268:                                              ; preds = %257, %252
  br label %269

269:                                              ; preds = %268, %74
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 7
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %271, align 8
  store %struct.TYPE_8__* %272, %struct.TYPE_8__** %9, align 8
  br label %273

273:                                              ; preds = %285, %269
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %275 = icmp ne %struct.TYPE_8__* %274, null
  br i1 %275, label %276, label %289

276:                                              ; preds = %273
  %277 = load i32*, i32** %8, align 8
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %279 = load float, float* %10, align 4
  %280 = load float, float* %11, align 4
  %281 = load i32*, i32** %12, align 8
  %282 = load i32, i32* %13, align 4
  %283 = load i32*, i32** %14, align 8
  %284 = call i32 @draw_box(i32* %277, %struct.TYPE_8__* %278, float %279, float %280, i32* %281, i32 %282, i32* %283)
  br label %285

285:                                              ; preds = %276
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 6
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  store %struct.TYPE_8__* %288, %struct.TYPE_8__** %9, align 8
  br label %273

289:                                              ; preds = %73, %273
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fz_html_box_has_boxes(%struct.TYPE_8__*) #1

declare dso_local i32 @draw_rect(i32*, i32*, i32, float, i32, float, float, float, float) #1

declare dso_local i32 @draw_list_mark(i32*, %struct.TYPE_8__*, float, float, i32*, i32, i64) #1

declare dso_local i32 @draw_box(i32*, %struct.TYPE_8__*, float, float, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
