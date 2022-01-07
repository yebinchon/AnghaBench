; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_GetDateTimeFormatW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_GetDateTimeFormatW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i8*, i8* }

@FALSE = common dso_local global i64 0, align 8
@DATE_DATEVARSONLY = common dso_local global i32 0, align 4
@TIME_TIMEVARSONLY = common dso_local global i32 0, align 4
@DATE_FORMAT_FLAGS = common dso_local global i32 0, align 4
@TIME_FORMAT_FLAGS = common dso_local global i32 0, align 4
@DATE_LTRREADING = common dso_local global i32 0, align 4
@DATE_RTLREADING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unsupported flags: DATE_LTRREADING/DATE_RTLREADING\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"Should be using GetCalendarInfo(CAL_SERASTRING), defaulting to 'AD'\0A\00", align 1
@TIME_FORCE24HOURFORMAT = common dso_local global i32 0, align 4
@TIME_NOMINUTESORSECONDS = common dso_local global i32 0, align 4
@TIME_NOSECONDS = common dso_local global i32 0, align 4
@TIME_NOTIMEMARKER = common dso_local global i32 0, align 4
@NLS_GetDateTimeFormatW.fmtW = internal constant [5 x i8] c"%.*d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"returning length=%d, output=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"returning 0, (ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_INVALID_FLAGS = common dso_local global i32 0, align 4
@DATE_USE_ALT_CALENDAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.TYPE_23__*, i8*, i8*, i64)* @NLS_GetDateTimeFormatW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @NLS_GetDateTimeFormatW(i32 %0, i32 %1, %struct.TYPE_23__* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_23__, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca [32 x i8], align 16
  %22 = alloca i8, align 1
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %18, align 8
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %19, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34, %6
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.TYPE_25__* @NLS_GetFormats(i32 %38, i32 %39)
  store %struct.TYPE_25__* %40, %struct.TYPE_25__** %14, align 8
  %41 = icmp ne %struct.TYPE_25__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37, %34
  br label %730

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @DATE_DATEVARSONLY, align 4
  %46 = load i32, i32* @TIME_TIMEVARSONLY, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %115

51:                                               ; preds = %43
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @DATE_DATEVARSONLY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @DATE_FORMAT_FLAGS, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @TIME_TIMEVARSONLY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @TIME_FORMAT_FLAGS, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %59
  br label %733

77:                                               ; preds = %70, %65, %51
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @DATE_DATEVARSONLY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @DATE_LTRREADING, align 4
  %85 = load i32, i32* @DATE_RTLREADING, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = load i32, i32* @DATE_LTRREADING, align 4
  %89 = load i32, i32* @DATE_RTLREADING, align 4
  %90 = or i32 %88, %89
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %733

93:                                               ; preds = %82
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @DATE_LTRREADING, align 4
  %96 = load i32, i32* @DATE_RTLREADING, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = call i32 @FIXME(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %93
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %104, 131
  switch i32 %105, label %112 [
    i32 0, label %106
    i32 129, label %107
    i32 130, label %107
    i32 128, label %107
  ]

106:                                              ; preds = %103
  br label %113

107:                                              ; preds = %103, %103, %103
  %108 = load i8*, i8** %11, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %733

111:                                              ; preds = %107
  br label %113

112:                                              ; preds = %103
  br label %733

113:                                              ; preds = %111, %106
  br label %114

114:                                              ; preds = %113, %77
  br label %115

115:                                              ; preds = %114, %43
  %116 = load i8*, i8** %11, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %146, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @DATE_DATEVARSONLY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = and i32 %124, 128
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %129 = call i8* @GetYearMonth(%struct.TYPE_25__* %128)
  store i8* %129, i8** %11, align 8
  br label %141

130:                                              ; preds = %123
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, 130
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %136 = call i8* @GetLongDate(%struct.TYPE_25__* %135)
  store i8* %136, i8** %11, align 8
  br label %140

137:                                              ; preds = %130
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %139 = call i8* @GetShortDate(%struct.TYPE_25__* %138)
  store i8* %139, i8** %11, align 8
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %127
  br label %145

142:                                              ; preds = %118
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %144 = call i8* @GetTime(%struct.TYPE_25__* %143)
  store i8* %144, i8** %11, align 8
  br label %145

145:                                              ; preds = %142, %141
  br label %146

146:                                              ; preds = %145, %115
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %148 = icmp ne %struct.TYPE_23__* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = call i32 @GetLocalTime(%struct.TYPE_23__* %15)
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %10, align 8
  br label %206

151:                                              ; preds = %146
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @DATE_DATEVARSONLY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %151
  %157 = call i32 @memset(%struct.TYPE_23__* %15, i32 0, i32 28)
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  store i32 %168, i32* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %171, 31
  br i1 %172, label %180, label %173

173:                                              ; preds = %156
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 12
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = call i32 @SystemTimeToFileTime(%struct.TYPE_23__* %15, i32* %20)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177, %173, %156
  br label %730

181:                                              ; preds = %177
  %182 = call i32 @FileTimeToSystemTime(i32* %20, %struct.TYPE_23__* %15)
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %10, align 8
  br label %183

183:                                              ; preds = %181, %151
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @TIME_TIMEVARSONLY, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %183
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 24
  br i1 %192, label %203, label %193

193:                                              ; preds = %188
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 59
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = icmp sgt i32 %201, 59
  br i1 %202, label %203, label %204

203:                                              ; preds = %198, %193, %188
  br label %730

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %183
  br label %206

206:                                              ; preds = %205, %149
  br label %207

207:                                              ; preds = %704, %206
  %208 = load i8*, i8** %11, align 8
  %209 = load i8, i8* %208, align 1
  %210 = icmp ne i8 %209, 0
  br i1 %210, label %211, label %705

211:                                              ; preds = %207
  %212 = load i8*, i8** %11, align 8
  %213 = load i8, i8* %212, align 1
  %214 = call i64 @IsLiteralMarker(i8 signext %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %265

216:                                              ; preds = %211
  %217 = load i8*, i8** %11, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %11, align 8
  br label %219

219:                                              ; preds = %261, %216
  %220 = load i8*, i8** %11, align 8
  %221 = load i8, i8* %220, align 1
  %222 = icmp ne i8 %221, 0
  br i1 %222, label %223, label %264

223:                                              ; preds = %219
  %224 = load i8*, i8** %11, align 8
  %225 = load i8, i8* %224, align 1
  %226 = call i64 @IsLiteralMarker(i8 signext %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load i8*, i8** %11, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %11, align 8
  %231 = load i8*, i8** %11, align 8
  %232 = load i8, i8* %231, align 1
  %233 = call i64 @IsLiteralMarker(i8 signext %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %228
  br label %264

236:                                              ; preds = %228
  br label %237

237:                                              ; preds = %236, %223
  %238 = load i64, i64* %13, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = load i64, i64* %16, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %16, align 8
  br label %261

243:                                              ; preds = %237
  %244 = load i64, i64* %16, align 8
  %245 = load i64, i64* %13, align 8
  %246 = icmp uge i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %726

248:                                              ; preds = %243
  %249 = load i64, i64* %18, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %259, label %251

251:                                              ; preds = %248
  %252 = load i8*, i8** %11, align 8
  %253 = load i8, i8* %252, align 1
  %254 = load i8*, i8** %12, align 8
  %255 = load i64, i64* %16, align 8
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8 %253, i8* %256, align 1
  %257 = load i64, i64* %16, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %16, align 8
  br label %259

259:                                              ; preds = %251, %248
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260, %240
  %262 = load i8*, i8** %11, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %11, align 8
  br label %219

264:                                              ; preds = %235, %219
  br label %704

265:                                              ; preds = %211
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* @DATE_DATEVARSONLY, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load i8*, i8** %11, align 8
  %272 = load i8, i8* %271, align 1
  %273 = call i64 @IsDateFmtChar(i8 signext %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %285, label %275

275:                                              ; preds = %270, %265
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @TIME_TIMEVARSONLY, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %671

280:                                              ; preds = %275
  %281 = load i8*, i8** %11, align 8
  %282 = load i8, i8* %281, align 1
  %283 = call i64 @IsTimeFmtChar(i8 signext %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %671

285:                                              ; preds = %280, %270
  store i8* null, i8** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %286 = load i64, i64* @FALSE, align 8
  store i64 %286, i64* %18, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = load i8, i8* %287, align 1
  store i8 %288, i8* %22, align 1
  br label %289

289:                                              ; preds = %296, %285
  %290 = load i8*, i8** %11, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = load i8, i8* %22, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %292, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %289
  %297 = load i32, i32* %25, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %25, align 4
  %299 = load i8*, i8** %11, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %11, align 8
  br label %289

301:                                              ; preds = %289
  %302 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8 0, i8* %302, align 16
  %303 = load i8, i8* %22, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp ne i32 %304, 77
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i64, i64* @FALSE, align 8
  store i64 %307, i64* %19, align 8
  br label %308

308:                                              ; preds = %306, %301
  %309 = load i8, i8* %22, align 1
  %310 = sext i8 %309 to i32
  switch i32 %310, label %608 [
    i32 100, label %311
    i32 77, label %341
    i32 121, label %448
    i32 103, label %469
    i32 104, label %482
    i32 72, label %511
    i32 109, label %523
    i32 115, label %544
    i32 116, label %567
  ]

311:                                              ; preds = %308
  %312 = load i32, i32* %25, align 4
  %313 = icmp sge i32 %312, 4
  br i1 %313, label %314, label %322

314:                                              ; preds = %311
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 6
  %320 = srem i32 %319, 7
  %321 = call i8* @GetLongDay(%struct.TYPE_25__* %315, i32 %320)
  store i8* %321, i8** %23, align 8
  br label %340

322:                                              ; preds = %311
  %323 = load i32, i32* %25, align 4
  %324 = icmp eq i32 %323, 3
  br i1 %324, label %325, label %333

325:                                              ; preds = %322
  %326 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 6
  %331 = srem i32 %330, 7
  %332 = call i8* @GetShortDay(%struct.TYPE_25__* %326, i32 %331)
  store i8* %332, i8** %23, align 8
  br label %339

333:                                              ; preds = %322
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %24, align 4
  %337 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8* %337, i8** %23, align 8
  %338 = load i64, i64* @TRUE, align 8
  store i64 %338, i64* %19, align 8
  br label %339

339:                                              ; preds = %333, %325
  br label %340

340:                                              ; preds = %339, %314
  br label %608

341:                                              ; preds = %308
  %342 = load i32, i32* %25, align 4
  %343 = icmp sge i32 %342, 4
  br i1 %343, label %344, label %431

344:                                              ; preds = %341
  %345 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %348, 1
  %350 = call i8* @GetGenitiveMonth(%struct.TYPE_25__* %345, i32 %349)
  store i8* %350, i8** %27, align 8
  %351 = load i8*, i8** %27, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %424

353:                                              ; preds = %344
  %354 = load i64, i64* %19, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = load i8*, i8** %27, align 8
  store i8* %357, i8** %23, align 8
  br label %608

358:                                              ; preds = %353
  %359 = load i8*, i8** %11, align 8
  store i8* %359, i8** %28, align 8
  br label %360

360:                                              ; preds = %398, %358
  %361 = load i8*, i8** %28, align 8
  %362 = load i8, i8* %361, align 1
  %363 = icmp ne i8 %362, 0
  br i1 %363, label %364, label %401

364:                                              ; preds = %360
  %365 = load i8*, i8** %28, align 8
  %366 = load i8, i8* %365, align 1
  %367 = call i64 @IsLiteralMarker(i8 signext %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %392

369:                                              ; preds = %364
  %370 = load i8*, i8** %28, align 8
  %371 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %371, i8** %28, align 8
  br label %372

372:                                              ; preds = %390, %369
  %373 = load i8*, i8** %28, align 8
  %374 = load i8, i8* %373, align 1
  %375 = icmp ne i8 %374, 0
  br i1 %375, label %376, label %391

376:                                              ; preds = %372
  %377 = load i8*, i8** %28, align 8
  %378 = load i8, i8* %377, align 1
  %379 = call i64 @IsLiteralMarker(i8 signext %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %390

381:                                              ; preds = %376
  %382 = load i8*, i8** %28, align 8
  %383 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %383, i8** %28, align 8
  %384 = load i8*, i8** %28, align 8
  %385 = load i8, i8* %384, align 1
  %386 = call i64 @IsLiteralMarker(i8 signext %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %389, label %388

388:                                              ; preds = %381
  br label %391

389:                                              ; preds = %381
  br label %390

390:                                              ; preds = %389, %376
  br label %372

391:                                              ; preds = %388, %372
  br label %392

392:                                              ; preds = %391, %364
  %393 = load i8*, i8** %28, align 8
  %394 = load i8, i8* %393, align 1
  %395 = sext i8 %394 to i32
  %396 = icmp ne i32 %395, 32
  br i1 %396, label %397, label %398

397:                                              ; preds = %392
  br label %401

398:                                              ; preds = %392
  %399 = load i8*, i8** %28, align 8
  %400 = getelementptr inbounds i8, i8* %399, i32 1
  store i8* %400, i8** %28, align 8
  br label %360

401:                                              ; preds = %397, %360
  %402 = load i8*, i8** %28, align 8
  %403 = load i8, i8* %402, align 1
  %404 = sext i8 %403 to i32
  %405 = icmp eq i32 %404, 100
  br i1 %405, label %406, label %422

406:                                              ; preds = %401
  store i64 1, i64* %29, align 8
  br label %407

407:                                              ; preds = %413, %406
  %408 = load i8*, i8** %28, align 8
  %409 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %409, i8** %28, align 8
  %410 = load i8, i8* %409, align 1
  %411 = sext i8 %410 to i32
  %412 = icmp eq i32 %411, 100
  br i1 %412, label %413, label %416

413:                                              ; preds = %407
  %414 = load i64, i64* %29, align 8
  %415 = add i64 %414, 1
  store i64 %415, i64* %29, align 8
  br label %407

416:                                              ; preds = %407
  %417 = load i64, i64* %29, align 8
  %418 = icmp ult i64 %417, 3
  br i1 %418, label %419, label %421

419:                                              ; preds = %416
  %420 = load i8*, i8** %27, align 8
  store i8* %420, i8** %23, align 8
  br label %608

421:                                              ; preds = %416
  br label %422

422:                                              ; preds = %421, %401
  br label %423

423:                                              ; preds = %422
  br label %424

424:                                              ; preds = %423, %344
  %425 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %426 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %427 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = sub nsw i32 %428, 1
  %430 = call i8* @GetLongMonth(%struct.TYPE_25__* %425, i32 %429)
  store i8* %430, i8** %23, align 8
  br label %447

431:                                              ; preds = %341
  %432 = load i32, i32* %25, align 4
  %433 = icmp eq i32 %432, 3
  br i1 %433, label %434, label %441

434:                                              ; preds = %431
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %436 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = sub nsw i32 %438, 1
  %440 = call i8* @GetShortMonth(%struct.TYPE_25__* %435, i32 %439)
  store i8* %440, i8** %23, align 8
  br label %446

441:                                              ; preds = %431
  %442 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %443 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %24, align 4
  %445 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8* %445, i8** %23, align 8
  br label %446

446:                                              ; preds = %441, %434
  br label %447

447:                                              ; preds = %446, %424
  br label %608

448:                                              ; preds = %308
  %449 = load i32, i32* %25, align 4
  %450 = icmp sge i32 %449, 4
  br i1 %450, label %451, label %455

451:                                              ; preds = %448
  store i32 4, i32* %25, align 4
  %452 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %453 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  store i32 %454, i32* %24, align 4
  br label %467

455:                                              ; preds = %448
  %456 = load i32, i32* %25, align 4
  %457 = icmp sgt i32 %456, 2
  br i1 %457, label %458, label %459

458:                                              ; preds = %455
  br label %461

459:                                              ; preds = %455
  %460 = load i32, i32* %25, align 4
  br label %461

461:                                              ; preds = %459, %458
  %462 = phi i32 [ 2, %458 ], [ %460, %459 ]
  store i32 %462, i32* %25, align 4
  %463 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %464 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = srem i32 %465, 100
  store i32 %466, i32* %24, align 4
  br label %467

467:                                              ; preds = %461, %451
  %468 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8* %468, i8** %23, align 8
  br label %608

469:                                              ; preds = %308
  %470 = load i32, i32* %25, align 4
  %471 = icmp eq i32 %470, 2
  br i1 %471, label %472, label %477

472:                                              ; preds = %469
  %473 = call i32 @FIXME(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %474 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8 65, i8* %474, align 16
  %475 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 1
  store i8 68, i8* %475, align 1
  %476 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 2
  store i8 0, i8* %476, align 2
  br label %480

477:                                              ; preds = %469
  %478 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8 103, i8* %478, align 16
  %479 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 1
  store i8 0, i8* %479, align 1
  br label %480

480:                                              ; preds = %477, %472
  %481 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8* %481, i8** %23, align 8
  br label %608

482:                                              ; preds = %308
  %483 = load i32, i32* %9, align 4
  %484 = load i32, i32* @TIME_FORCE24HOURFORMAT, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %510, label %487

487:                                              ; preds = %482
  %488 = load i32, i32* %25, align 4
  %489 = icmp sgt i32 %488, 2
  br i1 %489, label %490, label %491

490:                                              ; preds = %487
  br label %493

491:                                              ; preds = %487
  %492 = load i32, i32* %25, align 4
  br label %493

493:                                              ; preds = %491, %490
  %494 = phi i32 [ 2, %490 ], [ %492, %491 ]
  store i32 %494, i32* %25, align 4
  %495 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %496 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %495, i32 0, i32 3
  %497 = load i32, i32* %496, align 4
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %493
  br label %507

500:                                              ; preds = %493
  %501 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %502 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %501, i32 0, i32 3
  %503 = load i32, i32* %502, align 4
  %504 = sub nsw i32 %503, 1
  %505 = srem i32 %504, 12
  %506 = add nsw i32 %505, 1
  br label %507

507:                                              ; preds = %500, %499
  %508 = phi i32 [ 12, %499 ], [ %506, %500 ]
  store i32 %508, i32* %24, align 4
  %509 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8* %509, i8** %23, align 8
  br label %608

510:                                              ; preds = %482
  br label %511

511:                                              ; preds = %308, %510
  %512 = load i32, i32* %25, align 4
  %513 = icmp sgt i32 %512, 2
  br i1 %513, label %514, label %515

514:                                              ; preds = %511
  br label %517

515:                                              ; preds = %511
  %516 = load i32, i32* %25, align 4
  br label %517

517:                                              ; preds = %515, %514
  %518 = phi i32 [ 2, %514 ], [ %516, %515 ]
  store i32 %518, i32* %25, align 4
  %519 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %520 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %519, i32 0, i32 3
  %521 = load i32, i32* %520, align 4
  store i32 %521, i32* %24, align 4
  %522 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8* %522, i8** %23, align 8
  br label %608

523:                                              ; preds = %308
  %524 = load i32, i32* %9, align 4
  %525 = load i32, i32* @TIME_NOMINUTESORSECONDS, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %523
  %529 = load i64, i64* %17, align 8
  store i64 %529, i64* %16, align 8
  %530 = load i64, i64* @TRUE, align 8
  store i64 %530, i64* %18, align 8
  br label %543

531:                                              ; preds = %523
  %532 = load i32, i32* %25, align 4
  %533 = icmp sgt i32 %532, 2
  br i1 %533, label %534, label %535

534:                                              ; preds = %531
  br label %537

535:                                              ; preds = %531
  %536 = load i32, i32* %25, align 4
  br label %537

537:                                              ; preds = %535, %534
  %538 = phi i32 [ 2, %534 ], [ %536, %535 ]
  store i32 %538, i32* %25, align 4
  %539 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %540 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %539, i32 0, i32 4
  %541 = load i32, i32* %540, align 4
  store i32 %541, i32* %24, align 4
  %542 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8* %542, i8** %23, align 8
  br label %543

543:                                              ; preds = %537, %528
  br label %608

544:                                              ; preds = %308
  %545 = load i32, i32* %9, align 4
  %546 = load i32, i32* @TIME_NOSECONDS, align 4
  %547 = load i32, i32* @TIME_NOMINUTESORSECONDS, align 4
  %548 = or i32 %546, %547
  %549 = and i32 %545, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %554

551:                                              ; preds = %544
  %552 = load i64, i64* %17, align 8
  store i64 %552, i64* %16, align 8
  %553 = load i64, i64* @TRUE, align 8
  store i64 %553, i64* %18, align 8
  br label %566

554:                                              ; preds = %544
  %555 = load i32, i32* %25, align 4
  %556 = icmp sgt i32 %555, 2
  br i1 %556, label %557, label %558

557:                                              ; preds = %554
  br label %560

558:                                              ; preds = %554
  %559 = load i32, i32* %25, align 4
  br label %560

560:                                              ; preds = %558, %557
  %561 = phi i32 [ 2, %557 ], [ %559, %558 ]
  store i32 %561, i32* %25, align 4
  %562 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %563 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %562, i32 0, i32 5
  %564 = load i32, i32* %563, align 4
  store i32 %564, i32* %24, align 4
  %565 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  store i8* %565, i8** %23, align 8
  br label %566

566:                                              ; preds = %560, %551
  br label %608

567:                                              ; preds = %308
  %568 = load i32, i32* %9, align 4
  %569 = load i32, i32* @TIME_NOTIMEMARKER, align 4
  %570 = and i32 %568, %569
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %575

572:                                              ; preds = %567
  %573 = load i64, i64* %17, align 8
  store i64 %573, i64* %16, align 8
  %574 = load i64, i64* @TRUE, align 8
  store i64 %574, i64* %18, align 8
  br label %607

575:                                              ; preds = %567
  %576 = load i32, i32* %25, align 4
  %577 = icmp eq i32 %576, 1
  br i1 %577, label %578, label %593

578:                                              ; preds = %575
  %579 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %580 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %579, i32 0, i32 3
  %581 = load i32, i32* %580, align 4
  %582 = icmp slt i32 %581, 12
  br i1 %582, label %583, label %587

583:                                              ; preds = %578
  %584 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %585 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %584, i32 0, i32 0
  %586 = load i8*, i8** %585, align 8
  br label %591

587:                                              ; preds = %578
  %588 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %589 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %588, i32 0, i32 1
  %590 = load i8*, i8** %589, align 8
  br label %591

591:                                              ; preds = %587, %583
  %592 = phi i8* [ %586, %583 ], [ %590, %587 ]
  store i8* %592, i8** %23, align 8
  br label %606

593:                                              ; preds = %575
  %594 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %595 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %594, i32 0, i32 3
  %596 = load i32, i32* %595, align 4
  %597 = icmp slt i32 %596, 12
  br i1 %597, label %598, label %601

598:                                              ; preds = %593
  %599 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %600 = call i8* @GetAM(%struct.TYPE_25__* %599)
  br label %604

601:                                              ; preds = %593
  %602 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %603 = call i8* @GetPM(%struct.TYPE_25__* %602)
  br label %604

604:                                              ; preds = %601, %598
  %605 = phi i8* [ %600, %598 ], [ %603, %601 ]
  store i8* %605, i8** %23, align 8
  br label %606

606:                                              ; preds = %604, %591
  br label %607

607:                                              ; preds = %606, %572
  br label %608

608:                                              ; preds = %308, %607, %566, %543, %517, %507, %480, %467, %447, %419, %356, %340
  %609 = load i8*, i8** %23, align 8
  %610 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %611 = icmp eq i8* %609, %610
  br i1 %611, label %612, label %624

612:                                              ; preds = %608
  %613 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %614 = load i8, i8* %613, align 16
  %615 = sext i8 %614 to i32
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %624

617:                                              ; preds = %612
  %618 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %619 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %620 = call i32 @ARRAY_SIZE(i8* %619)
  %621 = load i32, i32* %25, align 4
  %622 = load i32, i32* %24, align 4
  %623 = call i32 @snprintfW(i8* %618, i32 %620, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @NLS_GetDateTimeFormatW.fmtW, i64 0, i64 0), i32 %621, i32 %622)
  br label %624

624:                                              ; preds = %617, %612, %608
  %625 = load i8*, i8** %23, align 8
  %626 = icmp ne i8* %625, null
  br i1 %626, label %627, label %630

627:                                              ; preds = %624
  %628 = load i8*, i8** %23, align 8
  %629 = call i32 @strlenW(i8* %628)
  br label %631

630:                                              ; preds = %624
  br label %631

631:                                              ; preds = %630, %627
  %632 = phi i32 [ %629, %627 ], [ 0, %630 ]
  store i32 %632, i32* %26, align 4
  %633 = load i64, i64* %13, align 8
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %665

635:                                              ; preds = %631
  %636 = load i32, i32* %26, align 4
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %665

638:                                              ; preds = %635
  %639 = load i64, i64* %16, align 8
  %640 = load i32, i32* %26, align 4
  %641 = sext i32 %640 to i64
  %642 = add i64 %639, %641
  %643 = load i64, i64* %13, align 8
  %644 = icmp ult i64 %642, %643
  br i1 %644, label %645, label %654

645:                                              ; preds = %638
  %646 = load i8*, i8** %12, align 8
  %647 = load i64, i64* %16, align 8
  %648 = getelementptr inbounds i8, i8* %646, i64 %647
  %649 = load i8*, i8** %23, align 8
  %650 = load i32, i32* %26, align 4
  %651 = sext i32 %650 to i64
  %652 = mul i64 %651, 1
  %653 = call i32 @memcpy(i8* %648, i8* %649, i64 %652)
  br label %664

654:                                              ; preds = %638
  %655 = load i8*, i8** %12, align 8
  %656 = load i64, i64* %16, align 8
  %657 = getelementptr inbounds i8, i8* %655, i64 %656
  %658 = load i8*, i8** %23, align 8
  %659 = load i64, i64* %13, align 8
  %660 = load i64, i64* %16, align 8
  %661 = sub i64 %659, %660
  %662 = mul i64 %661, 1
  %663 = call i32 @memcpy(i8* %657, i8* %658, i64 %662)
  br label %726

664:                                              ; preds = %645
  br label %665

665:                                              ; preds = %664, %635, %631
  %666 = load i32, i32* %26, align 4
  %667 = sext i32 %666 to i64
  %668 = load i64, i64* %16, align 8
  %669 = add i64 %668, %667
  store i64 %669, i64* %16, align 8
  %670 = load i64, i64* %16, align 8
  store i64 %670, i64* %17, align 8
  br label %703

671:                                              ; preds = %280, %275
  %672 = load i64, i64* %13, align 8
  %673 = icmp ne i64 %672, 0
  br i1 %673, label %677, label %674

674:                                              ; preds = %671
  %675 = load i64, i64* %16, align 8
  %676 = add i64 %675, 1
  store i64 %676, i64* %16, align 8
  br label %700

677:                                              ; preds = %671
  %678 = load i64, i64* %16, align 8
  %679 = load i64, i64* %13, align 8
  %680 = icmp uge i64 %678, %679
  br i1 %680, label %681, label %682

681:                                              ; preds = %677
  br label %726

682:                                              ; preds = %677
  %683 = load i64, i64* %18, align 8
  %684 = icmp ne i64 %683, 0
  br i1 %684, label %685, label %690

685:                                              ; preds = %682
  %686 = load i8*, i8** %11, align 8
  %687 = load i8, i8* %686, align 1
  %688 = sext i8 %687 to i32
  %689 = icmp eq i32 %688, 32
  br i1 %689, label %690, label %698

690:                                              ; preds = %685, %682
  %691 = load i8*, i8** %11, align 8
  %692 = load i8, i8* %691, align 1
  %693 = load i8*, i8** %12, align 8
  %694 = load i64, i64* %16, align 8
  %695 = getelementptr inbounds i8, i8* %693, i64 %694
  store i8 %692, i8* %695, align 1
  %696 = load i64, i64* %16, align 8
  %697 = add i64 %696, 1
  store i64 %697, i64* %16, align 8
  br label %698

698:                                              ; preds = %690, %685
  br label %699

699:                                              ; preds = %698
  br label %700

700:                                              ; preds = %699, %674
  %701 = load i8*, i8** %11, align 8
  %702 = getelementptr inbounds i8, i8* %701, i32 1
  store i8* %702, i8** %11, align 8
  br label %703

703:                                              ; preds = %700, %665
  br label %704

704:                                              ; preds = %703, %264
  br label %207

705:                                              ; preds = %207
  %706 = load i64, i64* %13, align 8
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %718

708:                                              ; preds = %705
  %709 = load i64, i64* %16, align 8
  %710 = load i64, i64* %13, align 8
  %711 = icmp uge i64 %709, %710
  br i1 %711, label %712, label %713

712:                                              ; preds = %708
  br label %726

713:                                              ; preds = %708
  %714 = load i8*, i8** %12, align 8
  %715 = load i64, i64* %16, align 8
  %716 = getelementptr inbounds i8, i8* %714, i64 %715
  store i8 0, i8* %716, align 1
  br label %717

717:                                              ; preds = %713
  br label %718

718:                                              ; preds = %717, %705
  %719 = load i64, i64* %16, align 8
  %720 = add i64 %719, 1
  store i64 %720, i64* %16, align 8
  %721 = load i64, i64* %16, align 8
  %722 = load i8*, i8** %12, align 8
  %723 = call i32 @debugstr_w(i8* %722)
  %724 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %721, i32 %723)
  %725 = load i64, i64* %16, align 8
  store i64 %725, i64* %7, align 8
  br label %736

726:                                              ; preds = %712, %681, %654, %247
  %727 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %728 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %729 = call i32 @SetLastError(i32 %728)
  store i64 0, i64* %7, align 8
  br label %736

730:                                              ; preds = %203, %180, %42
  %731 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %732 = call i32 @SetLastError(i32 %731)
  store i64 0, i64* %7, align 8
  br label %736

733:                                              ; preds = %112, %110, %92, %76
  %734 = load i32, i32* @ERROR_INVALID_FLAGS, align 4
  %735 = call i32 @SetLastError(i32 %734)
  store i64 0, i64* %7, align 8
  br label %736

736:                                              ; preds = %733, %730, %726, %718
  %737 = load i64, i64* %7, align 8
  ret i64 %737
}

declare dso_local %struct.TYPE_25__* @NLS_GetFormats(i32, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i8* @GetYearMonth(%struct.TYPE_25__*) #1

declare dso_local i8* @GetLongDate(%struct.TYPE_25__*) #1

declare dso_local i8* @GetShortDate(%struct.TYPE_25__*) #1

declare dso_local i8* @GetTime(%struct.TYPE_25__*) #1

declare dso_local i32 @GetLocalTime(%struct.TYPE_23__*) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @SystemTimeToFileTime(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @FileTimeToSystemTime(i32*, %struct.TYPE_23__*) #1

declare dso_local i64 @IsLiteralMarker(i8 signext) #1

declare dso_local i64 @IsDateFmtChar(i8 signext) #1

declare dso_local i64 @IsTimeFmtChar(i8 signext) #1

declare dso_local i8* @GetLongDay(%struct.TYPE_25__*, i32) #1

declare dso_local i8* @GetShortDay(%struct.TYPE_25__*, i32) #1

declare dso_local i8* @GetGenitiveMonth(%struct.TYPE_25__*, i32) #1

declare dso_local i8* @GetLongMonth(%struct.TYPE_25__*, i32) #1

declare dso_local i8* @GetShortMonth(%struct.TYPE_25__*, i32) #1

declare dso_local i8* @GetAM(%struct.TYPE_25__*) #1

declare dso_local i8* @GetPM(%struct.TYPE_25__*) #1

declare dso_local i32 @snprintfW(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
