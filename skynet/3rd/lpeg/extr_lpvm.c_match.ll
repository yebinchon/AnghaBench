; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpvm.c_match.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpvm.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i8*, i32, i32, i32 }
%struct.TYPE_27__ = type { i8*, i32, %struct.TYPE_28__* }
%struct.TYPE_30__ = type { i8*, i32, %struct.TYPE_29__*, i32* }

@INITBACK = common dso_local global i32 0, align 4
@INITCAPSIZE = common dso_local global i32 0, align 4
@giveup = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@Cclose = common dso_local global i32 0, align 4
@CHARSETINSTSIZE = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"too many results in match-time capture\00", align 1
@UCHAR_MAX = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @match(i32* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_28__* %4, %struct.TYPE_29__* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_28__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_30__, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_28__* %4, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_29__* %5, %struct.TYPE_29__** %14, align 8
  store i32 %6, i32* %15, align 4
  %35 = load i32, i32* @INITBACK, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %16, align 8
  %38 = alloca %struct.TYPE_27__, i64 %36, align 16
  store i64 %36, i64* %17, align 8
  %39 = load i32, i32* @INITBACK, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i64 %40
  store %struct.TYPE_27__* %41, %struct.TYPE_27__** %18, align 8
  store %struct.TYPE_27__* %38, %struct.TYPE_27__** %19, align 8
  %42 = load i32, i32* @INITCAPSIZE, align 4
  store i32 %42, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %43, %struct.TYPE_28__** %23, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 2
  store %struct.TYPE_28__* @giveup, %struct.TYPE_28__** %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 1
  store %struct.TYPE_27__* %52, %struct.TYPE_27__** %19, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @lua_pushlightuserdata(i32* %53, %struct.TYPE_27__* %38)
  br label %55

55:                                               ; preds = %704, %609, %577, %467, %411, %382, %359, %333, %307, %293, %288, %259, %244, %216, %192, %169, %149, %135, %117, %7
  %56 = load i32, i32* %15, align 4
  %57 = call i64 @stackidx(i32 %56)
  %58 = load i32, i32* %22, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @lua_gettop(i32* %61)
  %63 = icmp eq i64 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp sle i32 %65, %66
  br label %68

68:                                               ; preds = %64, %55
  %69 = phi i1 [ false, %55 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %707 [
    i32 141, label %76
    i32 137, label %97
    i32 133, label %105
    i32 150, label %125
    i32 130, label %136
    i32 146, label %150
    i32 129, label %170
    i32 132, label %193
    i32 128, label %217
    i32 148, label %245
    i32 131, label %267
    i32 136, label %293
    i32 145, label %299
    i32 147, label %325
    i32 142, label %347
    i32 134, label %370
    i32 149, label %399
    i32 139, label %427
    i32 140, label %437
    i32 143, label %474
    i32 144, label %580
    i32 135, label %643
    i32 138, label %655
  ]

76:                                               ; preds = %68
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call %struct.TYPE_27__* @getstackbase(i32* %78, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i64 1
  %82 = icmp eq %struct.TYPE_27__* %77, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* @Cclose, align 4
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %87 = load i32, i32* %21, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 2
  store i32 %85, i32* %90, align 4
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %92 = load i32, i32* %21, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  store i8* null, i8** %95, align 8
  %96 = load i8*, i8** %11, align 8
  store i8* %96, i8** %8, align 8
  store i32 1, i32* %24, align 4
  br label %709

97:                                               ; preds = %68
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call %struct.TYPE_27__* @getstackbase(i32* %99, i32 %100)
  %102 = icmp eq %struct.TYPE_27__* %98, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  store i8* null, i8** %8, align 8
  store i32 1, i32* %24, align 4
  br label %709

105:                                              ; preds = %68
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call %struct.TYPE_27__* @getstackbase(i32* %107, i32 %108)
  %110 = icmp ugt %struct.TYPE_27__* %106, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i64 -1
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = icmp eq i8* %115, null
  br label %117

117:                                              ; preds = %111, %105
  %118 = phi i1 [ false, %105 ], [ %116, %111 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 -1
  store %struct.TYPE_27__* %122, %struct.TYPE_27__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %123, align 8
  store %struct.TYPE_28__* %124, %struct.TYPE_28__** %23, align 8
  br label %55

125:                                              ; preds = %68
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = icmp ult i8* %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 1
  store %struct.TYPE_28__* %131, %struct.TYPE_28__** %23, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %11, align 8
  br label %135

134:                                              ; preds = %125
  br label %438

135:                                              ; preds = %129
  br label %55

136:                                              ; preds = %68
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = icmp ult i8* %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i64 2
  store %struct.TYPE_28__* %142, %struct.TYPE_28__** %23, align 8
  br label %149

143:                                              ; preds = %136
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %145 = call i32 @getoffset(%struct.TYPE_28__* %144)
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i64 %147
  store %struct.TYPE_28__* %148, %struct.TYPE_28__** %23, align 8
  br label %149

149:                                              ; preds = %143, %140
  br label %55

150:                                              ; preds = %68
  %151 = load i8*, i8** %11, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %153, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %150
  %160 = load i8*, i8** %11, align 8
  %161 = load i8*, i8** %12, align 8
  %162 = icmp ult i8* %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 1
  store %struct.TYPE_28__* %165, %struct.TYPE_28__** %23, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %11, align 8
  br label %169

168:                                              ; preds = %159, %150
  br label %438

169:                                              ; preds = %163
  br label %55

170:                                              ; preds = %68
  %171 = load i8*, i8** %11, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %173, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %170
  %180 = load i8*, i8** %11, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = icmp ult i8* %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i64 2
  store %struct.TYPE_28__* %185, %struct.TYPE_28__** %23, align 8
  br label %192

186:                                              ; preds = %179, %170
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %188 = call i32 @getoffset(%struct.TYPE_28__* %187)
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i64 %190
  store %struct.TYPE_28__* %191, %struct.TYPE_28__** %23, align 8
  br label %192

192:                                              ; preds = %186, %183
  br label %55

193:                                              ; preds = %68
  %194 = load i8*, i8** %11, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  store i32 %196, i32* %25, align 4
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i64 1
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %25, align 4
  %202 = call i32 @testchar(i32 %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %193
  %205 = load i8*, i8** %11, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = icmp ult i8* %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load i32, i32* @CHARSETINSTSIZE, align 4
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i64 %211
  store %struct.TYPE_28__* %212, %struct.TYPE_28__** %23, align 8
  %213 = load i8*, i8** %11, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %11, align 8
  br label %216

215:                                              ; preds = %204, %193
  br label %438

216:                                              ; preds = %208
  br label %55

217:                                              ; preds = %68
  %218 = load i8*, i8** %11, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  store i32 %220, i32* %26, align 4
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i64 2
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %26, align 4
  %226 = call i32 @testchar(i32 %224, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %217
  %229 = load i8*, i8** %11, align 8
  %230 = load i8*, i8** %12, align 8
  %231 = icmp ult i8* %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %228
  %233 = load i32, i32* @CHARSETINSTSIZE, align 4
  %234 = add nsw i32 1, %233
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i64 %236
  store %struct.TYPE_28__* %237, %struct.TYPE_28__** %23, align 8
  br label %244

238:                                              ; preds = %228, %217
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %240 = call i32 @getoffset(%struct.TYPE_28__* %239)
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i64 %242
  store %struct.TYPE_28__* %243, %struct.TYPE_28__** %23, align 8
  br label %244

244:                                              ; preds = %238, %232
  br label %55

245:                                              ; preds = %68
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %27, align 4
  %250 = load i32, i32* %27, align 4
  %251 = sext i32 %250 to i64
  %252 = load i8*, i8** %11, align 8
  %253 = load i8*, i8** %10, align 8
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = icmp sgt i64 %251, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %245
  br label %438

259:                                              ; preds = %245
  %260 = load i32, i32* %27, align 4
  %261 = load i8*, i8** %11, align 8
  %262 = sext i32 %260 to i64
  %263 = sub i64 0, %262
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  store i8* %264, i8** %11, align 8
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %266 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %265, i32 1
  store %struct.TYPE_28__* %266, %struct.TYPE_28__** %23, align 8
  br label %55

267:                                              ; preds = %68
  br label %268

268:                                              ; preds = %285, %267
  %269 = load i8*, i8** %11, align 8
  %270 = load i8*, i8** %12, align 8
  %271 = icmp ult i8* %269, %270
  br i1 %271, label %272, label %288

272:                                              ; preds = %268
  %273 = load i8*, i8** %11, align 8
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  store i32 %275, i32* %28, align 4
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i64 1
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %28, align 4
  %281 = call i32 @testchar(i32 %279, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %284, label %283

283:                                              ; preds = %272
  br label %288

284:                                              ; preds = %272
  br label %285

285:                                              ; preds = %284
  %286 = load i8*, i8** %11, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %11, align 8
  br label %268

288:                                              ; preds = %283, %268
  %289 = load i32, i32* @CHARSETINSTSIZE, align 4
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i64 %291
  store %struct.TYPE_28__* %292, %struct.TYPE_28__** %23, align 8
  br label %55

293:                                              ; preds = %68
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %295 = call i32 @getoffset(%struct.TYPE_28__* %294)
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i64 %297
  store %struct.TYPE_28__* %298, %struct.TYPE_28__** %23, align 8
  br label %55

299:                                              ; preds = %68
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %302 = icmp eq %struct.TYPE_27__* %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %299
  %304 = load i32*, i32** %9, align 8
  %305 = load i32, i32* %15, align 4
  %306 = call %struct.TYPE_27__* @doublestack(i32* %304, %struct.TYPE_27__** %18, i32 %305)
  store %struct.TYPE_27__* %306, %struct.TYPE_27__** %19, align 8
  br label %307

307:                                              ; preds = %303, %299
  %308 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %310 = call i32 @getoffset(%struct.TYPE_28__* %309)
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i64 %311
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 2
  store %struct.TYPE_28__* %312, %struct.TYPE_28__** %314, align 8
  %315 = load i8*, i8** %11, align 8
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %317 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %316, i32 0, i32 0
  store i8* %315, i8** %317, align 8
  %318 = load i32, i32* %21, align 4
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 8
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %322 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %321, i32 1
  store %struct.TYPE_27__* %322, %struct.TYPE_27__** %19, align 8
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i64 2
  store %struct.TYPE_28__* %324, %struct.TYPE_28__** %23, align 8
  br label %55

325:                                              ; preds = %68
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %327 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %328 = icmp eq %struct.TYPE_27__* %326, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %325
  %330 = load i32*, i32** %9, align 8
  %331 = load i32, i32* %15, align 4
  %332 = call %struct.TYPE_27__* @doublestack(i32* %330, %struct.TYPE_27__** %18, i32 %331)
  store %struct.TYPE_27__* %332, %struct.TYPE_27__** %19, align 8
  br label %333

333:                                              ; preds = %329, %325
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 0
  store i8* null, i8** %335, align 8
  %336 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %337 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %336, i64 2
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 2
  store %struct.TYPE_28__* %337, %struct.TYPE_28__** %339, align 8
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %340, i32 1
  store %struct.TYPE_27__* %341, %struct.TYPE_27__** %19, align 8
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %343 = call i32 @getoffset(%struct.TYPE_28__* %342)
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i64 %345
  store %struct.TYPE_28__* %346, %struct.TYPE_28__** %23, align 8
  br label %55

347:                                              ; preds = %68
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %349 = load i32*, i32** %9, align 8
  %350 = load i32, i32* %15, align 4
  %351 = call %struct.TYPE_27__* @getstackbase(i32* %349, i32 %350)
  %352 = icmp ugt %struct.TYPE_27__* %348, %351
  br i1 %352, label %353, label %359

353:                                              ; preds = %347
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %354, i64 -1
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = icmp ne i8* %357, null
  br label %359

359:                                              ; preds = %353, %347
  %360 = phi i1 [ false, %347 ], [ %358, %353 ]
  %361 = zext i1 %360 to i32
  %362 = call i32 @assert(i32 %361)
  %363 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %364 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %363, i32 -1
  store %struct.TYPE_27__* %364, %struct.TYPE_27__** %19, align 8
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %366 = call i32 @getoffset(%struct.TYPE_28__* %365)
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %368 = sext i32 %366 to i64
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %367, i64 %368
  store %struct.TYPE_28__* %369, %struct.TYPE_28__** %23, align 8
  br label %55

370:                                              ; preds = %68
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %372 = load i32*, i32** %9, align 8
  %373 = load i32, i32* %15, align 4
  %374 = call %struct.TYPE_27__* @getstackbase(i32* %372, i32 %373)
  %375 = icmp ugt %struct.TYPE_27__* %371, %374
  br i1 %375, label %376, label %382

376:                                              ; preds = %370
  %377 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %378 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %377, i64 -1
  %379 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %378, i32 0, i32 0
  %380 = load i8*, i8** %379, align 8
  %381 = icmp ne i8* %380, null
  br label %382

382:                                              ; preds = %376, %370
  %383 = phi i1 [ false, %370 ], [ %381, %376 ]
  %384 = zext i1 %383 to i32
  %385 = call i32 @assert(i32 %384)
  %386 = load i8*, i8** %11, align 8
  %387 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %388 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %387, i64 -1
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i32 0, i32 0
  store i8* %386, i8** %389, align 8
  %390 = load i32, i32* %21, align 4
  %391 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %392 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %391, i64 -1
  %393 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %392, i32 0, i32 1
  store i32 %390, i32* %393, align 8
  %394 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %395 = call i32 @getoffset(%struct.TYPE_28__* %394)
  %396 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %397 = sext i32 %395 to i64
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %396, i64 %397
  store %struct.TYPE_28__* %398, %struct.TYPE_28__** %23, align 8
  br label %55

399:                                              ; preds = %68
  %400 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %401 = load i32*, i32** %9, align 8
  %402 = load i32, i32* %15, align 4
  %403 = call %struct.TYPE_27__* @getstackbase(i32* %401, i32 %402)
  %404 = icmp ugt %struct.TYPE_27__* %400, %403
  br i1 %404, label %405, label %411

405:                                              ; preds = %399
  %406 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %407 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %406, i64 -1
  %408 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = icmp ne i8* %409, null
  br label %411

411:                                              ; preds = %405, %399
  %412 = phi i1 [ false, %399 ], [ %410, %405 ]
  %413 = zext i1 %412 to i32
  %414 = call i32 @assert(i32 %413)
  %415 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %416 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %415, i32 -1
  store %struct.TYPE_27__* %416, %struct.TYPE_27__** %19, align 8
  %417 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %416, i32 0, i32 0
  %418 = load i8*, i8** %417, align 8
  store i8* %418, i8** %11, align 8
  %419 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %420 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  store i32 %421, i32* %21, align 4
  %422 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %423 = call i32 @getoffset(%struct.TYPE_28__* %422)
  %424 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %424, i64 %425
  store %struct.TYPE_28__* %426, %struct.TYPE_28__** %23, align 8
  br label %55

427:                                              ; preds = %68
  %428 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %429 = load i32*, i32** %9, align 8
  %430 = load i32, i32* %15, align 4
  %431 = call %struct.TYPE_27__* @getstackbase(i32* %429, i32 %430)
  %432 = icmp ugt %struct.TYPE_27__* %428, %431
  %433 = zext i1 %432 to i32
  %434 = call i32 @assert(i32 %433)
  %435 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %436 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %435, i32 -1
  store %struct.TYPE_27__* %436, %struct.TYPE_27__** %19, align 8
  br label %437

437:                                              ; preds = %68, %427
  br label %438

438:                                              ; preds = %519, %437, %258, %215, %168, %134
  br label %439

439:                                              ; preds = %451, %438
  %440 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %441 = load i32*, i32** %9, align 8
  %442 = load i32, i32* %15, align 4
  %443 = call %struct.TYPE_27__* @getstackbase(i32* %441, i32 %442)
  %444 = icmp ugt %struct.TYPE_27__* %440, %443
  %445 = zext i1 %444 to i32
  %446 = call i32 @assert(i32 %445)
  %447 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %448 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %447, i32 -1
  store %struct.TYPE_27__* %448, %struct.TYPE_27__** %19, align 8
  %449 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %448, i32 0, i32 0
  %450 = load i8*, i8** %449, align 8
  store i8* %450, i8** %11, align 8
  br label %451

451:                                              ; preds = %439
  %452 = load i8*, i8** %11, align 8
  %453 = icmp eq i8* %452, null
  br i1 %453, label %439, label %454

454:                                              ; preds = %451
  %455 = load i32, i32* %22, align 4
  %456 = icmp sgt i32 %455, 0
  br i1 %456, label %457, label %467

457:                                              ; preds = %454
  %458 = load i32*, i32** %9, align 8
  %459 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %460 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %461 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  %463 = load i32, i32* %21, align 4
  %464 = call i32 @removedyncap(i32* %458, %struct.TYPE_29__* %459, i32 %462, i32 %463)
  %465 = load i32, i32* %22, align 4
  %466 = sub nsw i32 %465, %464
  store i32 %466, i32* %22, align 4
  br label %467

467:                                              ; preds = %457, %454
  %468 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %469 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  store i32 %470, i32* %21, align 4
  %471 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %472 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %471, i32 0, i32 2
  %473 = load %struct.TYPE_28__*, %struct.TYPE_28__** %472, align 8
  store %struct.TYPE_28__* %473, %struct.TYPE_28__** %23, align 8
  br label %55

474:                                              ; preds = %68
  %475 = load i32*, i32** %9, align 8
  %476 = call i64 @lua_gettop(i32* %475)
  %477 = add nsw i64 %476, 1
  %478 = trunc i64 %477 to i32
  store i32 %478, i32* %33, align 4
  %479 = load i8*, i8** %10, align 8
  %480 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  store i8* %479, i8** %480, align 8
  %481 = load i32*, i32** %9, align 8
  %482 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 3
  store i32* %481, i32** %482, align 8
  %483 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %484 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 2
  store %struct.TYPE_29__* %483, %struct.TYPE_29__** %484, align 8
  %485 = load i32, i32* %15, align 4
  %486 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 1
  store i32 %485, i32* %486, align 8
  %487 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %488 = load i32, i32* %21, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %487, i64 %489
  %491 = load i8*, i8** %11, align 8
  %492 = call i32 @runtimecap(%struct.TYPE_30__* %29, %struct.TYPE_29__* %490, i8* %491, i32* %30)
  store i32 %492, i32* %32, align 4
  %493 = load i32, i32* %32, align 4
  %494 = load i32, i32* %21, align 4
  %495 = sub nsw i32 %494, %493
  store i32 %495, i32* %21, align 4
  %496 = load i32, i32* %30, align 4
  %497 = load i32, i32* %22, align 4
  %498 = sub nsw i32 %497, %496
  store i32 %498, i32* %22, align 4
  %499 = load i32, i32* %30, align 4
  %500 = load i32, i32* %33, align 4
  %501 = sub nsw i32 %500, %499
  store i32 %501, i32* %33, align 4
  %502 = load i32*, i32** %9, align 8
  %503 = load i32, i32* %33, align 4
  %504 = load i8*, i8** %11, align 8
  %505 = load i8*, i8** %10, align 8
  %506 = ptrtoint i8* %504 to i64
  %507 = ptrtoint i8* %505 to i64
  %508 = sub i64 %506, %507
  %509 = trunc i64 %508 to i32
  %510 = load i8*, i8** %12, align 8
  %511 = load i8*, i8** %10, align 8
  %512 = ptrtoint i8* %510 to i64
  %513 = ptrtoint i8* %511 to i64
  %514 = sub i64 %512, %513
  %515 = trunc i64 %514 to i32
  %516 = call i32 @resdyncaptures(i32* %502, i32 %503, i32 %509, i32 %515)
  store i32 %516, i32* %31, align 4
  %517 = load i32, i32* %31, align 4
  %518 = icmp eq i32 %517, -1
  br i1 %518, label %519, label %520

519:                                              ; preds = %474
  br label %438

520:                                              ; preds = %474
  %521 = load i8*, i8** %10, align 8
  %522 = load i32, i32* %31, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, i8* %521, i64 %523
  store i8* %524, i8** %11, align 8
  %525 = load i32*, i32** %9, align 8
  %526 = call i64 @lua_gettop(i32* %525)
  %527 = load i32, i32* %33, align 4
  %528 = sext i32 %527 to i64
  %529 = sub nsw i64 %526, %528
  %530 = add nsw i64 %529, 1
  %531 = trunc i64 %530 to i32
  store i32 %531, i32* %32, align 4
  %532 = load i32, i32* %32, align 4
  %533 = load i32, i32* %22, align 4
  %534 = add nsw i32 %533, %532
  store i32 %534, i32* %22, align 4
  %535 = load i32, i32* %32, align 4
  %536 = icmp sgt i32 %535, 0
  br i1 %536, label %537, label %577

537:                                              ; preds = %520
  %538 = load i32, i32* %33, align 4
  %539 = load i32, i32* %32, align 4
  %540 = add nsw i32 %538, %539
  %541 = load i32, i32* @SHRT_MAX, align 4
  %542 = icmp sge i32 %540, %541
  br i1 %542, label %543, label %546

543:                                              ; preds = %537
  %544 = load i32*, i32** %9, align 8
  %545 = call i32 @luaL_error(i32* %544, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %546

546:                                              ; preds = %543, %537
  %547 = load i32, i32* %32, align 4
  %548 = add nsw i32 %547, 2
  %549 = load i32, i32* %21, align 4
  %550 = add nsw i32 %549, %548
  store i32 %550, i32* %21, align 4
  %551 = load i32, i32* %20, align 4
  %552 = icmp sge i32 %550, %551
  br i1 %552, label %553, label %563

553:                                              ; preds = %546
  %554 = load i32*, i32** %9, align 8
  %555 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %556 = load i32, i32* %21, align 4
  %557 = load i32, i32* %32, align 4
  %558 = add nsw i32 %557, 2
  %559 = load i32, i32* %15, align 4
  %560 = call %struct.TYPE_29__* @doublecap(i32* %554, %struct.TYPE_29__* %555, i32 %556, i32 %558, i32 %559)
  store %struct.TYPE_29__* %560, %struct.TYPE_29__** %14, align 8
  %561 = load i32, i32* %21, align 4
  %562 = mul nsw i32 2, %561
  store i32 %562, i32* %20, align 4
  br label %563

563:                                              ; preds = %553, %546
  %564 = load i8*, i8** %11, align 8
  %565 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %566 = load i32, i32* %21, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %565, i64 %567
  %569 = load i32, i32* %32, align 4
  %570 = sext i32 %569 to i64
  %571 = sub i64 0, %570
  %572 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %568, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %572, i64 -2
  %574 = load i32, i32* %32, align 4
  %575 = load i32, i32* %33, align 4
  %576 = call i32 @adddyncaptures(i8* %564, %struct.TYPE_29__* %573, i32 %574, i32 %575)
  br label %577

577:                                              ; preds = %563, %520
  %578 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %579 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %578, i32 1
  store %struct.TYPE_28__* %579, %struct.TYPE_28__** %23, align 8
  br label %55

580:                                              ; preds = %68
  %581 = load i8*, i8** %11, align 8
  store i8* %581, i8** %34, align 8
  %582 = load i32, i32* %21, align 4
  %583 = icmp sgt i32 %582, 0
  %584 = zext i1 %583 to i32
  %585 = call i32 @assert(i32 %584)
  %586 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %587 = load i32, i32* %21, align 4
  %588 = sub nsw i32 %587, 1
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %586, i64 %589
  %591 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 8
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %631

594:                                              ; preds = %580
  %595 = load i8*, i8** %34, align 8
  %596 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %597 = load i32, i32* %21, align 4
  %598 = sub nsw i32 %597, 1
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %596, i64 %599
  %601 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %600, i32 0, i32 0
  %602 = load i8*, i8** %601, align 8
  %603 = ptrtoint i8* %595 to i64
  %604 = ptrtoint i8* %602 to i64
  %605 = sub i64 %603, %604
  %606 = inttoptr i64 %605 to i8*
  %607 = load i8*, i8** @UCHAR_MAX, align 8
  %608 = icmp ult i8* %606, %607
  br i1 %608, label %609, label %631

609:                                              ; preds = %594
  %610 = load i8*, i8** %34, align 8
  %611 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %612 = load i32, i32* %21, align 4
  %613 = sub nsw i32 %612, 1
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %611, i64 %614
  %616 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %615, i32 0, i32 0
  %617 = load i8*, i8** %616, align 8
  %618 = ptrtoint i8* %610 to i64
  %619 = ptrtoint i8* %617 to i64
  %620 = sub i64 %618, %619
  %621 = add nsw i64 %620, 1
  %622 = trunc i64 %621 to i32
  %623 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %624 = load i32, i32* %21, align 4
  %625 = sub nsw i32 %624, 1
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %623, i64 %626
  %628 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %627, i32 0, i32 1
  store i32 %622, i32* %628, align 8
  %629 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %630 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %629, i32 1
  store %struct.TYPE_28__* %630, %struct.TYPE_28__** %23, align 8
  br label %55

631:                                              ; preds = %594, %580
  %632 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %633 = load i32, i32* %21, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %632, i64 %634
  %636 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %635, i32 0, i32 1
  store i32 1, i32* %636, align 8
  %637 = load i8*, i8** %11, align 8
  %638 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %639 = load i32, i32* %21, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %638, i64 %640
  %642 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %641, i32 0, i32 0
  store i8* %637, i8** %642, align 8
  br label %675

643:                                              ; preds = %68
  %644 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %645 = load i32, i32* %21, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %644, i64 %646
  %648 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %647, i32 0, i32 1
  store i32 0, i32* %648, align 8
  %649 = load i8*, i8** %11, align 8
  %650 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %651 = load i32, i32* %21, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %650, i64 %652
  %654 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %653, i32 0, i32 0
  store i8* %649, i8** %654, align 8
  br label %675

655:                                              ; preds = %68
  %656 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %657 = call i32 @getoff(%struct.TYPE_28__* %656)
  %658 = add nsw i32 %657, 1
  %659 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %660 = load i32, i32* %21, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %659, i64 %661
  %663 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %662, i32 0, i32 1
  store i32 %658, i32* %663, align 8
  %664 = load i8*, i8** %11, align 8
  %665 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %666 = call i32 @getoff(%struct.TYPE_28__* %665)
  %667 = sext i32 %666 to i64
  %668 = sub i64 0, %667
  %669 = getelementptr inbounds i8, i8* %664, i64 %668
  %670 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %671 = load i32, i32* %21, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %670, i64 %672
  %674 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %673, i32 0, i32 0
  store i8* %669, i8** %674, align 8
  br label %675

675:                                              ; preds = %655, %643, %631
  %676 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %677 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %676, i32 0, i32 0
  %678 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %677, i32 0, i32 1
  %679 = load i32, i32* %678, align 4
  %680 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %681 = load i32, i32* %21, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %680, i64 %682
  %684 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %683, i32 0, i32 3
  store i32 %679, i32* %684, align 8
  %685 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %686 = call i32 @getkind(%struct.TYPE_28__* %685)
  %687 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %688 = load i32, i32* %21, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %687, i64 %689
  %691 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %690, i32 0, i32 2
  store i32 %686, i32* %691, align 4
  %692 = load i32, i32* %21, align 4
  %693 = add nsw i32 %692, 1
  store i32 %693, i32* %21, align 4
  %694 = load i32, i32* %20, align 4
  %695 = icmp sge i32 %693, %694
  br i1 %695, label %696, label %704

696:                                              ; preds = %675
  %697 = load i32*, i32** %9, align 8
  %698 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %699 = load i32, i32* %21, align 4
  %700 = load i32, i32* %15, align 4
  %701 = call %struct.TYPE_29__* @doublecap(i32* %697, %struct.TYPE_29__* %698, i32 %699, i32 0, i32 %700)
  store %struct.TYPE_29__* %701, %struct.TYPE_29__** %14, align 8
  %702 = load i32, i32* %21, align 4
  %703 = mul nsw i32 2, %702
  store i32 %703, i32* %20, align 4
  br label %704

704:                                              ; preds = %696, %675
  %705 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %706 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %705, i32 1
  store %struct.TYPE_28__* %706, %struct.TYPE_28__** %23, align 8
  br label %55

707:                                              ; preds = %68
  %708 = call i32 @assert(i32 0)
  store i8* null, i8** %8, align 8
  store i32 1, i32* %24, align 4
  br label %709

709:                                              ; preds = %707, %97, %76
  %710 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %710)
  %711 = load i8*, i8** %8, align 8
  ret i8* %711
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.TYPE_27__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @stackidx(i32) #2

declare dso_local i64 @lua_gettop(i32*) #2

declare dso_local %struct.TYPE_27__* @getstackbase(i32*, i32) #2

declare dso_local i32 @getoffset(%struct.TYPE_28__*) #2

declare dso_local i32 @testchar(i32, i32) #2

declare dso_local %struct.TYPE_27__* @doublestack(i32*, %struct.TYPE_27__**, i32) #2

declare dso_local i32 @removedyncap(i32*, %struct.TYPE_29__*, i32, i32) #2

declare dso_local i32 @runtimecap(%struct.TYPE_30__*, %struct.TYPE_29__*, i8*, i32*) #2

declare dso_local i32 @resdyncaptures(i32*, i32, i32, i32) #2

declare dso_local i32 @luaL_error(i32*, i8*) #2

declare dso_local %struct.TYPE_29__* @doublecap(i32*, %struct.TYPE_29__*, i32, i32, i32) #2

declare dso_local i32 @adddyncaptures(i8*, %struct.TYPE_29__*, i32, i32) #2

declare dso_local i32 @getoff(%struct.TYPE_28__*) #2

declare dso_local i32 @getkind(%struct.TYPE_28__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
