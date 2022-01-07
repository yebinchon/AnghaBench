; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_find_emph_char.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_find_emph_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8)* @find_emph_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_emph_char(i8* %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  store i64 1, i64* %8, align 8
  br label %14

14:                                               ; preds = %284, %238, %60, %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %285

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 91
  br label %39

39:                                               ; preds = %32, %23, %19
  %40 = phi i1 [ false, %23 ], [ false, %19 ], [ %38, %32 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %19

44:                                               ; preds = %39
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i64 0, i64* %4, align 8
  br label %286

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 92
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %14

63:                                               ; preds = %52, %49
  %64 = load i8*, i8** %5, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* %7, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %4, align 8
  br label %286

74:                                               ; preds = %63
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 96
  br i1 %80, label %81, label %151

81:                                               ; preds = %74
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %82

82:                                               ; preds = %95, %81
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 96
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi i1 [ false, %82 ], [ %92, %86 ]
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = load i64, i64* %8, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %82

100:                                              ; preds = %93
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp uge i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i64 0, i64* %4, align 8
  br label %286

105:                                              ; preds = %100
  store i64 0, i64* %10, align 8
  br label %106

106:                                              ; preds = %141, %105
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %6, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %9, align 8
  %113 = icmp ult i64 %111, %112
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i1 [ false, %106 ], [ %113, %110 ]
  br i1 %115, label %116, label %144

116:                                              ; preds = %114
  %117 = load i64, i64* %11, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** %5, align 8
  %121 = load i64, i64* %8, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8, i8* %7, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i64, i64* %8, align 8
  store i64 %129, i64* %11, align 8
  br label %130

130:                                              ; preds = %128, %119, %116
  %131 = load i8*, i8** %5, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 96
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i64, i64* %10, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %10, align 8
  br label %141

140:                                              ; preds = %130
  store i64 0, i64* %10, align 8
  br label %141

141:                                              ; preds = %140, %137
  %142 = load i64, i64* %8, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %8, align 8
  br label %106

144:                                              ; preds = %114
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %6, align 8
  %147 = icmp uge i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i64, i64* %11, align 8
  store i64 %149, i64* %4, align 8
  br label %286

150:                                              ; preds = %144
  br label %284

151:                                              ; preds = %74
  %152 = load i8*, i8** %5, align 8
  %153 = load i64, i64* %8, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 91
  br i1 %157, label %158, label %283

158:                                              ; preds = %151
  store i64 0, i64* %12, align 8
  %159 = load i64, i64* %8, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %8, align 8
  br label %161

161:                                              ; preds = %188, %158
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* %6, align 8
  %164 = icmp ult i64 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load i8*, i8** %5, align 8
  %167 = load i64, i64* %8, align 8
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 93
  br label %172

172:                                              ; preds = %165, %161
  %173 = phi i1 [ false, %161 ], [ %171, %165 ]
  br i1 %173, label %174, label %191

174:                                              ; preds = %172
  %175 = load i64, i64* %12, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %174
  %178 = load i8*, i8** %5, align 8
  %179 = load i64, i64* %8, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = load i8, i8* %7, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = load i64, i64* %8, align 8
  store i64 %187, i64* %12, align 8
  br label %188

188:                                              ; preds = %186, %177, %174
  %189 = load i64, i64* %8, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %8, align 8
  br label %161

191:                                              ; preds = %172
  %192 = load i64, i64* %8, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %8, align 8
  br label %194

194:                                              ; preds = %216, %191
  %195 = load i64, i64* %8, align 8
  %196 = load i64, i64* %6, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %194
  %199 = load i8*, i8** %5, align 8
  %200 = load i64, i64* %8, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 32
  br i1 %204, label %212, label %205

205:                                              ; preds = %198
  %206 = load i8*, i8** %5, align 8
  %207 = load i64, i64* %8, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 10
  br label %212

212:                                              ; preds = %205, %198
  %213 = phi i1 [ true, %198 ], [ %211, %205 ]
  br label %214

214:                                              ; preds = %212, %194
  %215 = phi i1 [ false, %194 ], [ %213, %212 ]
  br i1 %215, label %216, label %219

216:                                              ; preds = %214
  %217 = load i64, i64* %8, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %8, align 8
  br label %194

219:                                              ; preds = %214
  %220 = load i64, i64* %8, align 8
  %221 = load i64, i64* %6, align 8
  %222 = icmp uge i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load i64, i64* %12, align 8
  store i64 %224, i64* %4, align 8
  br label %286

225:                                              ; preds = %219
  %226 = load i8*, i8** %5, align 8
  %227 = load i64, i64* %8, align 8
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  switch i32 %230, label %233 [
    i32 91, label %231
    i32 40, label %232
  ]

231:                                              ; preds = %225
  store i8 93, i8* %13, align 1
  br label %239

232:                                              ; preds = %225
  store i8 41, i8* %13, align 1
  br label %239

233:                                              ; preds = %225
  %234 = load i64, i64* %12, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i64, i64* %12, align 8
  store i64 %237, i64* %4, align 8
  br label %286

238:                                              ; preds = %233
  br label %14

239:                                              ; preds = %232, %231
  %240 = load i64, i64* %8, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %8, align 8
  br label %242

242:                                              ; preds = %271, %239
  %243 = load i64, i64* %8, align 8
  %244 = load i64, i64* %6, align 8
  %245 = icmp ult i64 %243, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %242
  %247 = load i8*, i8** %5, align 8
  %248 = load i64, i64* %8, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = load i8, i8* %13, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %251, %253
  br label %255

255:                                              ; preds = %246, %242
  %256 = phi i1 [ false, %242 ], [ %254, %246 ]
  br i1 %256, label %257, label %274

257:                                              ; preds = %255
  %258 = load i64, i64* %12, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %271, label %260

260:                                              ; preds = %257
  %261 = load i8*, i8** %5, align 8
  %262 = load i64, i64* %8, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = load i8, i8* %7, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %260
  %270 = load i64, i64* %8, align 8
  store i64 %270, i64* %12, align 8
  br label %271

271:                                              ; preds = %269, %260, %257
  %272 = load i64, i64* %8, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %8, align 8
  br label %242

274:                                              ; preds = %255
  %275 = load i64, i64* %8, align 8
  %276 = load i64, i64* %6, align 8
  %277 = icmp uge i64 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %274
  %279 = load i64, i64* %12, align 8
  store i64 %279, i64* %4, align 8
  br label %286

280:                                              ; preds = %274
  %281 = load i64, i64* %8, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %8, align 8
  br label %283

283:                                              ; preds = %280, %151
  br label %284

284:                                              ; preds = %283, %150
  br label %14

285:                                              ; preds = %14
  store i64 0, i64* %4, align 8
  br label %286

286:                                              ; preds = %285, %278, %236, %223, %148, %104, %72, %48
  %287 = load i64, i64* %4, align 8
  ret i64 %287
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
