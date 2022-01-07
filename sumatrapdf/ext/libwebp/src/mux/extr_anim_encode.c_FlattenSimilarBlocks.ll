; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_FlattenSimilarBlocks.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_FlattenSimilarBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_6__*, float)* @FlattenSimilarBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FlattenSimilarBlocks(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2, float %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store float %3, float* %8, align 4
  %29 = load float, float* %8, align 4
  %30 = call i32 @QualityToMaxDiff(float %29)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 8, i32* %13, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 8
  %35 = and i32 %34, -8
  store i32 %35, i32* %14, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = and i32 %42, -8
  store i32 %43, i32* %15, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 8
  %48 = and i32 %47, -8
  store i32 %48, i32* %16, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = and i32 %55, -8
  store i32 %56, i32* %17, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = icmp ne %struct.TYPE_7__* %63, null
  br label %65

65:                                               ; preds = %62, %59, %4
  %66 = phi i1 [ false, %59 ], [ false, %4 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %65
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br label %84

84:                                               ; preds = %76, %65
  %85 = phi i1 [ false, %65 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = call i32 @assert(i32 1)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %243, %84
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %246

94:                                               ; preds = %90
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %239, %94
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %242

100:                                              ; preds = %96
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32* %113, i32** %24, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32* %126, i32** %25, align 8
  store i32 0, i32* %23, align 4
  br label %127

127:                                              ; preds = %189, %100
  %128 = load i32, i32* %23, align 4
  %129 = icmp slt i32 %128, 8
  br i1 %129, label %130, label %192

130:                                              ; preds = %127
  store i32 0, i32* %22, align 4
  br label %131

131:                                              ; preds = %185, %130
  %132 = load i32, i32* %22, align 4
  %133 = icmp slt i32 %132, 8
  br i1 %133, label %134, label %188

134:                                              ; preds = %131
  %135 = load i32*, i32** %24, align 8
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %23, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = add nsw i32 %136, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %135, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %26, align 4
  %146 = load i32, i32* %26, align 4
  %147 = ashr i32 %146, 24
  store i32 %147, i32* %27, align 4
  %148 = load i32, i32* %27, align 4
  %149 = icmp eq i32 %148, 255
  br i1 %149, label %150, label %184

150:                                              ; preds = %134
  %151 = load i32, i32* %26, align 4
  %152 = load i32*, i32** %25, align 8
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* %23, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %154, %157
  %159 = add nsw i32 %153, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %152, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i64 @PixelsAreSimilar(i32 %151, i32 %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %150
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %26, align 4
  %170 = ashr i32 %169, 16
  %171 = and i32 %170, 255
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %26, align 4
  %175 = ashr i32 %174, 8
  %176 = and i32 %175, 255
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %20, align 4
  %179 = load i32, i32* %26, align 4
  %180 = ashr i32 %179, 0
  %181 = and i32 %180, 255
  %182 = load i32, i32* %21, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %21, align 4
  br label %184

184:                                              ; preds = %166, %150, %134
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %22, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %22, align 4
  br label %131

188:                                              ; preds = %131
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %23, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %23, align 4
  br label %127

192:                                              ; preds = %127
  %193 = load i32, i32* %18, align 4
  %194 = icmp eq i32 %193, 64
  br i1 %194, label %195, label %238

195:                                              ; preds = %192
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %18, align 4
  %198 = sdiv i32 %196, %197
  %199 = shl i32 %198, 16
  %200 = or i32 0, %199
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* %18, align 4
  %203 = sdiv i32 %201, %202
  %204 = shl i32 %203, 8
  %205 = or i32 %200, %204
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %18, align 4
  %208 = sdiv i32 %206, %207
  %209 = shl i32 %208, 0
  %210 = or i32 %205, %209
  store i32 %210, i32* %28, align 4
  store i32 0, i32* %23, align 4
  br label %211

211:                                              ; preds = %234, %195
  %212 = load i32, i32* %23, align 4
  %213 = icmp slt i32 %212, 8
  br i1 %213, label %214, label %237

214:                                              ; preds = %211
  store i32 0, i32* %22, align 4
  br label %215

215:                                              ; preds = %230, %214
  %216 = load i32, i32* %22, align 4
  %217 = icmp slt i32 %216, 8
  br i1 %217, label %218, label %233

218:                                              ; preds = %215
  %219 = load i32, i32* %28, align 4
  %220 = load i32*, i32** %25, align 8
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* %23, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 %222, %225
  %227 = add nsw i32 %221, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %220, i64 %228
  store i32 %219, i32* %229, align 4
  br label %230

230:                                              ; preds = %218
  %231 = load i32, i32* %22, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %22, align 4
  br label %215

233:                                              ; preds = %215
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %23, align 4
  br label %211

237:                                              ; preds = %211
  store i32 1, i32* %12, align 4
  br label %238

238:                                              ; preds = %237, %192
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %10, align 4
  %241 = add nsw i32 %240, 8
  store i32 %241, i32* %10, align 4
  br label %96

242:                                              ; preds = %96
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 8
  store i32 %245, i32* %11, align 4
  br label %90

246:                                              ; preds = %90
  %247 = load i32, i32* %12, align 4
  ret i32 %247
}

declare dso_local i32 @QualityToMaxDiff(float) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @PixelsAreSimilar(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
