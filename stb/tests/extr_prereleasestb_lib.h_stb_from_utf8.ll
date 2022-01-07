; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_from_utf8.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_from_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @stb_from_utf8(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %285, %3
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %286

18:                                               ; preds = %14
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %292

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %33, i32* %38, align 4
  br label %285

39:                                               ; preds = %23
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 224
  %44 = icmp eq i32 %43, 192
  br i1 %44, label %45, label %77

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp slt i32 %48, 194
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32* null, i32** %4, align 8
  br label %292

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 31
  %57 = shl i32 %56, 6
  store i32 %57, i32* %9, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 192
  %62 = icmp ne i32 %61, 128
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32* null, i32** %4, align 8
  br label %292

64:                                               ; preds = %51
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %8, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 63
  %71 = add nsw i32 %65, %70
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %71, i32* %76, align 4
  br label %284

77:                                               ; preds = %39
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 240
  %82 = icmp eq i32 %81, 224
  br i1 %82, label %83, label %154

83:                                               ; preds = %77
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %86, 224
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp slt i32 %92, 160
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sgt i32 %98, 191
  br i1 %99, label %100, label %101

100:                                              ; preds = %94, %88
  store i32* null, i32** %4, align 8
  br label %292

101:                                              ; preds = %94, %83
  %102 = load i8*, i8** %8, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 237
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp sgt i32 %110, 159
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32* null, i32** %4, align 8
  br label %292

113:                                              ; preds = %106, %101
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  %116 = load i8, i8* %114, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 15
  %119 = shl i32 %118, 12
  store i32 %119, i32* %9, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 192
  %124 = icmp ne i32 %123, 128
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  store i32* null, i32** %4, align 8
  br label %292

126:                                              ; preds = %113
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %8, align 8
  %129 = load i8, i8* %127, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 63
  %132 = shl i32 %131, 6
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 192
  %139 = icmp ne i32 %138, 128
  br i1 %139, label %140, label %141

140:                                              ; preds = %126
  store i32* null, i32** %4, align 8
  br label %292

141:                                              ; preds = %126
  %142 = load i32, i32* %9, align 4
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %8, align 8
  %145 = load i8, i8* %143, align 1
  %146 = zext i8 %145 to i32
  %147 = and i32 %146, 63
  %148 = add nsw i32 %142, %147
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %148, i32* %153, align 4
  br label %283

154:                                              ; preds = %77
  %155 = load i8*, i8** %8, align 8
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 %157, 248
  %159 = icmp eq i32 %158, 240
  br i1 %159, label %160, label %281

160:                                              ; preds = %154
  %161 = load i8*, i8** %8, align 8
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp sgt i32 %163, 244
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32* null, i32** %4, align 8
  br label %292

166:                                              ; preds = %160
  %167 = load i8*, i8** %8, align 8
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 240
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp slt i32 %175, 144
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp sgt i32 %181, 191
  br i1 %182, label %183, label %184

183:                                              ; preds = %177, %171
  store i32* null, i32** %4, align 8
  br label %292

184:                                              ; preds = %177, %166
  %185 = load i8*, i8** %8, align 8
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %187, 244
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp sgt i32 %193, 143
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  store i32* null, i32** %4, align 8
  br label %292

196:                                              ; preds = %189, %184
  %197 = load i8*, i8** %8, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %8, align 8
  %199 = load i8, i8* %197, align 1
  %200 = zext i8 %199 to i32
  %201 = and i32 %200, 7
  %202 = shl i32 %201, 18
  store i32 %202, i32* %9, align 4
  %203 = load i8*, i8** %8, align 8
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = and i32 %205, 192
  %207 = icmp ne i32 %206, 128
  br i1 %207, label %208, label %209

208:                                              ; preds = %196
  store i32* null, i32** %4, align 8
  br label %292

209:                                              ; preds = %196
  %210 = load i8*, i8** %8, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %8, align 8
  %212 = load i8, i8* %210, align 1
  %213 = zext i8 %212 to i32
  %214 = and i32 %213, 63
  %215 = shl i32 %214, 12
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %9, align 4
  %218 = load i8*, i8** %8, align 8
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = and i32 %220, 192
  %222 = icmp ne i32 %221, 128
  br i1 %222, label %223, label %224

223:                                              ; preds = %209
  store i32* null, i32** %4, align 8
  br label %292

224:                                              ; preds = %209
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %8, align 8
  %227 = load i8, i8* %225, align 1
  %228 = zext i8 %227 to i32
  %229 = and i32 %228, 63
  %230 = shl i32 %229, 6
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %9, align 4
  %233 = load i8*, i8** %8, align 8
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = and i32 %235, 192
  %237 = icmp ne i32 %236, 128
  br i1 %237, label %238, label %239

238:                                              ; preds = %224
  store i32* null, i32** %4, align 8
  br label %292

239:                                              ; preds = %224
  %240 = load i8*, i8** %8, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %8, align 8
  %242 = load i8, i8* %240, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %243, 63
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = and i32 %247, -2048
  %249 = icmp eq i32 %248, 55296
  br i1 %249, label %250, label %251

250:                                              ; preds = %239
  store i32* null, i32** %4, align 8
  br label %292

251:                                              ; preds = %239
  %252 = load i32, i32* %9, align 4
  %253 = icmp sge i32 %252, 65536
  br i1 %253, label %254, label %280

254:                                              ; preds = %251
  %255 = load i32, i32* %9, align 4
  %256 = sub nsw i32 %255, 65536
  store i32 %256, i32* %9, align 4
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, 2
  %259 = load i32, i32* %7, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  store i32* null, i32** %4, align 8
  br label %292

262:                                              ; preds = %254
  %263 = load i32, i32* %9, align 4
  %264 = ashr i32 %263, 10
  %265 = and i32 1023, %264
  %266 = or i32 55296, %265
  %267 = load i32*, i32** %5, align 8
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %10, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  store i32 %266, i32* %271, align 4
  %272 = load i32, i32* %9, align 4
  %273 = and i32 1023, %272
  %274 = or i32 56320, %273
  %275 = load i32*, i32** %5, align 8
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %10, align 4
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  store i32 %274, i32* %279, align 4
  br label %280

280:                                              ; preds = %262, %251
  br label %282

281:                                              ; preds = %154
  store i32* null, i32** %4, align 8
  br label %292

282:                                              ; preds = %280
  br label %283

283:                                              ; preds = %282, %141
  br label %284

284:                                              ; preds = %283, %64
  br label %285

285:                                              ; preds = %284, %29
  br label %14

286:                                              ; preds = %14
  %287 = load i32*, i32** %5, align 8
  %288 = load i32, i32* %10, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 0, i32* %290, align 4
  %291 = load i32*, i32** %5, align 8
  store i32* %291, i32** %4, align 8
  br label %292

292:                                              ; preds = %286, %281, %261, %250, %238, %223, %208, %195, %183, %165, %140, %125, %112, %100, %63, %50, %22
  %293 = load i32*, i32** %4, align 8
  ret i32* %293
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
