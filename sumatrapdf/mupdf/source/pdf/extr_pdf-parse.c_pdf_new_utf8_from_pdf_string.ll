; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_pdf_new_utf8_from_pdf_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-parse.c_pdf_new_utf8_from_pdf_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fz_unicode_from_pdf_doc_encoding = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pdf_new_utf8_from_pdf_string(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %7, align 8
  store i64 0, i64* %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp uge i64 %15, 2
  br i1 %16, label %17, label %100

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 254
  br i1 %22, label %23, label %100

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %29, label %100

29:                                               ; preds = %23
  store i64 2, i64* %12, align 8
  br label %30

30:                                               ; preds = %60, %29
  %31 = load i64, i64* %12, align 8
  %32 = add i64 %31, 2
  %33 = load i64, i64* %6, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @skip_language_code_utf16be(i8* %36, i64 %37, i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %12, align 8
  br label %60

46:                                               ; preds = %35
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = call i64 @rune_from_utf16be(i32* %11, i8* %49, i8* %52)
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @fz_runelen(i32 %56)
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %46, %42
  br label %30

61:                                               ; preds = %30
  %62 = load i32*, i32** %4, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  %65 = call i8* @fz_malloc(i32* %62, i64 %64)
  store i8* %65, i8** %9, align 8
  store i8* %65, i8** %8, align 8
  store i64 2, i64* %12, align 8
  br label %66

66:                                               ; preds = %98, %61
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 2
  %69 = load i64, i64* %6, align 8
  %70 = icmp ule i64 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %66
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @skip_language_code_utf16be(i8* %72, i64 %73, i64 %74)
  store i64 %75, i64* %13, align 8
  %76 = load i64, i64* %13, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %12, align 8
  br label %98

82:                                               ; preds = %71
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = call i64 @rune_from_utf16be(i32* %11, i8* %85, i8* %88)
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %12, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @fz_runetochar(i8* %92, i32 %93)
  %95 = load i8*, i8** %8, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %8, align 8
  br label %98

98:                                               ; preds = %82, %78
  br label %66

99:                                               ; preds = %66
  br label %309

100:                                              ; preds = %23, %17, %3
  %101 = load i64, i64* %6, align 8
  %102 = icmp uge i64 %101, 2
  br i1 %102, label %103, label %186

103:                                              ; preds = %100
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 255
  br i1 %108, label %109, label %186

109:                                              ; preds = %103
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 254
  br i1 %114, label %115, label %186

115:                                              ; preds = %109
  store i64 2, i64* %12, align 8
  br label %116

116:                                              ; preds = %146, %115
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 2
  %119 = load i64, i64* %6, align 8
  %120 = icmp ule i64 %118, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %116
  %122 = load i8*, i8** %7, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i64 @skip_language_code_utf16le(i8* %122, i64 %123, i64 %124)
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %13, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %12, align 8
  br label %146

132:                                              ; preds = %121
  %133 = load i8*, i8** %7, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8*, i8** %7, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = call i64 @rune_from_utf16le(i32* %11, i8* %135, i8* %138)
  %140 = load i64, i64* %12, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %12, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i64 @fz_runelen(i32 %142)
  %144 = load i64, i64* %10, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %10, align 8
  br label %146

146:                                              ; preds = %132, %128
  br label %116

147:                                              ; preds = %116
  %148 = load i32*, i32** %4, align 8
  %149 = load i64, i64* %10, align 8
  %150 = add i64 %149, 1
  %151 = call i8* @fz_malloc(i32* %148, i64 %150)
  store i8* %151, i8** %9, align 8
  store i8* %151, i8** %8, align 8
  store i64 2, i64* %12, align 8
  br label %152

152:                                              ; preds = %184, %147
  %153 = load i64, i64* %12, align 8
  %154 = add i64 %153, 2
  %155 = load i64, i64* %6, align 8
  %156 = icmp ule i64 %154, %155
  br i1 %156, label %157, label %185

157:                                              ; preds = %152
  %158 = load i8*, i8** %7, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* %12, align 8
  %161 = call i64 @skip_language_code_utf16le(i8* %158, i64 %159, i64 %160)
  store i64 %161, i64* %13, align 8
  %162 = load i64, i64* %13, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* %12, align 8
  %167 = add i64 %166, %165
  store i64 %167, i64* %12, align 8
  br label %184

168:                                              ; preds = %157
  %169 = load i8*, i8** %7, align 8
  %170 = load i64, i64* %12, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load i8*, i8** %7, align 8
  %173 = load i64, i64* %6, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  %175 = call i64 @rune_from_utf16le(i32* %11, i8* %171, i8* %174)
  %176 = load i64, i64* %12, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %12, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @fz_runetochar(i8* %178, i32 %179)
  %181 = load i8*, i8** %8, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %183, i8** %8, align 8
  br label %184

184:                                              ; preds = %168, %164
  br label %152

185:                                              ; preds = %152
  br label %308

186:                                              ; preds = %109, %103, %100
  %187 = load i64, i64* %6, align 8
  %188 = icmp uge i64 %187, 3
  br i1 %188, label %189, label %259

189:                                              ; preds = %186
  %190 = load i8*, i8** %7, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 239
  br i1 %194, label %195, label %259

195:                                              ; preds = %189
  %196 = load i8*, i8** %7, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp eq i32 %199, 187
  br i1 %200, label %201, label %259

201:                                              ; preds = %195
  %202 = load i8*, i8** %7, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 2
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 191
  br i1 %206, label %207, label %259

207:                                              ; preds = %201
  store i64 3, i64* %12, align 8
  br label %208

208:                                              ; preds = %228, %207
  %209 = load i64, i64* %12, align 8
  %210 = load i64, i64* %6, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %229

212:                                              ; preds = %208
  %213 = load i8*, i8** %7, align 8
  %214 = load i64, i64* %6, align 8
  %215 = load i64, i64* %12, align 8
  %216 = call i64 @skip_language_code_utf8(i8* %213, i64 %214, i64 %215)
  store i64 %216, i64* %13, align 8
  %217 = load i64, i64* %13, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %212
  %220 = load i64, i64* %13, align 8
  %221 = load i64, i64* %12, align 8
  %222 = add i64 %221, %220
  store i64 %222, i64* %12, align 8
  br label %228

223:                                              ; preds = %212
  %224 = load i64, i64* %12, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %12, align 8
  %226 = load i64, i64* %10, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %10, align 8
  br label %228

228:                                              ; preds = %223, %219
  br label %208

229:                                              ; preds = %208
  %230 = load i32*, i32** %4, align 8
  %231 = load i64, i64* %10, align 8
  %232 = add i64 %231, 1
  %233 = call i8* @fz_malloc(i32* %230, i64 %232)
  store i8* %233, i8** %9, align 8
  store i8* %233, i8** %8, align 8
  store i64 3, i64* %12, align 8
  br label %234

234:                                              ; preds = %257, %229
  %235 = load i64, i64* %12, align 8
  %236 = load i64, i64* %6, align 8
  %237 = icmp ult i64 %235, %236
  br i1 %237, label %238, label %258

238:                                              ; preds = %234
  %239 = load i8*, i8** %7, align 8
  %240 = load i64, i64* %6, align 8
  %241 = load i64, i64* %12, align 8
  %242 = call i64 @skip_language_code_utf8(i8* %239, i64 %240, i64 %241)
  store i64 %242, i64* %13, align 8
  %243 = load i64, i64* %13, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load i64, i64* %13, align 8
  %247 = load i64, i64* %12, align 8
  %248 = add i64 %247, %246
  store i64 %248, i64* %12, align 8
  br label %257

249:                                              ; preds = %238
  %250 = load i8*, i8** %7, align 8
  %251 = load i64, i64* %12, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %12, align 8
  %253 = getelementptr inbounds i8, i8* %250, i64 %251
  %254 = load i8, i8* %253, align 1
  %255 = load i8*, i8** %8, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %8, align 8
  store i8 %254, i8* %255, align 1
  br label %257

257:                                              ; preds = %249, %245
  br label %234

258:                                              ; preds = %234
  br label %307

259:                                              ; preds = %201, %195, %189, %186
  store i64 0, i64* %12, align 8
  br label %260

260:                                              ; preds = %276, %259
  %261 = load i64, i64* %12, align 8
  %262 = load i64, i64* %6, align 8
  %263 = icmp ult i64 %261, %262
  br i1 %263, label %264, label %279

264:                                              ; preds = %260
  %265 = load i32*, i32** @fz_unicode_from_pdf_doc_encoding, align 8
  %266 = load i8*, i8** %7, align 8
  %267 = load i64, i64* %12, align 8
  %268 = getelementptr inbounds i8, i8* %266, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i64
  %271 = getelementptr inbounds i32, i32* %265, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i64 @fz_runelen(i32 %272)
  %274 = load i64, i64* %10, align 8
  %275 = add i64 %274, %273
  store i64 %275, i64* %10, align 8
  br label %276

276:                                              ; preds = %264
  %277 = load i64, i64* %12, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %12, align 8
  br label %260

279:                                              ; preds = %260
  %280 = load i32*, i32** %4, align 8
  %281 = load i64, i64* %10, align 8
  %282 = add i64 %281, 1
  %283 = call i8* @fz_malloc(i32* %280, i64 %282)
  store i8* %283, i8** %9, align 8
  store i8* %283, i8** %8, align 8
  store i64 0, i64* %12, align 8
  br label %284

284:                                              ; preds = %303, %279
  %285 = load i64, i64* %12, align 8
  %286 = load i64, i64* %6, align 8
  %287 = icmp ult i64 %285, %286
  br i1 %287, label %288, label %306

288:                                              ; preds = %284
  %289 = load i32*, i32** @fz_unicode_from_pdf_doc_encoding, align 8
  %290 = load i8*, i8** %7, align 8
  %291 = load i64, i64* %12, align 8
  %292 = getelementptr inbounds i8, i8* %290, i64 %291
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds i32, i32* %289, i64 %294
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* %11, align 4
  %297 = load i8*, i8** %8, align 8
  %298 = load i32, i32* %11, align 4
  %299 = call i32 @fz_runetochar(i8* %297, i32 %298)
  %300 = load i8*, i8** %8, align 8
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  store i8* %302, i8** %8, align 8
  br label %303

303:                                              ; preds = %288
  %304 = load i64, i64* %12, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %12, align 8
  br label %284

306:                                              ; preds = %284
  br label %307

307:                                              ; preds = %306, %258
  br label %308

308:                                              ; preds = %307, %185
  br label %309

309:                                              ; preds = %308, %99
  %310 = load i8*, i8** %8, align 8
  store i8 0, i8* %310, align 1
  %311 = load i8*, i8** %9, align 8
  ret i8* %311
}

declare dso_local i64 @skip_language_code_utf16be(i8*, i64, i64) #1

declare dso_local i64 @rune_from_utf16be(i32*, i8*, i8*) #1

declare dso_local i64 @fz_runelen(i32) #1

declare dso_local i8* @fz_malloc(i32*, i64) #1

declare dso_local i32 @fz_runetochar(i8*, i32) #1

declare dso_local i64 @skip_language_code_utf16le(i8*, i64, i64) #1

declare dso_local i64 @rune_from_utf16le(i32*, i8*, i8*) #1

declare dso_local i64 @skip_language_code_utf8(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
