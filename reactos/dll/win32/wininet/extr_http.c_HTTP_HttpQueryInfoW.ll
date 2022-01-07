; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_HttpQueryInfoW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_HTTP_HttpQueryInfoW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32, i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8* }
%struct.tm = type { i64, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i64, i64 }

@HTTP_QUERY_FLAG_REQUEST_HEADERS = common dso_local global i32 0, align 4
@HTTP_QUERY_MODIFIER_FLAGS_MASK = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"returning data: %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@header_lookup = common dso_local global i8** null, align 8
@HTTP_QUERY_CONTENT_TYPE = common dso_local global i32 0, align 4
@ERROR_HTTP_INVALID_QUERY_REQUEST = common dso_local global i32 0, align 4
@HTTP_QUERY_FLAG_NUMBER = common dso_local global i32 0, align 4
@HTTP_HttpQueryInfoW.formatW = internal constant [3 x i8] c"%u\00", align 1
@LAST_TABLE_HEADER = common dso_local global i32 0, align 4
@HTTP_QUERY_UNLESS_MODIFIED_SINCE = common dso_local global i32 0, align 4
@HDR_ISREQUEST = common dso_local global i32 0, align 4
@ERROR_HTTP_HEADER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c" returning number: %d\0A\00", align 1
@HTTP_QUERY_FLAG_SYSTEMTIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c" returning time: %04d/%02d/%02d - %d - %02d:%02d:%02d.%02d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"! returning string: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i8*, i32*, i32*)* @HTTP_HttpQueryInfoW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HTTP_HttpQueryInfoW(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [12 x i8], align 1
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.tm, align 8
  %30 = alloca %struct.TYPE_9__*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @HTTP_QUERY_FLAG_REQUEST_HEADERS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  br label %45

44:                                               ; preds = %5
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %14, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @HTTP_QUERY_MODIFIER_FLAGS_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* %15, align 4
  store i64 -1, i64* %16, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = call i32 @EnterCriticalSection(i32* %53)
  %55 = load i32, i32* %15, align 4
  switch i32 %55, label %449 [
    i32 133, label %56
    i32 131, label %70
    i32 132, label %147
    i32 129, label %246
    i32 128, label %304
    i32 134, label %362
    i32 130, label %381
  ]

56:                                               ; preds = %45
  %57 = load i8*, i8** %9, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = call i32 @LeaveCriticalSection(i32* %61)
  %63 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %63, i32* %6, align 4
  br label %660

64:                                               ; preds = %56
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @HTTP_GetCustomHeaderIndex(%struct.TYPE_8__* %65, i8* %66, i64 %67, i32 %68)
  store i64 %69, i64* %16, align 8
  br label %477

70:                                               ; preds = %45
  store i32 0, i32* %18, align 4
  %71 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i8* @build_request_header(%struct.TYPE_8__* %75, i32 %78, i32 %81, i8* %84, i32 %85)
  store i8* %86, i8** %17, align 8
  br label %91

87:                                               ; preds = %70
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i8* @build_response_header(%struct.TYPE_8__* %88, i32 %89)
  store i8* %90, i8** %17, align 8
  br label %91

91:                                               ; preds = %87, %74
  %92 = load i8*, i8** %17, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = call i32 @LeaveCriticalSection(i32* %96)
  %98 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %98, i32* %6, align 4
  br label %660

99:                                               ; preds = %91
  %100 = load i8*, i8** %17, align 8
  %101 = call i32 @strlenW(i8* %100)
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 1
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 1
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ugt i64 %107, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %99
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %114, 1
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %117, i32* %19, align 4
  br label %138

118:                                              ; preds = %99
  %119 = load i8*, i8** %9, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load i8*, i8** %9, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, 1
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memcpy(i8* %122, i8* %123, i32 %127)
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = udiv i64 %131, 1
  %133 = trunc i64 %132 to i32
  %134 = call i32 @debugstr_wn(i8* %129, i32 %133)
  %135 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %136, i32* %19, align 4
  br label %137

137:                                              ; preds = %121, %118
  br label %138

138:                                              ; preds = %137, %112
  %139 = load i32, i32* %18, align 4
  %140 = load i32*, i32** %10, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i8*, i8** %17, align 8
  %142 = call i32 @heap_free(i8* %141)
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  %145 = call i32 @LeaveCriticalSection(i32* %144)
  %146 = load i32, i32* %19, align 4
  store i32 %146, i32* %6, align 4
  br label %660

147:                                              ; preds = %45
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* @FALSE, align 4
  %162 = call i8* @build_request_header(%struct.TYPE_8__* %151, i32 %154, i32 %157, i8* %160, i32 %161)
  store i8* %162, i8** %20, align 8
  br label %167

163:                                              ; preds = %147
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = load i32, i32* @FALSE, align 4
  %166 = call i8* @build_response_header(%struct.TYPE_8__* %164, i32 %165)
  store i8* %166, i8** %20, align 8
  br label %167

167:                                              ; preds = %163, %150
  %168 = load i8*, i8** %20, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = call i32 @LeaveCriticalSection(i32* %172)
  %174 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %174, i32* %6, align 4
  br label %660

175:                                              ; preds = %167
  %176 = load i8*, i8** %20, align 8
  %177 = call i32 @strlenW(i8* %176)
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 1
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %21, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %181, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %175
  %186 = load i32, i32* %21, align 4
  %187 = load i32*, i32** %10, align 8
  store i32 %186, i32* %187, align 4
  %188 = load i8*, i8** %20, align 8
  %189 = call i32 @heap_free(i8* %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  %192 = call i32 @LeaveCriticalSection(i32* %191)
  %193 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %193, i32* %6, align 4
  br label %660

194:                                              ; preds = %175
  %195 = load i8*, i8** %9, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %234

197:                                              ; preds = %194
  %198 = load i8*, i8** %20, align 8
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = udiv i64 %200, 1
  %202 = trunc i64 %201 to i32
  %203 = call i32 @debugstr_wn(i8* %198, i32 %202)
  %204 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %203)
  store i32 0, i32* %22, align 4
  br label %205

205:                                              ; preds = %226, %197
  %206 = load i32, i32* %22, align 4
  %207 = sext i32 %206 to i64
  %208 = load i32, i32* %21, align 4
  %209 = sext i32 %208 to i64
  %210 = udiv i64 %209, 1
  %211 = icmp ult i64 %207, %210
  br i1 %211, label %212, label %229

212:                                              ; preds = %205
  %213 = load i8*, i8** %20, align 8
  %214 = load i32, i32* %22, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 10
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = load i8*, i8** %20, align 8
  %222 = load i32, i32* %22, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  store i8 0, i8* %224, align 1
  br label %225

225:                                              ; preds = %220, %212
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %22, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %22, align 4
  br label %205

229:                                              ; preds = %205
  %230 = load i8*, i8** %9, align 8
  %231 = load i8*, i8** %20, align 8
  %232 = load i32, i32* %21, align 4
  %233 = call i32 @memcpy(i8* %230, i8* %231, i32 %232)
  br label %234

234:                                              ; preds = %229, %194
  %235 = load i32, i32* %21, align 4
  %236 = sext i32 %235 to i64
  %237 = sub i64 %236, 1
  %238 = trunc i64 %237 to i32
  %239 = load i32*, i32** %10, align 8
  store i32 %238, i32* %239, align 4
  %240 = load i8*, i8** %20, align 8
  %241 = call i32 @heap_free(i8* %240)
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 3
  %244 = call i32 @LeaveCriticalSection(i32* %243)
  %245 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %245, i32* %6, align 4
  br label %660

246:                                              ; preds = %45
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %303

251:                                              ; preds = %246
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @strlenW(i8* %254)
  store i32 %255, i32* %23, align 4
  %256 = load i32, i32* %23, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = load i32*, i32** %10, align 8
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = udiv i64 %261, 1
  %263 = icmp ugt i64 %258, %262
  br i1 %263, label %264, label %275

264:                                              ; preds = %251
  %265 = load i32, i32* %23, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = mul i64 %267, 1
  %269 = trunc i64 %268 to i32
  %270 = load i32*, i32** %10, align 8
  store i32 %269, i32* %270, align 4
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  %273 = call i32 @LeaveCriticalSection(i32* %272)
  %274 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %274, i32* %6, align 4
  br label %660

275:                                              ; preds = %251
  %276 = load i8*, i8** %9, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %293

278:                                              ; preds = %275
  %279 = load i8*, i8** %9, align 8
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 1
  %282 = load i8*, i8** %281, align 8
  %283 = load i32, i32* %23, align 4
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = mul i64 %285, 1
  %287 = trunc i64 %286 to i32
  %288 = call i32 @memcpy(i8* %279, i8* %282, i32 %287)
  %289 = load i8*, i8** %9, align 8
  %290 = load i32, i32* %23, align 4
  %291 = call i32 @debugstr_wn(i8* %289, i32 %290)
  %292 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %291)
  br label %293

293:                                              ; preds = %278, %275
  %294 = load i32, i32* %23, align 4
  %295 = sext i32 %294 to i64
  %296 = mul i64 %295, 1
  %297 = trunc i64 %296 to i32
  %298 = load i32*, i32** %10, align 8
  store i32 %297, i32* %298, align 4
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 3
  %301 = call i32 @LeaveCriticalSection(i32* %300)
  %302 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %302, i32* %6, align 4
  br label %660

303:                                              ; preds = %246
  br label %477

304:                                              ; preds = %45
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %361

309:                                              ; preds = %304
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @strlenW(i8* %312)
  store i32 %313, i32* %24, align 4
  %314 = load i32, i32* %24, align 4
  %315 = add nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = load i32*, i32** %10, align 8
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = udiv i64 %319, 1
  %321 = icmp ugt i64 %316, %320
  br i1 %321, label %322, label %333

322:                                              ; preds = %309
  %323 = load i32, i32* %24, align 4
  %324 = add nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = mul i64 %325, 1
  %327 = trunc i64 %326 to i32
  %328 = load i32*, i32** %10, align 8
  store i32 %327, i32* %328, align 4
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 3
  %331 = call i32 @LeaveCriticalSection(i32* %330)
  %332 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %332, i32* %6, align 4
  br label %660

333:                                              ; preds = %309
  %334 = load i8*, i8** %9, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %336, label %351

336:                                              ; preds = %333
  %337 = load i8*, i8** %9, align 8
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = load i32, i32* %24, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = mul i64 %343, 1
  %345 = trunc i64 %344 to i32
  %346 = call i32 @memcpy(i8* %337, i8* %340, i32 %345)
  %347 = load i8*, i8** %9, align 8
  %348 = load i32, i32* %24, align 4
  %349 = call i32 @debugstr_wn(i8* %347, i32 %348)
  %350 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %349)
  br label %351

351:                                              ; preds = %336, %333
  %352 = load i32, i32* %24, align 4
  %353 = sext i32 %352 to i64
  %354 = mul i64 %353, 1
  %355 = trunc i64 %354 to i32
  %356 = load i32*, i32** %10, align 8
  store i32 %355, i32* %356, align 4
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 3
  %359 = call i32 @LeaveCriticalSection(i32* %358)
  %360 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %360, i32* %6, align 4
  br label %660

361:                                              ; preds = %304
  br label %477

362:                                              ; preds = %45
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %364 = load i8**, i8*** @header_lookup, align 8
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %362
  %370 = load i32, i32* @HTTP_QUERY_CONTENT_TYPE, align 4
  br label %373

371:                                              ; preds = %362
  %372 = load i32, i32* %15, align 4
  br label %373

373:                                              ; preds = %371, %369
  %374 = phi i32 [ %370, %369 ], [ %372, %371 ]
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8*, i8** %364, i64 %375
  %377 = load i8*, i8** %376, align 8
  %378 = load i64, i64* %14, align 8
  %379 = load i32, i32* %13, align 4
  %380 = call i64 @HTTP_GetCustomHeaderIndex(%struct.TYPE_8__* %363, i8* %377, i64 %378, i32 %379)
  store i64 %380, i64* %16, align 8
  br label %477

381:                                              ; preds = %45
  %382 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %382, i32* %25, align 4
  %383 = load i32, i32* %13, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %381
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 3
  %388 = call i32 @LeaveCriticalSection(i32* %387)
  %389 = load i32, i32* @ERROR_HTTP_INVALID_QUERY_REQUEST, align 4
  store i32 %389, i32* %6, align 4
  br label %660

390:                                              ; preds = %381
  %391 = load i64, i64* %14, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %390
  br label %477

394:                                              ; preds = %390
  %395 = load i32, i32* %8, align 4
  %396 = load i32, i32* @HTTP_QUERY_FLAG_NUMBER, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %414

399:                                              ; preds = %394
  %400 = load i32*, i32** %10, align 8
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = icmp uge i64 %402, 4
  br i1 %403, label %404, label %410

404:                                              ; preds = %399
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 8
  %408 = load i8*, i8** %9, align 8
  %409 = bitcast i8* %408 to i32*
  store i32 %407, i32* %409, align 4
  br label %412

410:                                              ; preds = %399
  %411 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %411, i32* %25, align 4
  br label %412

412:                                              ; preds = %410, %404
  %413 = load i32*, i32** %10, align 8
  store i32 4, i32* %413, align 4
  br label %444

414:                                              ; preds = %394
  %415 = getelementptr inbounds [12 x i8], [12 x i8]* %26, i64 0, i64 0
  %416 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @sprintfW(i8* %415, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @HTTP_HttpQueryInfoW.formatW, i64 0, i64 0), i32 %418)
  %420 = sext i32 %419 to i64
  %421 = mul i64 %420, 1
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %27, align 4
  %423 = load i32, i32* %27, align 4
  %424 = load i32*, i32** %10, align 8
  %425 = load i32, i32* %424, align 4
  %426 = icmp sle i32 %423, %425
  br i1 %426, label %427, label %435

427:                                              ; preds = %414
  %428 = load i8*, i8** %9, align 8
  %429 = getelementptr inbounds [12 x i8], [12 x i8]* %26, i64 0, i64 0
  %430 = load i32, i32* %27, align 4
  %431 = sext i32 %430 to i64
  %432 = add i64 %431, 1
  %433 = trunc i64 %432 to i32
  %434 = call i32 @memcpy(i8* %428, i8* %429, i32 %433)
  br label %441

435:                                              ; preds = %414
  %436 = load i32, i32* %27, align 4
  %437 = sext i32 %436 to i64
  %438 = add i64 %437, 1
  %439 = trunc i64 %438 to i32
  store i32 %439, i32* %27, align 4
  %440 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %440, i32* %25, align 4
  br label %441

441:                                              ; preds = %435, %427
  %442 = load i32, i32* %27, align 4
  %443 = load i32*, i32** %10, align 8
  store i32 %442, i32* %443, align 4
  br label %444

444:                                              ; preds = %441, %412
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 3
  %447 = call i32 @LeaveCriticalSection(i32* %446)
  %448 = load i32, i32* %25, align 4
  store i32 %448, i32* %6, align 4
  br label %660

449:                                              ; preds = %45
  %450 = load i32, i32* @LAST_TABLE_HEADER, align 4
  %451 = load i32, i32* @HTTP_QUERY_UNLESS_MODIFIED_SINCE, align 4
  %452 = add nsw i32 %451, 1
  %453 = icmp eq i32 %450, %452
  %454 = zext i1 %453 to i32
  %455 = call i32 @assert(i32 %454)
  %456 = load i32, i32* %15, align 4
  %457 = load i32, i32* @LAST_TABLE_HEADER, align 4
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %459, label %476

459:                                              ; preds = %449
  %460 = load i8**, i8*** @header_lookup, align 8
  %461 = load i32, i32* %15, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i8*, i8** %460, i64 %462
  %464 = load i8*, i8** %463, align 8
  %465 = icmp ne i8* %464, null
  br i1 %465, label %466, label %476

466:                                              ; preds = %459
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %468 = load i8**, i8*** @header_lookup, align 8
  %469 = load i32, i32* %15, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i8*, i8** %468, i64 %470
  %472 = load i8*, i8** %471, align 8
  %473 = load i64, i64* %14, align 8
  %474 = load i32, i32* %13, align 4
  %475 = call i64 @HTTP_GetCustomHeaderIndex(%struct.TYPE_8__* %467, i8* %472, i64 %473, i32 %474)
  store i64 %475, i64* %16, align 8
  br label %476

476:                                              ; preds = %466, %459, %449
  br label %477

477:                                              ; preds = %476, %393, %373, %361, %303, %64
  %478 = load i64, i64* %16, align 8
  %479 = icmp uge i64 %478, 0
  br i1 %479, label %480, label %486

480:                                              ; preds = %477
  %481 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 4
  %483 = load %struct.TYPE_10__*, %struct.TYPE_10__** %482, align 8
  %484 = load i64, i64* %16, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %483, i64 %484
  store %struct.TYPE_10__* %485, %struct.TYPE_10__** %12, align 8
  br label %486

486:                                              ; preds = %480, %477
  %487 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %488 = icmp ne %struct.TYPE_10__* %487, null
  br i1 %488, label %489, label %502

489:                                              ; preds = %486
  %490 = load i32, i32* %8, align 4
  %491 = load i32, i32* @HTTP_QUERY_FLAG_REQUEST_HEADERS, align 4
  %492 = and i32 %490, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %507

494:                                              ; preds = %489
  %495 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %496 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = xor i32 %497, -1
  %499 = load i32, i32* @HDR_ISREQUEST, align 4
  %500 = and i32 %498, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %507

502:                                              ; preds = %494, %486
  %503 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 3
  %505 = call i32 @LeaveCriticalSection(i32* %504)
  %506 = load i32, i32* @ERROR_HTTP_HEADER_NOT_FOUND, align 4
  store i32 %506, i32* %6, align 4
  br label %660

507:                                              ; preds = %494, %489
  %508 = load i32, i32* %8, align 4
  %509 = load i32, i32* @HTTP_QUERY_FLAG_NUMBER, align 4
  %510 = and i32 %508, %509
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %526

512:                                              ; preds = %507
  %513 = load i8*, i8** %9, align 8
  %514 = icmp ne i8* %513, null
  br i1 %514, label %515, label %526

515:                                              ; preds = %512
  %516 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i32 0, i32 1
  %518 = load i8*, i8** %517, align 8
  %519 = call i32 @atoiW(i8* %518)
  %520 = load i8*, i8** %9, align 8
  %521 = bitcast i8* %520 to i32*
  store i32 %519, i32* %521, align 4
  %522 = load i8*, i8** %9, align 8
  %523 = bitcast i8* %522 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %524)
  br label %648

526:                                              ; preds = %512, %507
  %527 = load i32, i32* %8, align 4
  %528 = load i32, i32* @HTTP_QUERY_FLAG_SYSTEMTIME, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %602

531:                                              ; preds = %526
  %532 = load i8*, i8** %9, align 8
  %533 = icmp ne i8* %532, null
  br i1 %533, label %534, label %602

534:                                              ; preds = %531
  %535 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %536 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %535, i32 0, i32 1
  %537 = load i8*, i8** %536, align 8
  %538 = call i32 @ConvertTimeString(i8* %537)
  store i32 %538, i32* %28, align 4
  %539 = call %struct.tm* @gmtime(i32* %28)
  %540 = bitcast %struct.tm* %29 to i8*
  %541 = bitcast %struct.tm* %539 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %540, i8* align 8 %541, i64 40, i1 false)
  %542 = load i8*, i8** %9, align 8
  %543 = bitcast i8* %542 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %543, %struct.TYPE_9__** %30, align 8
  %544 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 6
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 5
  store i32 %545, i32* %547, align 8
  %548 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 5
  %549 = load i32, i32* %548, align 8
  %550 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %551 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %550, i32 0, i32 3
  store i32 %549, i32* %551, align 8
  %552 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %553 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %552, i32 0, i32 0
  store i64 0, i64* %553, align 8
  %554 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 4
  %555 = load i32, i32* %554, align 4
  %556 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %557 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %556, i32 0, i32 2
  store i32 %555, i32* %557, align 4
  %558 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 3
  %559 = load i32, i32* %558, align 8
  %560 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %561 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %560, i32 0, i32 4
  store i32 %559, i32* %561, align 4
  %562 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 2
  %563 = load i64, i64* %562, align 8
  %564 = add nsw i64 %563, 1
  %565 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %566 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %565, i32 0, i32 6
  store i64 %564, i64* %566, align 8
  %567 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 1
  %568 = load i32, i32* %567, align 8
  %569 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %570 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %569, i32 0, i32 1
  store i32 %568, i32* %570, align 8
  %571 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = add nsw i64 1900, %572
  %574 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %575 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %574, i32 0, i32 7
  store i64 %573, i64* %575, align 8
  %576 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %577 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %576, i32 0, i32 7
  %578 = load i64, i64* %577, align 8
  %579 = trunc i64 %578 to i32
  %580 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %581 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %580, i32 0, i32 6
  %582 = load i64, i64* %581, align 8
  %583 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %584 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %583, i32 0, i32 5
  %585 = load i32, i32* %584, align 8
  %586 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %587 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %586, i32 0, i32 4
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %590 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %589, i32 0, i32 3
  %591 = load i32, i32* %590, align 8
  %592 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %593 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %592, i32 0, i32 2
  %594 = load i32, i32* %593, align 4
  %595 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %596 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %595, i32 0, i32 1
  %597 = load i32, i32* %596, align 8
  %598 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %599 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %598, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %579, i64 %582, i32 %585, i32 %588, i32 %591, i32 %594, i32 %597, i64 %600)
  br label %647

602:                                              ; preds = %531, %526
  %603 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %603, i32 0, i32 1
  %605 = load i8*, i8** %604, align 8
  %606 = icmp ne i8* %605, null
  br i1 %606, label %607, label %646

607:                                              ; preds = %602
  %608 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %609 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %608, i32 0, i32 1
  %610 = load i8*, i8** %609, align 8
  %611 = call i32 @strlenW(i8* %610)
  %612 = add nsw i32 %611, 1
  %613 = sext i32 %612 to i64
  %614 = mul i64 %613, 1
  %615 = trunc i64 %614 to i32
  store i32 %615, i32* %31, align 4
  %616 = load i32, i32* %31, align 4
  %617 = load i32*, i32** %10, align 8
  %618 = load i32, i32* %617, align 4
  %619 = icmp sgt i32 %616, %618
  br i1 %619, label %620, label %627

620:                                              ; preds = %607
  %621 = load i32, i32* %31, align 4
  %622 = load i32*, i32** %10, align 8
  store i32 %621, i32* %622, align 4
  %623 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %624 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %623, i32 0, i32 3
  %625 = call i32 @LeaveCriticalSection(i32* %624)
  %626 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %626, i32* %6, align 4
  br label %660

627:                                              ; preds = %607
  %628 = load i8*, i8** %9, align 8
  %629 = icmp ne i8* %628, null
  br i1 %629, label %630, label %640

630:                                              ; preds = %627
  %631 = load i8*, i8** %9, align 8
  %632 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %633 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %632, i32 0, i32 1
  %634 = load i8*, i8** %633, align 8
  %635 = load i32, i32* %31, align 4
  %636 = call i32 @memcpy(i8* %631, i8* %634, i32 %635)
  %637 = load i8*, i8** %9, align 8
  %638 = call i32 @debugstr_w(i8* %637)
  %639 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %638)
  br label %640

640:                                              ; preds = %630, %627
  %641 = load i32, i32* %31, align 4
  %642 = sext i32 %641 to i64
  %643 = sub i64 %642, 1
  %644 = trunc i64 %643 to i32
  %645 = load i32*, i32** %10, align 8
  store i32 %644, i32* %645, align 4
  br label %646

646:                                              ; preds = %640, %602
  br label %647

647:                                              ; preds = %646, %534
  br label %648

648:                                              ; preds = %647, %515
  %649 = load i32*, i32** %11, align 8
  %650 = icmp ne i32* %649, null
  br i1 %650, label %651, label %655

651:                                              ; preds = %648
  %652 = load i32*, i32** %11, align 8
  %653 = load i32, i32* %652, align 4
  %654 = add nsw i32 %653, 1
  store i32 %654, i32* %652, align 4
  br label %655

655:                                              ; preds = %651, %648
  %656 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %657 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %656, i32 0, i32 3
  %658 = call i32 @LeaveCriticalSection(i32* %657)
  %659 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %659, i32* %6, align 4
  br label %660

660:                                              ; preds = %655, %620, %502, %444, %385, %351, %322, %293, %264, %234, %185, %170, %138, %94, %59
  %661 = load i32, i32* %6, align 4
  ret i32 %661
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i64 @HTTP_GetCustomHeaderIndex(%struct.TYPE_8__*, i8*, i64, i32) #1

declare dso_local i8* @build_request_header(%struct.TYPE_8__*, i32, i32, i8*, i32) #1

declare dso_local i8* @build_response_header(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @atoiW(i8*) #1

declare dso_local i32 @ConvertTimeString(i8*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
