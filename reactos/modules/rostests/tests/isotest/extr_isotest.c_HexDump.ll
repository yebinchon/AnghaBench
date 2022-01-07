; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/isotest/extr_isotest.c_HexDump.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/isotest/extr_isotest.c_HexDump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [103 x i8] c"%08lx  %02hx %02hx %02hx %02hx %02hx %02hx %02hx %02hx-%02hx %02hx %02hx %02hx %02hx %02hx %02hx %02hx\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"  %c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%08lx \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %02hx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HexDump(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %291, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, -16
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %296

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 6
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 7
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 8
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 9
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 10
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 11
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 12
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 13
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 14
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 15
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %27, i32 %31, i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %59, i32 %63, i32 %67, i32 %71, i32 %75, i32 %79, i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @isprint(i8 zeroext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %12
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  br label %96

95:                                               ; preds = %12
  br label %96

96:                                               ; preds = %95, %90
  %97 = phi i32 [ %94, %90 ], [ 46, %95 ]
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @isprint(i8 zeroext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  br label %109

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108, %103
  %110 = phi i32 [ %107, %103 ], [ 46, %108 ]
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  %113 = load i8, i8* %112, align 1
  %114 = call i64 @isprint(i8 zeroext %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  br label %122

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %116
  %123 = phi i32 [ %120, %116 ], [ 46, %121 ]
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 3
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @isprint(i8 zeroext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  br label %135

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %129
  %136 = phi i32 [ %133, %129 ], [ 46, %134 ]
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  %139 = load i8, i8* %138, align 1
  %140 = call i64 @isprint(i8 zeroext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load i8*, i8** %6, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 4
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  br label %148

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %142
  %149 = phi i32 [ %146, %142 ], [ 46, %147 ]
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 5
  %152 = load i8, i8* %151, align 1
  %153 = call i64 @isprint(i8 zeroext %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 5
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  br label %161

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %155
  %162 = phi i32 [ %159, %155 ], [ 46, %160 ]
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 6
  %165 = load i8, i8* %164, align 1
  %166 = call i64 @isprint(i8 zeroext %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 6
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  br label %174

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173, %168
  %175 = phi i32 [ %172, %168 ], [ 46, %173 ]
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 7
  %178 = load i8, i8* %177, align 1
  %179 = call i64 @isprint(i8 zeroext %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 7
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  br label %187

186:                                              ; preds = %174
  br label %187

187:                                              ; preds = %186, %181
  %188 = phi i32 [ %185, %181 ], [ 46, %186 ]
  %189 = load i8*, i8** %6, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 8
  %191 = load i8, i8* %190, align 1
  %192 = call i64 @isprint(i8 zeroext %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load i8*, i8** %6, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  br label %200

199:                                              ; preds = %187
  br label %200

200:                                              ; preds = %199, %194
  %201 = phi i32 [ %198, %194 ], [ 46, %199 ]
  %202 = load i8*, i8** %6, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 9
  %204 = load i8, i8* %203, align 1
  %205 = call i64 @isprint(i8 zeroext %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %200
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 9
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  br label %213

212:                                              ; preds = %200
  br label %213

213:                                              ; preds = %212, %207
  %214 = phi i32 [ %211, %207 ], [ 46, %212 ]
  %215 = load i8*, i8** %6, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 10
  %217 = load i8, i8* %216, align 1
  %218 = call i64 @isprint(i8 zeroext %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %213
  %221 = load i8*, i8** %6, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 10
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  br label %226

225:                                              ; preds = %213
  br label %226

226:                                              ; preds = %225, %220
  %227 = phi i32 [ %224, %220 ], [ 46, %225 ]
  %228 = load i8*, i8** %6, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 11
  %230 = load i8, i8* %229, align 1
  %231 = call i64 @isprint(i8 zeroext %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %226
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 11
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  br label %239

238:                                              ; preds = %226
  br label %239

239:                                              ; preds = %238, %233
  %240 = phi i32 [ %237, %233 ], [ 46, %238 ]
  %241 = load i8*, i8** %6, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 12
  %243 = load i8, i8* %242, align 1
  %244 = call i64 @isprint(i8 zeroext %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %239
  %247 = load i8*, i8** %6, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 12
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  br label %252

251:                                              ; preds = %239
  br label %252

252:                                              ; preds = %251, %246
  %253 = phi i32 [ %250, %246 ], [ 46, %251 ]
  %254 = load i8*, i8** %6, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 13
  %256 = load i8, i8* %255, align 1
  %257 = call i64 @isprint(i8 zeroext %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %252
  %260 = load i8*, i8** %6, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 13
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  br label %265

264:                                              ; preds = %252
  br label %265

265:                                              ; preds = %264, %259
  %266 = phi i32 [ %263, %259 ], [ 46, %264 ]
  %267 = load i8*, i8** %6, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 14
  %269 = load i8, i8* %268, align 1
  %270 = call i64 @isprint(i8 zeroext %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %265
  %273 = load i8*, i8** %6, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 14
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  br label %278

277:                                              ; preds = %265
  br label %278

278:                                              ; preds = %277, %272
  %279 = phi i32 [ %276, %272 ], [ 46, %277 ]
  %280 = load i8*, i8** %6, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 15
  %282 = load i8, i8* %281, align 1
  %283 = call i64 @isprint(i8 zeroext %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %278
  %286 = load i8*, i8** %6, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 15
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  br label %291

290:                                              ; preds = %278
  br label %291

291:                                              ; preds = %290, %285
  %292 = phi i32 [ %289, %285 ], [ 46, %290 ]
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %110, i32 %123, i32 %136, i32 %149, i32 %162, i32 %175, i32 %188, i32 %201, i32 %214, i32 %227, i32 %240, i32 %253, i32 %266, i32 %279, i32 %292)
  %294 = load i32, i32* %5, align 4
  %295 = add nsw i32 %294, 16
  store i32 %295, i32* %5, align 4
  br label %7

296:                                              ; preds = %7
  %297 = load i8*, i8** %3, align 8
  %298 = ptrtoint i8* %297 to i64
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %298, %300
  %302 = inttoptr i64 %301 to i8*
  store i8* %302, i8** %6, align 8
  %303 = load i32, i32* %5, align 4
  %304 = load i32, i32* %4, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %323

306:                                              ; preds = %296
  %307 = load i32, i32* %5, align 4
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %307)
  br label %309

309:                                              ; preds = %313, %306
  %310 = load i32, i32* %5, align 4
  %311 = load i32, i32* %4, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %322

313:                                              ; preds = %309
  %314 = load i8*, i8** %6, align 8
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %316)
  %318 = load i32, i32* %5, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %5, align 4
  %320 = load i8*, i8** %6, align 8
  %321 = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %321, i8** %6, align 8
  br label %309

322:                                              ; preds = %309
  br label %323

323:                                              ; preds = %322, %296
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
