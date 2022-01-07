; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_path_opaque.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_canonicalize_path_opaque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i8* }

@URL_SCHEME_UNKNOWN = common dso_local global i64 0, align 8
@URL_SCHEME_FILE = common dso_local global i64 0, align 8
@URL_SCHEME_MK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@Uri_CREATE_FILE_USE_DOS_PATH = common dso_local global i32 0, align 4
@URL_SCHEME_JAVASCRIPT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS = common dso_local global i32 0, align 4
@Uri_CREATE_NO_CANONICALIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"(%p %p %x %d): Canonicalized opaque URI path %s len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32)* @canonicalize_path_opaque to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canonicalize_path_opaque(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @URL_SCHEME_UNKNOWN, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @URL_SCHEME_FILE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @URL_SCHEME_MK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %5, align 4
  br label %452

45:                                               ; preds = %4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @URL_SCHEME_JAVASCRIPT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 1
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memcpy(i8* %74, i8* %77, i32 %83)
  br label %85

85:                                               ; preds = %66, %63
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %5, align 4
  br label %452

99:                                               ; preds = %57
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %145

104:                                              ; preds = %99
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 47
  br i1 %110, label %111, label %145

111:                                              ; preds = %104
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 47
  br i1 %118, label %119, label %145

119:                                              ; preds = %111
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %125, i64 %129
  store i8 47, i8* %130, align 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %133, i64 %138
  store i8 46, i8* %139, align 1
  br label %140

140:                                              ; preds = %122, %119
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %140, %111, %104, %99
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %10, align 8
  br label %149

149:                                              ; preds = %378, %145
  %150 = load i8*, i8** %10, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  %159 = icmp ult i8* %150, %158
  br i1 %159, label %160, label %381

160:                                              ; preds = %149
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %14, align 4
  %162 = load i8*, i8** %10, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 37
  br i1 %165, label %166, label %196

166:                                              ; preds = %160
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %196

169:                                              ; preds = %166
  %170 = load i8*, i8** %10, align 8
  %171 = call signext i8 @decode_pct_val(i8* %170)
  store i8 %171, i8* %15, align 1
  %172 = load i8, i8* %15, align 1
  %173 = call i64 @is_unreserved(i8 signext %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %169
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %188, label %178

178:                                              ; preds = %175
  %179 = load i8, i8* %15, align 1
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  store i8 %179, i8* %187, align 1
  br label %188

188:                                              ; preds = %178, %175
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  store i8* %194, i8** %10, align 8
  br label %378

195:                                              ; preds = %169
  br label %355

196:                                              ; preds = %166, %160
  %197 = load i8*, i8** %10, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 47
  br i1 %200, label %201, label %227

201:                                              ; preds = %196
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %227

204:                                              ; preds = %201
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %204
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %221, label %212

212:                                              ; preds = %209
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 3
  %215 = load i8*, i8** %214, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %215, i64 %219
  store i8 92, i8* %220, align 1
  br label %221

221:                                              ; preds = %212, %209
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 8
  %226 = load i32, i32* @FALSE, align 4
  store i32 %226, i32* %14, align 4
  br label %354

227:                                              ; preds = %204, %201, %196
  %228 = load i8*, i8** %10, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 92
  br i1 %231, label %232, label %267

232:                                              ; preds = %227
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %232
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %266

243:                                              ; preds = %240, %237, %232
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %266, label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %260, label %251

251:                                              ; preds = %248
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 3
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %254, i64 %258
  store i8 47, i8* %259, align 1
  br label %260

260:                                              ; preds = %251, %248
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 8
  %265 = load i32, i32* @FALSE, align 4
  store i32 %265, i32* %14, align 4
  br label %266

266:                                              ; preds = %260, %243, %240
  br label %353

267:                                              ; preds = %227
  %268 = load i32, i32* %13, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %298

270:                                              ; preds = %267
  %271 = load i8*, i8** %10, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 58
  br i1 %274, label %275, label %298

275:                                              ; preds = %270
  %276 = load i8*, i8** %10, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 1
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %280, i64 %284
  %286 = icmp ult i8* %277, %285
  br i1 %286, label %287, label %298

287:                                              ; preds = %275
  %288 = load i8*, i8** %10, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 1
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 58
  br i1 %292, label %293, label %298

293:                                              ; preds = %287
  %294 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %295 = xor i32 %294, -1
  %296 = load i32, i32* %8, align 4
  %297 = and i32 %296, %295
  store i32 %297, i32* %8, align 4
  br label %352

298:                                              ; preds = %287, %275, %270, %267
  %299 = load i32, i32* %11, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %351

301:                                              ; preds = %298
  %302 = load i8*, i8** %10, align 8
  %303 = load i8, i8* %302, align 1
  %304 = call i64 @is_ascii(i8 signext %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %351

306:                                              ; preds = %301
  %307 = load i8*, i8** %10, align 8
  %308 = load i8, i8* %307, align 1
  %309 = call i64 @is_unreserved(i8 signext %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %351, label %311

311:                                              ; preds = %306
  %312 = load i8*, i8** %10, align 8
  %313 = load i8, i8* %312, align 1
  %314 = call i32 @is_reserved(i8 signext %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %351, label %316

316:                                              ; preds = %311
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* @Uri_CREATE_NO_ENCODE_FORBIDDEN_CHARACTERS, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %351, label %321

321:                                              ; preds = %316
  %322 = load i32, i32* %12, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = load i32, i32* %8, align 4
  %326 = load i32, i32* @Uri_CREATE_FILE_USE_DOS_PATH, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %350, label %329

329:                                              ; preds = %324, %321
  %330 = load i32, i32* %9, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %344, label %332

332:                                              ; preds = %329
  %333 = load i8*, i8** %10, align 8
  %334 = load i8, i8* %333, align 1
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 3
  %337 = load i8*, i8** %336, align 8
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %337, i64 %341
  %343 = call i32 @pct_encode_val(i8 signext %334, i8* %342)
  br label %344

344:                                              ; preds = %332, %329
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = add nsw i32 %347, 3
  store i32 %348, i32* %346, align 8
  %349 = load i32, i32* @FALSE, align 4
  store i32 %349, i32* %14, align 4
  br label %350

350:                                              ; preds = %344, %324
  br label %351

351:                                              ; preds = %350, %316, %311, %306, %301, %298
  br label %352

352:                                              ; preds = %351, %293
  br label %353

353:                                              ; preds = %352, %266
  br label %354

354:                                              ; preds = %353, %221
  br label %355

355:                                              ; preds = %354, %195
  %356 = load i32, i32* %14, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %377

358:                                              ; preds = %355
  %359 = load i32, i32* %9, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %372, label %361

361:                                              ; preds = %358
  %362 = load i8*, i8** %10, align 8
  %363 = load i8, i8* %362, align 1
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 3
  %366 = load i8*, i8** %365, align 8
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %366, i64 %370
  store i8 %363, i8* %371, align 1
  br label %372

372:                                              ; preds = %361, %358
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %374, align 8
  br label %377

377:                                              ; preds = %372, %355
  br label %378

378:                                              ; preds = %377, %188
  %379 = load i8*, i8** %10, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** %10, align 8
  br label %149

381:                                              ; preds = %149
  %382 = load i32, i32* %13, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %417

384:                                              ; preds = %381
  %385 = load i32, i32* %9, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %417, label %387

387:                                              ; preds = %384
  %388 = load i32, i32* %8, align 4
  %389 = load i32, i32* @Uri_CREATE_NO_CANONICALIZE, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %417, label %392

392:                                              ; preds = %387
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 3
  %395 = load i8*, i8** %394, align 8
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %395, i64 %399
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = sub nsw i32 %403, %406
  %408 = sext i32 %407 to i64
  %409 = call i32 @remove_dot_segments(i8* %400, i64 %408)
  store i32 %409, i32* %16, align 4
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* %16, align 4
  %414 = add nsw i32 %412, %413
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 2
  store i32 %414, i32* %416, align 8
  br label %417

417:                                              ; preds = %392, %387, %384, %381
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = sub nsw i32 %420, %423
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 1
  store i32 %424, i32* %426, align 4
  %427 = load i32, i32* %9, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %450, label %429

429:                                              ; preds = %417
  %430 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %431 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %432 = load i32, i32* %8, align 4
  %433 = load i32, i32* %9, align 4
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 3
  %436 = load i8*, i8** %435, align 8
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %436, i64 %440
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @debugstr_wn(i8* %441, i32 %444)
  %446 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = call i32 @TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %430, %struct.TYPE_8__* %431, i32 %432, i32 %433, i32 %445, i32 %448)
  br label %450

450:                                              ; preds = %429, %417
  %451 = load i32, i32* @TRUE, align 4
  store i32 %451, i32* %5, align 4
  br label %452

452:                                              ; preds = %450, %85, %39
  %453 = load i32, i32* %5, align 4
  ret i32 %453
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i8 @decode_pct_val(i8*) #1

declare dso_local i64 @is_unreserved(i8 signext) #1

declare dso_local i64 @is_ascii(i8 signext) #1

declare dso_local i32 @is_reserved(i8 signext) #1

declare dso_local i32 @pct_encode_val(i8 signext, i8*) #1

declare dso_local i32 @remove_dot_segments(i8*, i64) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @debugstr_wn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
