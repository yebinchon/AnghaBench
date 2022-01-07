; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_lfnmisc.c_I_LFNCanon.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_lfnmisc.c_I_LFNCanon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@CHAR_NULL = common dso_local global i32 0, align 4
@CHAR_BACKSLASH = common dso_local global i32 0, align 4
@CHAR_SLASH = common dso_local global i32 0, align 4
@CHAR_COLON = common dso_local global i32 0, align 4
@CHAR_DQUOTE = common dso_local global i32 0, align 4
@CHAR_PIPE = common dso_local global i32 0, align 4
@CHAR_GREATER = common dso_local global i32 0, align 4
@CHAR_LESS = common dso_local global i32 0, align 4
@LFNCANON_MASK = common dso_local global i64 0, align 8
@CHAR_STAR = common dso_local global i32 0, align 4
@CHAR_QUESTION = common dso_local global i32 0, align 4
@CHAR_DOT = common dso_local global i32 0, align 4
@CHAR_SPACE = common dso_local global i32 0, align 4
@CCHMAXPATHCOMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @I_LFNCanon(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %7, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %21, i32* %4, align 4
  br label %299

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CHAR_NULL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %28, i32* %4, align 4
  br label %299

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CHAR_BACKSLASH, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CHAR_SLASH, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @isalpha(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CHAR_COLON, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %8, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  %58 = load i32, i32* %56, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %61

61:                                               ; preds = %50, %44
  br label %62

62:                                               ; preds = %61, %39
  br label %69

63:                                               ; preds = %34, %29
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %8, align 8
  %66 = load i32, i32* @CHAR_BACKSLASH, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %69

69:                                               ; preds = %63, %62
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %280, %69
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  %73 = load i32, i32* %71, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 31
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @CHAR_NULL, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %100, label %80

80:                                               ; preds = %76, %70
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @CHAR_DQUOTE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %100, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @CHAR_COLON, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @CHAR_PIPE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @CHAR_GREATER, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @CHAR_LESS, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96, %92, %88, %84, %80, %76
  %101 = load i32, i32* @CHAR_NULL, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %103, i32* %4, align 4
  br label %299

104:                                              ; preds = %96
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @LFNCANON_MASK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @CHAR_STAR, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @CHAR_QUESTION, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112, %108
  %117 = load i32, i32* @CHAR_NULL, align 4
  %118 = load i32*, i32** %7, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %119, i32* %4, align 4
  br label %299

120:                                              ; preds = %112, %104
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @CHAR_SLASH, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @CHAR_BACKSLASH, align 4
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @CHAR_BACKSLASH, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @CHAR_NULL, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %266

134:                                              ; preds = %130, %126
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = icmp ugt i32* %135, %136
  br i1 %137, label %138, label %197

138:                                              ; preds = %134
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 -1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @CHAR_DOT, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %196

144:                                              ; preds = %138
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 -1
  %147 = load i32*, i32** %7, align 8
  %148 = icmp eq i32* %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = load i32*, i32** %9, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 -2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CHAR_BACKSLASH, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %149, %144
  %156 = load i32, i32* %12, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 -1
  store i32* %158, i32** %9, align 8
  store i32 %156, i32* %157, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, i32* %10, align 4
  %163 = add i32 %162, -1
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %161, %155
  br label %280

165:                                              ; preds = %149
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 -2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @CHAR_DOT, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %195

171:                                              ; preds = %165
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 -2
  %174 = load i32*, i32** %7, align 8
  %175 = icmp eq i32* %173, %174
  br i1 %175, label %188, label %176

176:                                              ; preds = %171
  %177 = load i32*, i32** %9, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 -3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @CHAR_BACKSLASH, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %176
  %183 = load i32*, i32** %9, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 -3
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @CHAR_COLON, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %182, %176, %171
  %189 = load i32, i32* %12, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %9, align 8
  store i32 %189, i32* %190, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %280

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194, %165
  br label %196

196:                                              ; preds = %195, %138
  br label %197

197:                                              ; preds = %196, %134
  store i32 0, i32* %11, align 4
  br label %198

198:                                              ; preds = %242, %197
  %199 = load i32*, i32** %9, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = icmp ugt i32* %199, %200
  br i1 %201, label %202, label %230

202:                                              ; preds = %198
  %203 = load i32*, i32** %9, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 -1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @CHAR_DOT, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %214, label %208

208:                                              ; preds = %202
  %209 = load i32*, i32** %9, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 -1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @CHAR_SPACE, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %208, %202
  %215 = load i32*, i32** %9, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 -1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @CHAR_BACKSLASH, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load i32*, i32** %9, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 -1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @CHAR_COLON, align 4
  %225 = icmp ne i32 %223, %224
  br label %226

226:                                              ; preds = %220, %214
  %227 = phi i1 [ false, %214 ], [ %225, %220 ]
  br label %228

228:                                              ; preds = %226, %208
  %229 = phi i1 [ false, %208 ], [ %227, %226 ]
  br label %230

230:                                              ; preds = %228, %198
  %231 = phi i1 [ false, %198 ], [ %229, %228 ]
  br i1 %231, label %232, label %243

232:                                              ; preds = %230
  %233 = load i32*, i32** %9, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 -1
  store i32* %234, i32** %9, align 8
  %235 = load i32, i32* %11, align 4
  %236 = add i32 %235, 1
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %232
  %240 = load i32, i32* %10, align 4
  %241 = add i32 %240, -1
  store i32 %241, i32* %10, align 4
  br label %242

242:                                              ; preds = %239, %232
  br label %198

243:                                              ; preds = %230
  %244 = load i32*, i32** %9, align 8
  %245 = load i32*, i32** %7, align 8
  %246 = icmp eq i32* %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = load i32, i32* @CHAR_NULL, align 4
  %249 = load i32*, i32** %7, align 8
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %250, i32* %4, align 4
  br label %299

251:                                              ; preds = %243
  %252 = load i32*, i32** %9, align 8
  %253 = load i32*, i32** %7, align 8
  %254 = icmp ugt i32* %252, %253
  br i1 %254, label %255, label %265

255:                                              ; preds = %251
  %256 = load i32*, i32** %9, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 -1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @CHAR_BACKSLASH, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  %262 = load i32, i32* @CHAR_NULL, align 4
  %263 = load i32*, i32** %7, align 8
  store i32 %262, i32* %263, align 4
  %264 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %264, i32* %4, align 4
  br label %299

265:                                              ; preds = %255, %251
  br label %266

266:                                              ; preds = %265, %130
  %267 = load i32, i32* %12, align 4
  %268 = load i32*, i32** %9, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %9, align 8
  store i32 %267, i32* %268, align 4
  %270 = load i32, i32* %10, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = load i32, i32* @CCHMAXPATHCOMP, align 4
  %274 = icmp ugt i32 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %266
  %276 = load i32, i32* @CHAR_NULL, align 4
  %277 = load i32*, i32** %7, align 8
  store i32 %276, i32* %277, align 4
  %278 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %278, i32* %4, align 4
  br label %299

279:                                              ; preds = %266
  br label %280

280:                                              ; preds = %279, %188, %164
  %281 = load i32, i32* %12, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %70, label %283

283:                                              ; preds = %280
  %284 = load i32*, i32** %9, align 8
  %285 = load i32*, i32** %7, align 8
  %286 = icmp ne i32* %284, %285
  br i1 %286, label %287, label %298

287:                                              ; preds = %283
  %288 = load i32*, i32** %9, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 -1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @CHAR_BACKSLASH, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %287
  %294 = load i32, i32* @CHAR_NULL, align 4
  %295 = load i32*, i32** %7, align 8
  store i32 %294, i32* %295, align 4
  %296 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %296, i32* %4, align 4
  br label %299

297:                                              ; preds = %287
  br label %298

298:                                              ; preds = %297, %283
  store i32 0, i32* %4, align 4
  br label %299

299:                                              ; preds = %298, %293, %275, %261, %247, %116, %100, %27, %20
  %300 = load i32, i32* %4, align 4
  ret i32 %300
}

declare dso_local i64 @isalpha(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
