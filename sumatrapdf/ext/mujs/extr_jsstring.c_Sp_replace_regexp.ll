; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_replace_regexp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_replace_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i8* }

@JS_REGEXP_G = common dso_local global i32 0, align 4
@REG_NOTBOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_replace_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_replace_regexp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @checkstring(i32* %11, i32 0)
  store i8* %12, i8** %4, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_12__* @js_toregexp(i32* %13, i32 1)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @js_doregexec(i32* %15, i32 %18, i8* %19, %struct.TYPE_14__* %10, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @js_copy(i32* %23, i32 0)
  br label %337

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %299, %25
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %38 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %2, align 8
  %49 = call i64 @js_iscallable(i32* %48, i32 2)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %122

51:                                               ; preds = %28
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @js_copy(i32* %52, i32 2)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @js_pushundefined(i32* %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %93, %51
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %96

65:                                               ; preds = %56
  %66 = load i32*, i32** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = ptrtoint i8* %80 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @js_pushlstring(i32* %66, i8* %73, i8* %91)
  br label %93

93:                                               ; preds = %65
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %56

96:                                               ; preds = %56
  %97 = load i32*, i32** %2, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @js_pushnumber(i32* %97, i32 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @js_copy(i32* %105, i32 0)
  %107 = load i32*, i32** %2, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 2, %108
  %110 = call i32 @js_call(i32* %107, i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call i8* @js_tostring(i32* %111, i32 -1)
  store i8* %112, i8** %6, align 8
  %113 = load i32*, i32** %2, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @js_putm(i32* %113, %struct.TYPE_13__** %7, i8* %114, i8* %115)
  %117 = load i32*, i32** %2, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @js_puts(i32* %117, %struct.TYPE_13__** %7, i8* %118)
  %120 = load i32*, i32** %2, align 8
  %121 = call i32 @js_pop(i32* %120, i32 1)
  br label %263

122:                                              ; preds = %28
  %123 = load i32*, i32** %2, align 8
  %124 = call i8* @js_tostring(i32* %123, i32 2)
  store i8* %124, i8** %6, align 8
  %125 = load i32*, i32** %2, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @js_putm(i32* %125, %struct.TYPE_13__** %7, i8* %126, i8* %127)
  br label %129

129:                                              ; preds = %261, %122
  %130 = load i8*, i8** %6, align 8
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  br i1 %132, label %133, label %262

133:                                              ; preds = %129
  %134 = load i8*, i8** %6, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 36
  br i1 %137, label %138, label %255

138:                                              ; preds = %133
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  switch i32 %142, label %245 [
    i32 0, label %143
    i32 36, label %146
    i32 96, label %149
    i32 39, label %154
    i32 38, label %161
    i32 48, label %169
    i32 49, label %169
    i32 50, label %169
    i32 51, label %169
    i32 52, label %169
    i32 53, label %169
    i32 54, label %169
    i32 55, label %169
    i32 56, label %169
    i32 57, label %169
  ]

143:                                              ; preds = %138
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 -1
  store i8* %145, i8** %6, align 8
  br label %146

146:                                              ; preds = %138, %143
  %147 = load i32*, i32** %2, align 8
  %148 = call i32 @js_putc(i32* %147, %struct.TYPE_13__** %7, i8 signext 36)
  br label %252

149:                                              ; preds = %138
  %150 = load i32*, i32** %2, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 @js_putm(i32* %150, %struct.TYPE_13__** %7, i8* %151, i8* %152)
  br label %252

154:                                              ; preds = %138
  %155 = load i32*, i32** %2, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = call i32 @js_puts(i32* %155, %struct.TYPE_13__** %7, i8* %159)
  br label %252

161:                                              ; preds = %138
  %162 = load i32*, i32** %2, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = call i32 @js_putm(i32* %162, %struct.TYPE_13__** %7, i8* %163, i8* %167)
  br label %252

169:                                              ; preds = %138, %138, %138, %138, %138, %138, %138, %138, %138, %138
  %170 = load i8*, i8** %6, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = sub nsw i32 %172, 48
  store i32 %173, i32* %9, align 4
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp sge i32 %177, 48
  br i1 %178, label %179, label %194

179:                                              ; preds = %169
  %180 = load i8*, i8** %6, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp sle i32 %183, 57
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = mul nsw i32 %186, 10
  %188 = load i8*, i8** %6, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %6, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = add nsw i32 %187, %191
  %193 = sub nsw i32 %192, 48
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %185, %179, %169
  %195 = load i32, i32* %9, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %194
  %198 = load i32, i32* %9, align 4
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %202, label %219

202:                                              ; preds = %197
  %203 = load i32*, i32** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @js_putm(i32* %203, %struct.TYPE_13__** %7, i8* %210, i8* %217)
  br label %244

219:                                              ; preds = %197, %194
  %220 = load i32*, i32** %2, align 8
  %221 = call i32 @js_putc(i32* %220, %struct.TYPE_13__** %7, i8 signext 36)
  %222 = load i32, i32* %9, align 4
  %223 = icmp sgt i32 %222, 10
  br i1 %223, label %224, label %237

224:                                              ; preds = %219
  %225 = load i32*, i32** %2, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sdiv i32 %226, 10
  %228 = add nsw i32 48, %227
  %229 = trunc i32 %228 to i8
  %230 = call i32 @js_putc(i32* %225, %struct.TYPE_13__** %7, i8 signext %229)
  %231 = load i32*, i32** %2, align 8
  %232 = load i32, i32* %9, align 4
  %233 = srem i32 %232, 10
  %234 = add nsw i32 48, %233
  %235 = trunc i32 %234 to i8
  %236 = call i32 @js_putc(i32* %231, %struct.TYPE_13__** %7, i8 signext %235)
  br label %243

237:                                              ; preds = %219
  %238 = load i32*, i32** %2, align 8
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 48, %239
  %241 = trunc i32 %240 to i8
  %242 = call i32 @js_putc(i32* %238, %struct.TYPE_13__** %7, i8 signext %241)
  br label %243

243:                                              ; preds = %237, %224
  br label %244

244:                                              ; preds = %243, %202
  br label %252

245:                                              ; preds = %138
  %246 = load i32*, i32** %2, align 8
  %247 = call i32 @js_putc(i32* %246, %struct.TYPE_13__** %7, i8 signext 36)
  %248 = load i32*, i32** %2, align 8
  %249 = load i8*, i8** %6, align 8
  %250 = load i8, i8* %249, align 1
  %251 = call i32 @js_putc(i32* %248, %struct.TYPE_13__** %7, i8 signext %250)
  br label %252

252:                                              ; preds = %245, %244, %161, %154, %149, %146
  %253 = load i8*, i8** %6, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %6, align 8
  br label %261

255:                                              ; preds = %133
  %256 = load i32*, i32** %2, align 8
  %257 = load i8*, i8** %6, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %6, align 8
  %259 = load i8, i8* %257, align 1
  %260 = call i32 @js_putc(i32* %256, %struct.TYPE_13__** %7, i8 signext %259)
  br label %261

261:                                              ; preds = %255, %252
  br label %129

262:                                              ; preds = %129
  br label %263

263:                                              ; preds = %262, %96
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @JS_REGEXP_G, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %301

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i64 0
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  store i8* %275, i8** %4, align 8
  %276 = load i32, i32* %8, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %270
  %279 = load i8*, i8** %4, align 8
  %280 = load i8, i8* %279, align 1
  %281 = icmp ne i8 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %278
  %283 = load i32*, i32** %2, align 8
  %284 = load i8*, i8** %4, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %4, align 8
  %286 = load i8, i8* %284, align 1
  %287 = call i32 @js_putc(i32* %283, %struct.TYPE_13__** %7, i8 signext %286)
  br label %289

288:                                              ; preds = %278
  br label %302

289:                                              ; preds = %282
  br label %290

290:                                              ; preds = %289, %270
  %291 = load i32*, i32** %2, align 8
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i8*, i8** %4, align 8
  %296 = load i32, i32* @REG_NOTBOL, align 4
  %297 = call i64 @js_doregexec(i32* %291, i32 %294, i8* %295, %struct.TYPE_14__* %10, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %290
  br label %28

300:                                              ; preds = %290
  br label %301

301:                                              ; preds = %300, %263
  br label %302

302:                                              ; preds = %301, %288
  %303 = load i32*, i32** %2, align 8
  %304 = load i8*, i8** %5, align 8
  %305 = load i32, i32* %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  %308 = call i32 @js_puts(i32* %303, %struct.TYPE_13__** %7, i8* %307)
  %309 = load i32*, i32** %2, align 8
  %310 = call i32 @js_putc(i32* %309, %struct.TYPE_13__** %7, i8 signext 0)
  %311 = load i32*, i32** %2, align 8
  %312 = call i64 @js_try(i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %302
  %315 = load i32*, i32** %2, align 8
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %317 = call i32 @js_free(i32* %315, %struct.TYPE_13__* %316)
  %318 = load i32*, i32** %2, align 8
  %319 = call i32 @js_throw(i32* %318)
  br label %320

320:                                              ; preds = %314, %302
  %321 = load i32*, i32** %2, align 8
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %323 = icmp ne %struct.TYPE_13__* %322, null
  br i1 %323, label %324, label %328

324:                                              ; preds = %320
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  br label %329

328:                                              ; preds = %320
  br label %329

329:                                              ; preds = %328, %324
  %330 = phi i8* [ %327, %324 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %328 ]
  %331 = call i32 @js_pushstring(i32* %321, i8* %330)
  %332 = load i32*, i32** %2, align 8
  %333 = call i32 @js_endtry(i32* %332)
  %334 = load i32*, i32** %2, align 8
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %336 = call i32 @js_free(i32* %334, %struct.TYPE_13__* %335)
  br label %337

337:                                              ; preds = %329, %22
  ret void
}

declare dso_local i8* @checkstring(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @js_toregexp(i32*, i32) #1

declare dso_local i64 @js_doregexec(i32*, i32, i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i64 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_pushlstring(i32*, i8*, i8*) #1

declare dso_local i32 @js_pushnumber(i32*, i32) #1

declare dso_local i32 @js_call(i32*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i32 @js_putm(i32*, %struct.TYPE_13__**, i8*, i8*) #1

declare dso_local i32 @js_puts(i32*, %struct.TYPE_13__**, i8*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_putc(i32*, %struct.TYPE_13__**, i8 signext) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_endtry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
