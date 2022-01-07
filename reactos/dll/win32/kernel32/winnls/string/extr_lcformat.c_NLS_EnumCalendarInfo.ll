; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_EnumCalendarInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_lcformat.c_NLS_EnumCalendarInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enumcalendar_context = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 (i8*)*, i32 (i8*, i32)*, i32 (i8*, i32, i32*, i32)* }

@FALSE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@ENUM_ALL_CALENDARS = common dso_local global i32 0, align 4
@LOCALE_IOPTIONALCALENDAR = common dso_local global i32 0, align 4
@LOCALE_ICALENDARTYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CAL_RETURN_NUMBER = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Buffer resizing disorder: was %d, requested %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Buffer too small; resizing to %d bytes.\0A\00", align 1
@ERROR_BADDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enumcalendar_context*)* @NLS_EnumCalendarInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NLS_EnumCalendarInfo(%struct.enumcalendar_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enumcalendar_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.enumcalendar_context* %0, %struct.enumcalendar_context** %3, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %13 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %8, align 4
  store i32 200, i32* %9, align 4
  %16 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %17 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i8*)*, i32 (i8*)** %18, align 8
  %20 = icmp eq i32 (i8*)* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %23 = call i32 @SetLastError(i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %289

25:                                               ; preds = %1
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @HeapAlloc(i32 %26, i32 0, i32 %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %33 = call i32 @SetLastError(i32 %32)
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %289

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ENUM_ALL_CALENDARS, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %41 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LOCALE_IOPTIONALCALENDAR, align 4
  %44 = call i32 @GetLocaleInfoW(i32 %42, i32 %43, i8* null, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %71

47:                                               ; preds = %39
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = call i8* @HeapAlloc(i32 %48, i32 0, i32 %52)
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %58 = call i32 @SetLastError(i32 %57)
  br label %281

59:                                               ; preds = %47
  %60 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %61 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LOCALE_IOPTIONALCALENDAR, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @GetLocaleInfoW(i32 %62, i32 %63, i8* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i8*, i8** %5, align 8
  store i8* %69, i8** %6, align 8
  br label %70

70:                                               ; preds = %68, %59
  br label %71

71:                                               ; preds = %70, %39
  %72 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %73 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LOCALE_ICALENDARTYPE, align 4
  %76 = call i32 @NLS_GetLocaleNumber(i32 %74, i32 %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %71, %35
  br label %78

78:                                               ; preds = %279, %77
  %79 = load i32, i32* @TRUE, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %280

81:                                               ; preds = %78
  br label %82

82:                                               ; preds = %198, %81
  %83 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %84 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CAL_RETURN_NUMBER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %82
  %90 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %91 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %95 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = load i8*, i8** %4, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = call i32 @GetCalendarInfoW(i32 %92, i32 %93, i32 %96, i8* null, i32 %100, i32* %102)
  store i32 %103, i32* %8, align 4
  br label %139

104:                                              ; preds = %82
  %105 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %106 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %111 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %115 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %4, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = udiv i64 %119, 1
  %121 = trunc i64 %120 to i32
  %122 = call i32 @GetCalendarInfoW(i32 %112, i32 %113, i32 %116, i8* %117, i32 %121, i32* null)
  store i32 %122, i32* %8, align 4
  br label %138

123:                                              ; preds = %104
  %124 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %125 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %129 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %4, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = udiv i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = call i32 @GetCalendarInfoA(i32 %126, i32 %127, i32 %130, i32* %132, i32 %136, i32* null)
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %123, %109
  br label %139

139:                                              ; preds = %138, %89
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %197, label %142

142:                                              ; preds = %139
  %143 = call i64 (...) @GetLastError()
  %144 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %195

146:                                              ; preds = %142
  %147 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %148 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %153 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %157 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @GetCalendarInfoW(i32 %154, i32 %155, i32 %158, i8* null, i32 0, i32* null)
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 1
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %11, align 4
  br label %175

163:                                              ; preds = %146
  %164 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %165 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %169 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @GetCalendarInfoA(i32 %166, i32 %167, i32 %170, i32* null, i32 0, i32* null)
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %163, %151
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %180, i32 %181)
  br label %281

183:                                              ; preds = %175
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = call i32 (...) @GetProcessHeap()
  %188 = load i8*, i8** %4, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i8* @HeapReAlloc(i32 %187, i32 0, i8* %188, i32 %189)
  store i8* %190, i8** %4, align 8
  %191 = load i8*, i8** %4, align 8
  %192 = icmp eq i8* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  br label %281

194:                                              ; preds = %183
  br label %196

195:                                              ; preds = %142
  br label %281

196:                                              ; preds = %194
  br label %197

197:                                              ; preds = %196, %139
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  br i1 %201, label %82, label %202

202:                                              ; preds = %198
  %203 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %204 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  switch i32 %205, label %232 [
    i32 130, label %206
    i32 129, label %213
    i32 128, label %221
  ]

206:                                              ; preds = %202
  %207 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %208 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32 (i8*)*, i32 (i8*)** %209, align 8
  %211 = load i8*, i8** %4, align 8
  %212 = call i32 %210(i8* %211)
  store i32 %212, i32* %8, align 4
  br label %233

213:                                              ; preds = %202
  %214 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %215 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32 (i8*, i32)*, i32 (i8*, i32)** %216, align 8
  %218 = load i8*, i8** %4, align 8
  %219 = load i32, i32* %7, align 4
  %220 = call i32 %217(i8* %218, i32 %219)
  store i32 %220, i32* %8, align 4
  br label %233

221:                                              ; preds = %202
  %222 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %223 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 2
  %225 = load i32 (i8*, i32, i32*, i32)*, i32 (i8*, i32, i32*, i32)** %224, align 8
  %226 = load i8*, i8** %4, align 8
  %227 = load i32, i32* %7, align 4
  %228 = load %struct.enumcalendar_context*, %struct.enumcalendar_context** %3, align 8
  %229 = getelementptr inbounds %struct.enumcalendar_context, %struct.enumcalendar_context* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = call i32 %225(i8* %226, i32 %227, i32* null, i32 %230)
  store i32 %231, i32* %8, align 4
  br label %233

232:                                              ; preds = %202
  br label %233

233:                                              ; preds = %232, %221, %213, %206
  %234 = load i32, i32* %8, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* @TRUE, align 4
  store i32 %237, i32* %8, align 4
  br label %280

238:                                              ; preds = %233
  %239 = load i8*, i8** %6, align 8
  %240 = icmp eq i8* %239, null
  br i1 %240, label %246, label %241

241:                                              ; preds = %238
  %242 = load i8*, i8** %6, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %241, %238
  br label %280

247:                                              ; preds = %241
  store i32 0, i32* %7, align 4
  br label %248

248:                                              ; preds = %260, %247
  %249 = load i8*, i8** %6, align 8
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp sge i32 %251, 48
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load i8*, i8** %6, align 8
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp sle i32 %256, 57
  br label %258

258:                                              ; preds = %253, %248
  %259 = phi i1 [ false, %248 ], [ %257, %253 ]
  br i1 %259, label %260, label %269

260:                                              ; preds = %258
  %261 = load i32, i32* %7, align 4
  %262 = mul nsw i32 %261, 10
  %263 = load i8*, i8** %6, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %6, align 8
  %265 = load i8, i8* %263, align 1
  %266 = sext i8 %265 to i32
  %267 = add nsw i32 %262, %266
  %268 = sub nsw i32 %267, 48
  store i32 %268, i32* %7, align 4
  br label %248

269:                                              ; preds = %258
  %270 = load i8*, i8** %6, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %6, align 8
  %272 = load i8, i8* %270, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load i32, i32* @ERROR_BADDB, align 4
  %277 = call i32 @SetLastError(i32 %276)
  %278 = load i32, i32* @FALSE, align 4
  store i32 %278, i32* %8, align 4
  br label %280

279:                                              ; preds = %269
  br label %78

280:                                              ; preds = %275, %246, %236, %78
  br label %281

281:                                              ; preds = %280, %195, %193, %179, %56
  %282 = call i32 (...) @GetProcessHeap()
  %283 = load i8*, i8** %5, align 8
  %284 = call i32 @HeapFree(i32 %282, i32 0, i8* %283)
  %285 = call i32 (...) @GetProcessHeap()
  %286 = load i8*, i8** %4, align 8
  %287 = call i32 @HeapFree(i32 %285, i32 0, i8* %286)
  %288 = load i32, i32* %8, align 4
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %281, %31, %21
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @GetLocaleInfoW(i32, i32, i8*, i32) #1

declare dso_local i32 @NLS_GetLocaleNumber(i32, i32) #1

declare dso_local i32 @GetCalendarInfoW(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @GetCalendarInfoA(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i8* @HeapReAlloc(i32, i32, i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
