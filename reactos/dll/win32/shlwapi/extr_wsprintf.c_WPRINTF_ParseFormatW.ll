; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_wsprintf.c_WPRINTF_ParseFormatW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shlwapi/extr_wsprintf.c_WPRINTF_ParseFormatW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8* }

@WPRINTF_LEFTALIGN = common dso_local global i32 0, align 4
@WPRINTF_PREFIX_HEX = common dso_local global i32 0, align 4
@WPRINTF_ZEROPAD = common dso_local global i32 0, align 4
@WPRINTF_LONG = common dso_local global i32 0, align 4
@WPRINTF_SHORT = common dso_local global i32 0, align 4
@WPRINTF_WIDE = common dso_local global i32 0, align 4
@WPRINTF_I64 = common dso_local global i32 0, align 4
@WPRINTF_INTPTR = common dso_local global i32 0, align 4
@WPR_CHAR = common dso_local global i8* null, align 8
@WPR_WCHAR = common dso_local global i8* null, align 8
@WPR_SIGNED = common dso_local global i8* null, align 8
@WPR_STRING = common dso_local global i8* null, align 8
@WPR_WSTRING = common dso_local global i8* null, align 8
@WPR_UNSIGNED = common dso_local global i8* null, align 8
@WPRINTF_UPPER_HEX = common dso_local global i32 0, align 4
@WPR_HEXA = common dso_local global i8* null, align 8
@WPR_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_3__*)* @WPRINTF_ParseFormatW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WPRINTF_ParseFormatW(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 45
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @WPRINTF_LEFTALIGN, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %17, %2
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @WPRINTF_PREFIX_HEX, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 48
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* @WPRINTF_ZEROPAD, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %43, %38
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i8*, i8** %5, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sge i32 %55, 48
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 57
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i1 [ false, %52 ], [ %61, %57 ]
  br i1 %63, label %64, label %78

64:                                               ; preds = %62
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 10
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %68, %71
  %73 = sub nsw i32 %72, 48
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 8
  br label %52

78:                                               ; preds = %62
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 46
  br i1 %82, label %83, label %113

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  br label %86

86:                                               ; preds = %98, %83
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sge i32 %89, 48
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sle i32 %94, 57
  br label %96

96:                                               ; preds = %91, %86
  %97 = phi i1 [ false, %86 ], [ %95, %91 ]
  br i1 %97, label %98, label %112

98:                                               ; preds = %96
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %101, 10
  %103 = load i8*, i8** %5, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = add nsw i32 %102, %105
  %107 = sub nsw i32 %106, 48
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %5, align 8
  br label %86

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %112, %78
  %114 = load i8*, i8** %5, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 108
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load i32, i32* @WPRINTF_LONG, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %5, align 8
  br label %205

126:                                              ; preds = %113
  %127 = load i8*, i8** %5, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 104
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load i32, i32* @WPRINTF_SHORT, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %5, align 8
  br label %204

139:                                              ; preds = %126
  %140 = load i8*, i8** %5, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 119
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load i32, i32* @WPRINTF_WIDE, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  br label %203

152:                                              ; preds = %139
  %153 = load i8*, i8** %5, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 73
  br i1 %156, label %157, label %202

157:                                              ; preds = %152
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 54
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 2
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 52
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load i32, i32* @WPRINTF_I64, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 3
  store i8* %176, i8** %5, align 8
  br label %201

177:                                              ; preds = %163, %157
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 51
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load i8*, i8** %5, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 2
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 50
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i8*, i8** %5, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 3
  store i8* %191, i8** %5, align 8
  br label %200

192:                                              ; preds = %183, %177
  %193 = load i32, i32* @WPRINTF_INTPTR, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %5, align 8
  br label %200

200:                                              ; preds = %192, %189
  br label %201

201:                                              ; preds = %200, %169
  br label %202

202:                                              ; preds = %201, %152
  br label %203

203:                                              ; preds = %202, %144
  br label %204

204:                                              ; preds = %203, %131
  br label %205

205:                                              ; preds = %204, %118
  %206 = load i8*, i8** %5, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  switch i32 %208, label %306 [
    i32 99, label %209
    i32 67, label %224
    i32 100, label %239
    i32 105, label %239
    i32 115, label %243
    i32 83, label %265
    i32 117, label %282
    i32 112, label %286
    i32 88, label %296
    i32 120, label %302
  ]

209:                                              ; preds = %205
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @WPRINTF_SHORT, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = load i8*, i8** @WPR_CHAR, align 8
  br label %220

218:                                              ; preds = %209
  %219 = load i8*, i8** @WPR_WCHAR, align 8
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i8* [ %217, %216 ], [ %219, %218 ]
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 3
  store i8* %221, i8** %223, align 8
  br label %312

224:                                              ; preds = %205
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @WPRINTF_LONG, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %224
  %232 = load i8*, i8** @WPR_WCHAR, align 8
  br label %235

233:                                              ; preds = %224
  %234 = load i8*, i8** @WPR_CHAR, align 8
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi i8* [ %232, %231 ], [ %234, %233 ]
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 3
  store i8* %236, i8** %238, align 8
  br label %312

239:                                              ; preds = %205, %205
  %240 = load i8*, i8** @WPR_SIGNED, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 3
  store i8* %240, i8** %242, align 8
  br label %312

243:                                              ; preds = %205
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @WPRINTF_SHORT, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %243
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @WPRINTF_WIDE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %250
  %258 = load i8*, i8** @WPR_STRING, align 8
  br label %261

259:                                              ; preds = %250, %243
  %260 = load i8*, i8** @WPR_WSTRING, align 8
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i8* [ %258, %257 ], [ %260, %259 ]
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 3
  store i8* %262, i8** %264, align 8
  br label %312

265:                                              ; preds = %205
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @WPRINTF_LONG, align 4
  %270 = load i32, i32* @WPRINTF_WIDE, align 4
  %271 = or i32 %269, %270
  %272 = and i32 %268, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %265
  %275 = load i8*, i8** @WPR_WSTRING, align 8
  br label %278

276:                                              ; preds = %265
  %277 = load i8*, i8** @WPR_STRING, align 8
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i8* [ %275, %274 ], [ %277, %276 ]
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 3
  store i8* %279, i8** %281, align 8
  br label %312

282:                                              ; preds = %205
  %283 = load i8*, i8** @WPR_UNSIGNED, align 8
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 3
  store i8* %283, i8** %285, align 8
  br label %312

286:                                              ; preds = %205
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 1
  store i32 16, i32* %288, align 4
  %289 = load i32, i32* @WPRINTF_ZEROPAD, align 4
  %290 = load i32, i32* @WPRINTF_INTPTR, align 4
  %291 = or i32 %289, %290
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  br label %296

296:                                              ; preds = %205, %286
  %297 = load i32, i32* @WPRINTF_UPPER_HEX, align 4
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %302

302:                                              ; preds = %205, %296
  %303 = load i8*, i8** @WPR_HEXA, align 8
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 3
  store i8* %303, i8** %305, align 8
  br label %312

306:                                              ; preds = %205
  %307 = load i8*, i8** @WPR_UNKNOWN, align 8
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 3
  store i8* %307, i8** %309, align 8
  %310 = load i8*, i8** %5, align 8
  %311 = getelementptr inbounds i8, i8* %310, i32 -1
  store i8* %311, i8** %5, align 8
  br label %312

312:                                              ; preds = %306, %302, %282, %278, %261, %239, %235, %220
  %313 = load i8*, i8** %5, align 8
  %314 = load i8*, i8** %3, align 8
  %315 = ptrtoint i8* %313 to i64
  %316 = ptrtoint i8* %314 to i64
  %317 = sub i64 %315, %316
  %318 = add nsw i64 %317, 1
  ret i64 %318
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
