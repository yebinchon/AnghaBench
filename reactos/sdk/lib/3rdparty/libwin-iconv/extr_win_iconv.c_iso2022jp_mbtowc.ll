; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_iso2022jp_mbtowc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv.c_iso2022jp_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@iso2022jp_esc = common dso_local global %struct.TYPE_5__* null, align 8
@MB_CHAR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ISO2022_SI = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@iso2022_SO_seq = common dso_local global i32* null, align 8
@ISO2022_SO = common dso_local global i32 0, align 4
@iso2022_SI_seq = common dso_local global i32* null, align 8
@ISO2022JP_CS_ASCII = common dso_local global i32 0, align 4
@ISO2022JP_CS_JISX0201_KANA = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32*)* @iso2022jp_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022jp_mbtowc(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @iso2022jp_esc, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %12, align 8
  %25 = load i32, i32* @MB_CHAR_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  store i32 0, i32* %17, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 27
  br i1 %32, label %33, label %101

33:                                               ; preds = %5
  store i32 0, i32* %22, align 4
  br label %34

34:                                               ; preds = %95, %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = load i32, i32* %22, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %98

42:                                               ; preds = %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %44 = load i32, i32* %22, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load i32*, i32** %8, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = load i32, i32* %22, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @strncmp(i8* %54, i32* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @seterror(i32 %65)
  store i32 %66, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

67:                                               ; preds = %52
  br label %94

68:                                               ; preds = %42
  %69 = load i32*, i32** %8, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %19, align 4
  %78 = call i64 @strncmp(i8* %70, i32* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %68
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %82 = load i32, i32* %22, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ISO2022_SI, align 4
  %88 = call i64 @ISO2022_MODE(i32 %86, i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32*, i32** %11, align 8
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %22, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %22, align 4
  br label %34

98:                                               ; preds = %34
  %99 = load i32, i32* @EILSEQ, align 4
  %100 = call i32 @seterror(i32 %99)
  store i32 %100, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

101:                                              ; preds = %5
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** @iso2022_SO_seq, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %101
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @ISO2022_MODE_CS(i64 %112)
  %114 = load i32, i32* @ISO2022_SO, align 4
  %115 = call i64 @ISO2022_MODE(i32 %113, i32 %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load i32*, i32** %11, align 8
  store i32 0, i32* %118, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

119:                                              ; preds = %101
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** @iso2022_SI_seq, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %119
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @ISO2022_MODE_CS(i64 %130)
  %132 = load i32, i32* @ISO2022_SI, align 4
  %133 = call i64 @ISO2022_MODE(i32 %131, i32 %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load i32*, i32** %11, align 8
  store i32 0, i32* %136, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

137:                                              ; preds = %119
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @ISO2022_MODE_CS(i64 %142)
  store i32 %143, i32* %20, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @ISO2022_MODE_SHIFT(i64 %146)
  store i32 %147, i32* %21, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %150, 32
  br i1 %151, label %152, label %155

152:                                              ; preds = %139
  %153 = load i32, i32* @ISO2022JP_CS_ASCII, align 4
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* @ISO2022_SI, align 4
  store i32 %154, i32* %21, align 4
  br label %155

155:                                              ; preds = %152, %139
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %157 = load i32, i32* %20, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %155
  %166 = load i32, i32* @EINVAL, align 4
  %167 = call i32 @seterror(i32 %166)
  store i32 %167, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

168:                                              ; preds = %155
  store i32 0, i32* %22, align 4
  br label %169

169:                                              ; preds = %184, %168
  %170 = load i32, i32* %22, align 4
  %171 = load i32, i32* %18, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %169
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %22, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %178, 128
  br i1 %179, label %183, label %180

180:                                              ; preds = %173
  %181 = load i32, i32* @EILSEQ, align 4
  %182 = call i32 @seterror(i32 %181)
  store i32 %182, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %22, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %22, align 4
  br label %169

187:                                              ; preds = %169
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %189 = load i32, i32* %20, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %19, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %19, align 4
  %201 = call i32 @memcpy(i8* %28, i32* %199, i32 %200)
  %202 = load i32, i32* %21, align 4
  %203 = load i32, i32* @ISO2022_SO, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %187
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %28, i64 %207
  %209 = load i32*, i32** @iso2022_SO_seq, align 8
  %210 = call i32 @memcpy(i8* %208, i32* %209, i32 1)
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %19, align 4
  br label %213

213:                                              ; preds = %205, %187
  %214 = load i32, i32* %19, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %28, i64 %215
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* %18, align 4
  %219 = call i32 @memcpy(i8* %216, i32* %217, i32 %218)
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = icmp eq i32 %222, 50220
  br i1 %223, label %234, label %224

224:                                              ; preds = %213
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 50221
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 50222
  br i1 %233, label %234, label %257

234:                                              ; preds = %229, %224, %213
  %235 = load i32, i32* %21, align 4
  %236 = load i32, i32* @ISO2022_SO, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %257

238:                                              ; preds = %234
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %240 = load i64, i64* @ISO2022JP_CS_JISX0201_KANA, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  store i32 %243, i32* %19, align 4
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %245 = load i64, i64* @ISO2022JP_CS_JISX0201_KANA, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %19, align 4
  %250 = call i32 @memcpy(i8* %28, i32* %248, i32 %249)
  %251 = load i32, i32* %19, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %28, i64 %252
  %254 = load i32*, i32** %8, align 8
  %255 = load i32, i32* %18, align 4
  %256 = call i32 @memcpy(i8* %253, i32* %254, i32 %255)
  br label %257

257:                                              ; preds = %238, %234, %229
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %19, align 4
  %260 = add nsw i32 %258, %259
  store i32 %260, i32* %15, align 4
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32*, i32** %10, align 8
  %265 = load i32*, i32** %11, align 8
  %266 = call i64 @ConvertINetMultiByteToUnicode(i32* %17, i32 %263, i8* %28, i32* %15, i32* %264, i32* %265)
  store i64 %266, i64* %16, align 8
  %267 = load i64, i64* %16, align 8
  %268 = load i64, i64* @S_OK, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %276, label %270

270:                                              ; preds = %257
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* %19, align 4
  %274 = add nsw i32 %272, %273
  %275 = icmp ne i32 %271, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %270, %257
  %277 = load i32, i32* @EILSEQ, align 4
  %278 = call i32 @seterror(i32 %277)
  store i32 %278, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

279:                                              ; preds = %270
  %280 = load i32*, i32** %10, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %8, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %282, %285
  br i1 %286, label %287, label %298

287:                                              ; preds = %279
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* @ISO2022JP_CS_ASCII, align 4
  %292 = load i32, i32* @ISO2022_SI, align 4
  %293 = call i64 @ISO2022_MODE(i32 %291, i32 %292)
  %294 = icmp ne i64 %290, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %287
  %296 = load i32, i32* @EILSEQ, align 4
  %297 = call i32 @seterror(i32 %296)
  store i32 %297, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

298:                                              ; preds = %287, %279
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i32, i32* %20, align 4
  %303 = load i32, i32* %21, align 4
  %304 = call i64 @ISO2022_MODE(i32 %302, i32 %303)
  %305 = icmp ne i64 %301, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %298
  %307 = load i32, i32* %20, align 4
  %308 = load i32, i32* %21, align 4
  %309 = call i64 @ISO2022_MODE(i32 %307, i32 %308)
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  br label %312

312:                                              ; preds = %306, %298
  %313 = load i32, i32* %18, align 4
  store i32 %313, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %314

314:                                              ; preds = %312, %295, %276, %180, %165, %127, %109, %98, %80, %64
  %315 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %315)
  %316 = load i32, i32* %6, align 4
  ret i32 %316
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i32*, i32) #2

declare dso_local i32 @seterror(i32) #2

declare dso_local i64 @ISO2022_MODE(i32, i32) #2

declare dso_local i32 @ISO2022_MODE_CS(i64) #2

declare dso_local i32 @ISO2022_MODE_SHIFT(i64) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i64 @ConvertINetMultiByteToUnicode(i32*, i32, i8*, i32*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
