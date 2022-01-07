; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_muraster.c_get_page_render_details.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_muraster.c_get_page_render_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@num_workers = common dso_local global i32 0, align 4
@x_resolution = common dso_local global i32 0, align 4
@y_resolution = common dso_local global i32 0, align 4
@rotation = common dso_local global i32 0, align 4
@width = common dso_local global float 0.000000e+00, align 4
@height = common dso_local global float 0.000000e+00, align 4
@fit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_5__*)* @get_page_render_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_page_render_details(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 6
  store i32* %21, i32** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @num_workers, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call { i64, i64 } @fz_bound_page(i32* %31, i32* %32)
  %34 = bitcast %struct.TYPE_6__* %12 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = extractvalue { i64, i64 } %33, 0
  store i64 %36, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = extractvalue { i64, i64 } %33, 1
  store i64 %38, i64* %37, align 4
  %39 = bitcast %struct.TYPE_6__* %30 to i8*
  %40 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 16, i1 false)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %44, %48
  %50 = sdiv i32 %49, 72
  %51 = sitofp i32 %50 to float
  store float %51, float* %7, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %55, %59
  %61 = sdiv i32 %60, 72
  %62 = sitofp i32 %61 to float
  store float %62, float* %8, align 4
  %63 = load i32, i32* @x_resolution, align 4
  %64 = sdiv i32 %63, 72
  %65 = sitofp i32 %64 to float
  store float %65, float* %10, align 4
  %66 = load i32, i32* @y_resolution, align 4
  %67 = sdiv i32 %66, 72
  %68 = sitofp i32 %67 to float
  store float %68, float* %11, align 4
  %69 = load i32, i32* @rotation, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %200

71:                                               ; preds = %3
  %72 = load float, float* %7, align 4
  %73 = load float, float* @width, align 4
  %74 = fcmp ole float %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load float, float* %8, align 4
  %77 = load float, float* @height, align 4
  %78 = fcmp ole float %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %199

80:                                               ; preds = %75, %71
  %81 = load i64, i64* @fit, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %128

83:                                               ; preds = %80
  %84 = load float, float* @width, align 4
  %85 = load float, float* %7, align 4
  %86 = fdiv float %84, %85
  store float %86, float* %13, align 4
  %87 = load float, float* @height, align 4
  %88 = load float, float* %8, align 4
  %89 = fdiv float %87, %88
  store float %89, float* %14, align 4
  %90 = load float, float* @height, align 4
  %91 = load float, float* %7, align 4
  %92 = fdiv float %90, %91
  store float %92, float* %15, align 4
  %93 = load float, float* @width, align 4
  %94 = load float, float* %8, align 4
  %95 = fdiv float %93, %94
  store float %95, float* %16, align 4
  %96 = load float, float* %13, align 4
  %97 = load float, float* %14, align 4
  %98 = call float @fz_min(float %96, float %97)
  store float %98, float* %17, align 4
  %99 = load float, float* %15, align 4
  %100 = load float, float* %16, align 4
  %101 = call float @fz_min(float %99, float %100)
  store float %101, float* %18, align 4
  %102 = load float, float* %17, align 4
  %103 = load float, float* %18, align 4
  %104 = fcmp oge float %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %83
  store i32 0, i32* %9, align 4
  %106 = load float, float* %17, align 4
  %107 = fcmp olt float %106, 1.000000e+00
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load float, float* %17, align 4
  %110 = load float, float* %10, align 4
  %111 = fmul float %110, %109
  store float %111, float* %10, align 4
  %112 = load float, float* %17, align 4
  %113 = load float, float* %11, align 4
  %114 = fmul float %113, %112
  store float %114, float* %11, align 4
  br label %115

115:                                              ; preds = %108, %105
  br label %127

116:                                              ; preds = %83
  store i32 90, i32* %9, align 4
  %117 = load float, float* %18, align 4
  %118 = fcmp olt float %117, 1.000000e+00
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load float, float* %18, align 4
  %121 = load float, float* %10, align 4
  %122 = fmul float %121, %120
  store float %122, float* %10, align 4
  %123 = load float, float* %18, align 4
  %124 = load float, float* %11, align 4
  %125 = fmul float %124, %123
  store float %125, float* %11, align 4
  br label %126

126:                                              ; preds = %119, %116
  br label %127

127:                                              ; preds = %126, %115
  br label %198

128:                                              ; preds = %80
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  %129 = load float, float* %7, align 4
  %130 = load float, float* @width, align 4
  %131 = fcmp ogt float %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %128
  %133 = load float, float* %7, align 4
  %134 = load float, float* @width, align 4
  %135 = fsub float %133, %134
  %136 = load float, float* %8, align 4
  %137 = load float, float* @height, align 4
  %138 = fcmp ogt float %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load float, float* @height, align 4
  br label %143

141:                                              ; preds = %132
  %142 = load float, float* %8, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi float [ %140, %139 ], [ %142, %141 ]
  %145 = fmul float %135, %144
  %146 = load float, float* %19, align 4
  %147 = fadd float %146, %145
  store float %147, float* %19, align 4
  br label %148

148:                                              ; preds = %143, %128
  %149 = load float, float* %8, align 4
  %150 = load float, float* @height, align 4
  %151 = fcmp ogt float %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load float, float* %8, align 4
  %154 = load float, float* @height, align 4
  %155 = fsub float %153, %154
  %156 = load float, float* %7, align 4
  %157 = fmul float %155, %156
  %158 = load float, float* %19, align 4
  %159 = fadd float %158, %157
  store float %159, float* %19, align 4
  br label %160

160:                                              ; preds = %152, %148
  %161 = load float, float* %7, align 4
  %162 = load float, float* @height, align 4
  %163 = fcmp ogt float %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %160
  %165 = load float, float* %7, align 4
  %166 = load float, float* @height, align 4
  %167 = fsub float %165, %166
  %168 = load float, float* %8, align 4
  %169 = load float, float* @width, align 4
  %170 = fcmp ogt float %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load float, float* @width, align 4
  br label %175

173:                                              ; preds = %164
  %174 = load float, float* %8, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi float [ %172, %171 ], [ %174, %173 ]
  %177 = fmul float %167, %176
  %178 = load float, float* %20, align 4
  %179 = fadd float %178, %177
  store float %179, float* %20, align 4
  br label %180

180:                                              ; preds = %175, %160
  %181 = load float, float* %8, align 4
  %182 = load float, float* @width, align 4
  %183 = fcmp ogt float %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load float, float* %8, align 4
  %186 = load float, float* @width, align 4
  %187 = fsub float %185, %186
  %188 = load float, float* %7, align 4
  %189 = fmul float %187, %188
  %190 = load float, float* %20, align 4
  %191 = fadd float %190, %189
  store float %191, float* %20, align 4
  br label %192

192:                                              ; preds = %184, %180
  %193 = load float, float* %19, align 4
  %194 = load float, float* %20, align 4
  %195 = fcmp ole float %193, %194
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 0, i32 90
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %192, %127
  br label %199

199:                                              ; preds = %198, %79
  br label %202

200:                                              ; preds = %3
  %201 = load i32, i32* @rotation, align 4
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %200, %199
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @fz_rotate(i32 %203)
  %205 = load float, float* %10, align 4
  %206 = load float, float* %11, align 4
  %207 = call i32 @fz_pre_scale(i32 %204, float %205, float %206)
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = bitcast %struct.TYPE_6__* %211 to { i64, i64 }*
  %216 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 4
  %218 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %215, i32 0, i32 1
  %219 = load i64, i64* %218, align 4
  %220 = call i32 @fz_transform_rect(i64 %217, i64 %219, i32 %214)
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @fz_round_rect(i32 %225)
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  ret void
}

declare dso_local { i64, i64 } @fz_bound_page(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @fz_min(float, float) #1

declare dso_local i32 @fz_pre_scale(i32, float, float) #1

declare dso_local i32 @fz_rotate(i32) #1

declare dso_local i32 @fz_transform_rect(i64, i64, i32) #1

declare dso_local i32 @fz_round_rect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
