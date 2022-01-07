; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-scale-simple.c_add_weight.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-scale-simple.c_add_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i64, i64 }
%struct.TYPE_7__ = type { float (%struct.TYPE_7__*, float)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, %struct.TYPE_7__*, float, float, float, i32, float)* @add_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_weight(%struct.TYPE_6__* %0, i32 %1, i32 %2, %struct.TYPE_7__* %3, float %4, float %5, float %6, i32 %7, float %8) #0 {
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %13, align 8
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store i32 %7, i32* %17, align 4
  store float %8, float* %18, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sitofp i32 %26 to float
  %28 = load float, float* %14, align 4
  %29 = fsub float %27, %28
  %30 = fadd float %29, 5.000000e-01
  %31 = load i32, i32* %12, align 4
  %32 = sitofp i32 %31 to float
  %33 = fadd float %32, 5.000000e-01
  %34 = load float, float* %18, align 4
  %35 = fmul float %33, %34
  %36 = load i32, i32* %17, align 4
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %35, %37
  %39 = fsub float %30, %38
  store float %39, float* %19, align 4
  %40 = load float, float* %16, align 4
  %41 = load float, float* %19, align 4
  %42 = fmul float %41, %40
  store float %42, float* %19, align 4
  %43 = load float, float* %19, align 4
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %45, label %48

45:                                               ; preds = %9
  %46 = load float, float* %19, align 4
  %47 = fneg float %46
  store float %47, float* %19, align 4
  br label %48

48:                                               ; preds = %45, %9
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load float (%struct.TYPE_7__*, float)*, float (%struct.TYPE_7__*, float)** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %53 = load float, float* %19, align 4
  %54 = call float %51(%struct.TYPE_7__* %52, float %53)
  %55 = load float, float* %15, align 4
  %56 = fmul float %54, %55
  store float %56, float* %20, align 4
  %57 = load float, float* %20, align 4
  %58 = fmul float 2.560000e+02, %57
  %59 = fadd float %58, 5.000000e-01
  %60 = fptosi float %59 to i32
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %48
  br label %273

68:                                               ; preds = %63
  %69 = load i32, i32* %24, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load float, float* %20, align 4
  %78 = fcmp ogt float %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %24, align 4
  br label %81

80:                                               ; preds = %76, %71
  br label %273

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %81, %68
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %82
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %23, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %23, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %94, %82
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %23, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %23, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %23, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %21, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %23, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %23, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %22, align 4
  br label %142

142:                                              ; preds = %173, %118
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %21, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %200

146:                                              ; preds = %142
  %147 = load i32, i32* %22, align 4
  store i32 %147, i32* %25, align 4
  br label %148

148:                                              ; preds = %170, %146
  %149 = load i32, i32* %25, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %148
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %25, align 4
  %157 = add nsw i32 %155, %156
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %154, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %23, align 4
  %166 = load i32, i32* %25, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  store i32 %161, i32* %169, align 4
  br label %170

170:                                              ; preds = %151
  %171 = load i32, i32* %25, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %25, align 4
  br label %148

173:                                              ; preds = %148
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %23, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 0, i32* %179, align 4
  %180 = load i32, i32* %21, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %21, align 4
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %22, align 4
  %184 = load i32, i32* %21, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %23, align 4
  %189 = sub nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %184, i32* %191, align 4
  %192 = load i32, i32* %22, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %23, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %192, i32* %199, align 4
  br label %142

200:                                              ; preds = %142
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %21, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load i32, i32* %22, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %259

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %214, %206
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* %21, align 4
  %210 = sub nsw i32 %208, %209
  %211 = load i32, i32* %22, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %22, align 4
  %213 = icmp sge i32 %210, %212
  br i1 %213, label %214, label %224

214:                                              ; preds = %207
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %23, align 4
  %219 = load i32, i32* %22, align 4
  %220 = add nsw i32 %218, %219
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %217, i64 %222
  store i32 0, i32* %223, align 4
  br label %207

224:                                              ; preds = %207
  %225 = load i32, i32* %22, align 4
  %226 = sub nsw i32 %225, 1
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* %21, align 4
  %229 = sub nsw i32 %227, %228
  %230 = icmp eq i32 %226, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  %233 = load i32, i32* %24, align 4
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %23, align 4
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %237, %238
  %240 = load i32, i32* %21, align 4
  %241 = sub nsw i32 %239, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %236, i64 %242
  store i32 %233, i32* %243, align 4
  %244 = load i32, i32* %22, align 4
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %23, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 %244, i32* %251, align 4
  %252 = load i32, i32* %22, align 4
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp sle i32 %252, %255
  %257 = zext i1 %256 to i32
  %258 = call i32 @assert(i32 %257)
  br label %273

259:                                              ; preds = %200
  %260 = load i32, i32* %24, align 4
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %23, align 4
  %265 = load i32, i32* %12, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* %21, align 4
  %268 = sub nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %263, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, %260
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %67, %80, %259, %224
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
