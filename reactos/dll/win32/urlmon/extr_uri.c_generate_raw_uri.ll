; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_generate_raw_uri.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_generate_raw_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i8*, i32, i64, i8*, i8*, i32, i8*, i32, i64, i32, i64, i8*, i32, i8*, i32, i8*, i32, i32, i64 }

@RAW_URI_CONVERT_TO_DOS_PATH = common dso_local global i32 0, align 4
@URL_SCHEME_FILE = common dso_local global i64 0, align 8
@Uri_HOST_IPV6 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@default_ports = common dso_local global %struct.TYPE_7__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@RAW_URI_FORCE_PORT_DISP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"(%p %p): Generated raw uri=%s len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"(%p %p): Computed raw uri len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @generate_raw_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_raw_uri(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memcpy(i8* %20, i8* %23, i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  store i8 58, i8* %36, align 1
  br label %37

37:                                               ; preds = %19, %16
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %37, %3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 17
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %97, label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 47, i8* %56, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 47, i8* %61, align 1
  br label %62

62:                                               ; preds = %52, %49
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @RAW_URI_CONVERT_TO_DOS_PATH, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %62
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @URL_SCHEME_FILE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 92, i8* %87, align 1
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 92, i8* %92, align 1
  br label %93

93:                                               ; preds = %83, %80
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 2
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %93, %75, %69, %62
  br label %97

97:                                               ; preds = %96, %44
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %126

102:                                              ; preds = %97
  %103 = load i8*, i8** %5, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memcpy(i8* %109, i8* %112, i32 %118)
  br label %120

120:                                              ; preds = %105, %102
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %120, %97
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 6
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %161

131:                                              ; preds = %126
  %132 = load i8*, i8** %5, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %154

134:                                              ; preds = %131
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  store i8 58, i8* %138, align 1
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 6
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = trunc i64 %151 to i32
  %153 = call i32 @memcpy(i8* %143, i8* %146, i32 %152)
  br label %154

154:                                              ; preds = %134, %131
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %154, %126
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 6
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %182

171:                                              ; preds = %166, %161
  %172 = load i8*, i8** %5, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  store i8 64, i8* %178, align 1
  br label %179

179:                                              ; preds = %174, %171
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %179, %166
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %254

187:                                              ; preds = %182
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 8
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @Uri_HOST_IPV6, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %187
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 91
  br label %200

200:                                              ; preds = %193, %187
  %201 = phi i1 [ false, %187 ], [ %199, %193 ]
  %202 = zext i1 %201 to i32
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %8, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %200
  %206 = load i8*, i8** %5, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i8*, i8** %5, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  store i8 91, i8* %212, align 1
  br label %213

213:                                              ; preds = %208, %205
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %213, %200
  %217 = load i8*, i8** %5, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %234

219:                                              ; preds = %216
  %220 = load i8*, i8** %5, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 3
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = mul i64 %230, 4
  %232 = trunc i64 %231 to i32
  %233 = call i32 @memcpy(i8* %223, i8* %226, i32 %232)
  br label %234

234:                                              ; preds = %219, %216
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %234
  %243 = load i8*, i8** %5, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load i8*, i8** %5, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  store i8 93, i8* %249, align 1
  br label %250

250:                                              ; preds = %245, %242
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %7, align 4
  br label %253

253:                                              ; preds = %250, %234
  br label %254

254:                                              ; preds = %253, %182
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 18
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %339

259:                                              ; preds = %254
  %260 = load i32, i32* @FALSE, align 4
  store i32 %260, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %261

261:                                              ; preds = %291, %259
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** @default_ports, align 8
  %264 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %263)
  %265 = icmp slt i32 %262, %264
  br i1 %265, label %266, label %294

266:                                              ; preds = %261
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** @default_ports, align 8
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp eq i64 %269, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %266
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 10
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** @default_ports, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %280, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %277
  %289 = load i32, i32* @TRUE, align 4
  store i32 %289, i32* %10, align 4
  br label %290

290:                                              ; preds = %288, %277, %266
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %261

294:                                              ; preds = %261
  %295 = load i32, i32* %10, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load i32, i32* %6, align 4
  %299 = load i32, i32* @RAW_URI_FORCE_PORT_DISP, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %338

302:                                              ; preds = %297, %294
  %303 = load i8*, i8** %5, align 8
  %304 = icmp ne i8* %303, null
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load i8*, i8** %5, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  store i8 58, i8* %309, align 1
  br label %310

310:                                              ; preds = %305, %302
  %311 = load i32, i32* %7, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %7, align 4
  %313 = load i8*, i8** %5, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %328

315:                                              ; preds = %310
  %316 = load i8*, i8** %5, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %316, i64 %318
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 10
  %322 = load i64, i64* %321, align 8
  %323 = call i64 @ui2str(i8* %319, i64 %322)
  %324 = load i32, i32* %7, align 4
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %325, %323
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %7, align 4
  br label %337

328:                                              ; preds = %310
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 10
  %331 = load i64, i64* %330, align 8
  %332 = call i64 @ui2str(i8* null, i64 %331)
  %333 = load i32, i32* %7, align 4
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %334, %332
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %7, align 4
  br label %337

337:                                              ; preds = %328, %315
  br label %338

338:                                              ; preds = %337, %297
  br label %339

339:                                              ; preds = %338, %254
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 17
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %367, label %344

344:                                              ; preds = %339
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 11
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %367

349:                                              ; preds = %344
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 11
  %352 = load i8*, i8** %351, align 8
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp ne i32 %354, 47
  br i1 %355, label %356, label %367

356:                                              ; preds = %349
  %357 = load i8*, i8** %5, align 8
  %358 = icmp ne i8* %357, null
  br i1 %358, label %359, label %364

359:                                              ; preds = %356
  %360 = load i8*, i8** %5, align 8
  %361 = load i32, i32* %7, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %360, i64 %362
  store i8 47, i8* %363, align 1
  br label %364

364:                                              ; preds = %359, %356
  %365 = load i32, i32* %7, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %7, align 4
  br label %367

367:                                              ; preds = %364, %349, %344, %339
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 11
  %370 = load i8*, i8** %369, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %440

372:                                              ; preds = %367
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 17
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %415, label %377

377:                                              ; preds = %372
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* @URL_SCHEME_FILE, align 8
  %382 = icmp eq i64 %380, %381
  br i1 %382, label %383, label %415

383:                                              ; preds = %377
  %384 = load i32, i32* %6, align 4
  %385 = load i32, i32* @RAW_URI_CONVERT_TO_DOS_PATH, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %415

388:                                              ; preds = %383
  store i32 0, i32* %11, align 4
  %389 = load i8*, i8** %5, align 8
  %390 = icmp ne i8* %389, null
  br i1 %390, label %391, label %403

391:                                              ; preds = %388
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 11
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 12
  %397 = load i32, i32* %396, align 8
  %398 = load i8*, i8** %5, align 8
  %399 = load i32, i32* %7, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, i8* %398, i64 %400
  %402 = call i32 @convert_to_dos_path(i8* %394, i32 %397, i8* %401, i32* %11)
  br label %411

403:                                              ; preds = %388
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 11
  %406 = load i8*, i8** %405, align 8
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 12
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @convert_to_dos_path(i8* %406, i32 %409, i8* null, i32* %11)
  br label %411

411:                                              ; preds = %403, %391
  %412 = load i32, i32* %11, align 4
  %413 = load i32, i32* %7, align 4
  %414 = add nsw i32 %413, %412
  store i32 %414, i32* %7, align 4
  br label %439

415:                                              ; preds = %383, %377, %372
  %416 = load i8*, i8** %5, align 8
  %417 = icmp ne i8* %416, null
  br i1 %417, label %418, label %433

418:                                              ; preds = %415
  %419 = load i8*, i8** %5, align 8
  %420 = load i32, i32* %7, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8, i8* %419, i64 %421
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 11
  %425 = load i8*, i8** %424, align 8
  %426 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 12
  %428 = load i32, i32* %427, align 8
  %429 = sext i32 %428 to i64
  %430 = mul i64 %429, 4
  %431 = trunc i64 %430 to i32
  %432 = call i32 @memcpy(i8* %422, i8* %425, i32 %431)
  br label %433

433:                                              ; preds = %418, %415
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 12
  %436 = load i32, i32* %435, align 8
  %437 = load i32, i32* %7, align 4
  %438 = add nsw i32 %437, %436
  store i32 %438, i32* %7, align 4
  br label %439

439:                                              ; preds = %433, %411
  br label %440

440:                                              ; preds = %439, %367
  %441 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 13
  %443 = load i8*, i8** %442, align 8
  %444 = icmp ne i8* %443, null
  br i1 %444, label %445, label %469

445:                                              ; preds = %440
  %446 = load i8*, i8** %5, align 8
  %447 = icmp ne i8* %446, null
  br i1 %447, label %448, label %463

448:                                              ; preds = %445
  %449 = load i8*, i8** %5, align 8
  %450 = load i32, i32* %7, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, i8* %449, i64 %451
  %453 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 13
  %455 = load i8*, i8** %454, align 8
  %456 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 14
  %458 = load i32, i32* %457, align 8
  %459 = sext i32 %458 to i64
  %460 = mul i64 %459, 4
  %461 = trunc i64 %460 to i32
  %462 = call i32 @memcpy(i8* %452, i8* %455, i32 %461)
  br label %463

463:                                              ; preds = %448, %445
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 14
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* %7, align 4
  %468 = add nsw i32 %467, %466
  store i32 %468, i32* %7, align 4
  br label %469

469:                                              ; preds = %463, %440
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 15
  %472 = load i8*, i8** %471, align 8
  %473 = icmp ne i8* %472, null
  br i1 %473, label %474, label %498

474:                                              ; preds = %469
  %475 = load i8*, i8** %5, align 8
  %476 = icmp ne i8* %475, null
  br i1 %476, label %477, label %492

477:                                              ; preds = %474
  %478 = load i8*, i8** %5, align 8
  %479 = load i32, i32* %7, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i8, i8* %478, i64 %480
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 15
  %484 = load i8*, i8** %483, align 8
  %485 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 16
  %487 = load i32, i32* %486, align 8
  %488 = sext i32 %487 to i64
  %489 = mul i64 %488, 4
  %490 = trunc i64 %489 to i32
  %491 = call i32 @memcpy(i8* %481, i8* %484, i32 %490)
  br label %492

492:                                              ; preds = %477, %474
  %493 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %493, i32 0, i32 16
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* %7, align 4
  %497 = add nsw i32 %496, %495
  store i32 %497, i32* %7, align 4
  br label %498

498:                                              ; preds = %492, %469
  %499 = load i8*, i8** %5, align 8
  %500 = icmp ne i8* %499, null
  br i1 %500, label %501, label %509

501:                                              ; preds = %498
  %502 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %503 = load i8*, i8** %5, align 8
  %504 = load i8*, i8** %5, align 8
  %505 = load i32, i32* %7, align 4
  %506 = call i32 @debugstr_wn(i8* %504, i32 %505)
  %507 = load i32, i32* %7, align 4
  %508 = call i32 (i8*, %struct.TYPE_6__*, i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %502, i8* %503, i32 %506, i32 %507)
  br label %514

509:                                              ; preds = %498
  %510 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %511 = load i8*, i8** %5, align 8
  %512 = load i32, i32* %7, align 4
  %513 = call i32 (i8*, %struct.TYPE_6__*, i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %510, i8* %511, i32 %512)
  br label %514

514:                                              ; preds = %509, %501
  %515 = load i32, i32* %7, align 4
  ret i32 %515
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @ui2str(i8*, i64) #1

declare dso_local i32 @convert_to_dos_path(i8*, i32, i8*, i32*) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
