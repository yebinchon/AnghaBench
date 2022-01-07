; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-paint.c_fz_paint_glyph_mask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-paint.c_fz_paint_glyph_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, %struct.TYPE_3__*, i32, i32, i32, i32)* @fz_paint_glyph_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_paint_glyph_mask(i32 %0, i8* %1, i32 %2, %struct.TYPE_3__* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  br label %29

29:                                               ; preds = %250, %8
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %14, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %255

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  store i8* %34, i8** %22, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %16, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %16, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %23, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %250

46:                                               ; preds = %33
  store i32 0, i32* %24, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %23, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %21, align 8
  store i32 0, i32* %20, align 4
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %129, %46
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %133

58:                                               ; preds = %55
  %59 = load i8*, i8** %21, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %21, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  store i32 %62, i32* %25, align 4
  %63 = load i32, i32* %25, align 4
  %64 = and i32 %63, 3
  switch i32 %64, label %100 [
    i32 0, label %65
    i32 1, label %68
    i32 2, label %83
  ]

65:                                               ; preds = %58
  %66 = load i32, i32* %25, align 4
  %67 = ashr i32 %66, 2
  store i32 %67, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %125

68:                                               ; preds = %58
  %69 = load i32, i32* %25, align 4
  %70 = ashr i32 %69, 2
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %20, align 4
  %73 = shl i32 %72, 6
  %74 = add nsw i32 %71, %73
  store i32 %74, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %68
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %19, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %19, align 4
  br label %154

82:                                               ; preds = %68
  br label %125

83:                                               ; preds = %58
  %84 = load i32, i32* %25, align 4
  %85 = and i32 %84, 4
  store i32 %85, i32* %24, align 4
  %86 = load i32, i32* %25, align 4
  %87 = ashr i32 %86, 3
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %20, align 4
  %90 = shl i32 %89, 5
  %91 = add nsw i32 %88, %90
  store i32 %91, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %19, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %19, align 4
  br label %177

99:                                               ; preds = %83
  br label %125

100:                                              ; preds = %58
  %101 = load i32, i32* %25, align 4
  %102 = and i32 %101, 4
  store i32 %102, i32* %24, align 4
  %103 = load i32, i32* %25, align 4
  %104 = ashr i32 %103, 3
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %20, align 4
  %107 = shl i32 %106, 5
  %108 = add nsw i32 %105, %107
  store i32 %108, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = load i32, i32* %17, align 4
  %114 = load i8*, i8** %21, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %21, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %19, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %19, align 4
  br label %204

120:                                              ; preds = %100
  %121 = load i32, i32* %19, align 4
  %122 = load i8*, i8** %21, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %21, align 8
  br label %125

125:                                              ; preds = %120, %99, %82, %65
  %126 = load i32, i32* %24, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 0, i32* %18, align 4
  br label %133

129:                                              ; preds = %125
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %17, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %17, align 4
  br label %55

133:                                              ; preds = %128, %55
  br label %134

134:                                              ; preds = %248, %133
  %135 = load i32, i32* %18, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %249

137:                                              ; preds = %134
  %138 = load i8*, i8** %21, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %21, align 8
  %140 = load i8, i8* %138, align 1
  %141 = zext i8 %140 to i32
  store i32 %141, i32* %26, align 4
  %142 = load i32, i32* %26, align 4
  %143 = and i32 %142, 3
  switch i32 %143, label %195 [
    i32 0, label %144
    i32 1, label %147
    i32 2, label %168
  ]

144:                                              ; preds = %137
  %145 = load i32, i32* %26, align 4
  %146 = ashr i32 %145, 2
  store i32 %146, i32* %20, align 4
  br label %244

147:                                              ; preds = %137
  %148 = load i32, i32* %26, align 4
  %149 = ashr i32 %148, 2
  %150 = add nsw i32 %149, 1
  %151 = load i32, i32* %20, align 4
  %152 = shl i32 %151, 6
  %153 = add nsw i32 %150, %152
  store i32 %153, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %154

154:                                              ; preds = %147, %78
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* %18, align 4
  store i32 %159, i32* %19, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %18, align 4
  %163 = sub nsw i32 %162, %161
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load i8*, i8** %22, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8* %167, i8** %22, align 8
  br label %244

168:                                              ; preds = %137
  %169 = load i32, i32* %26, align 4
  %170 = and i32 %169, 4
  store i32 %170, i32* %24, align 4
  %171 = load i32, i32* %26, align 4
  %172 = ashr i32 %171, 3
  %173 = add nsw i32 %172, 1
  %174 = load i32, i32* %20, align 4
  %175 = shl i32 %174, 5
  %176 = add nsw i32 %173, %175
  store i32 %176, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %177

177:                                              ; preds = %168, %95
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %18, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* %18, align 4
  store i32 %182, i32* %19, align 4
  br label %183

183:                                              ; preds = %181, %177
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %18, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %18, align 4
  br label %187

187:                                              ; preds = %190, %183
  %188 = load i8*, i8** %22, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %22, align 8
  store i8 -1, i8* %188, align 1
  br label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %19, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %19, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %187, label %194

194:                                              ; preds = %190
  br label %244

195:                                              ; preds = %137
  %196 = load i32, i32* %26, align 4
  %197 = and i32 %196, 4
  store i32 %197, i32* %24, align 4
  %198 = load i32, i32* %26, align 4
  %199 = ashr i32 %198, 3
  %200 = add nsw i32 %199, 1
  %201 = load i32, i32* %20, align 4
  %202 = shl i32 %201, 5
  %203 = add nsw i32 %200, %202
  store i32 %203, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %204

204:                                              ; preds = %195, %112
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i32, i32* %18, align 4
  store i32 %209, i32* %19, align 4
  br label %210

210:                                              ; preds = %208, %204
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %18, align 4
  %213 = sub nsw i32 %212, %211
  store i32 %213, i32* %18, align 4
  br label %214

214:                                              ; preds = %239, %210
  %215 = load i8*, i8** %22, align 8
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  store i32 %217, i32* %27, align 4
  %218 = load i8*, i8** %21, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %21, align 8
  %220 = load i8, i8* %218, align 1
  %221 = zext i8 %220 to i32
  store i32 %221, i32* %28, align 4
  %222 = load i32, i32* %27, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %214
  %225 = load i32, i32* %28, align 4
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %22, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %22, align 8
  store i8 %226, i8* %227, align 1
  br label %238

229:                                              ; preds = %214
  %230 = load i32, i32* %28, align 4
  %231 = call i32 @FZ_EXPAND(i32 %230)
  store i32 %231, i32* %28, align 4
  %232 = load i32, i32* %27, align 4
  %233 = load i32, i32* %28, align 4
  %234 = call zeroext i8 @FZ_BLEND(i32 255, i32 %232, i32 %233)
  %235 = load i8*, i8** %22, align 8
  store i8 %234, i8* %235, align 1
  %236 = load i8*, i8** %22, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %22, align 8
  br label %238

238:                                              ; preds = %229, %224
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %19, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %19, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %214, label %243

243:                                              ; preds = %239
  br label %244

244:                                              ; preds = %243, %194, %160, %144
  %245 = load i32, i32* %24, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  br label %249

248:                                              ; preds = %244
  br label %134

249:                                              ; preds = %247, %134
  br label %250

250:                                              ; preds = %249, %33
  %251 = load i32, i32* %9, align 4
  %252 = load i8*, i8** %10, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8* %254, i8** %10, align 8
  br label %29

255:                                              ; preds = %29
  ret void
}

declare dso_local i32 @FZ_EXPAND(i32) #1

declare dso_local zeroext i8 @FZ_BLEND(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
