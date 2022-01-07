; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonMergePatch.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonMergePatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i64, i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_12__* }

@JSON_OBJECT = common dso_local global i64 0, align 8
@JNODE_APPEND = common dso_local global i32 0, align 4
@JSON_STRING = common dso_local global i64 0, align 8
@JNODE_LABEL = common dso_local global i32 0, align 4
@JNODE_RAW = common dso_local global i32 0, align 4
@JNODE_REMOVE = common dso_local global i32 0, align 4
@JNODE_PATCH = common dso_local global i32 0, align 4
@JSON_NULL = common dso_local global i64 0, align 8
@JSON_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_11__*, i64, %struct.TYPE_12__*)* @jsonMergePatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @jsonMergePatch(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @JSON_OBJECT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %4, align 8
  br label %340

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = icmp uge i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %40
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %11, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @JNODE_APPEND, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @JSON_OBJECT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = call i32 @jsonRemoveAllNulls(%struct.TYPE_12__* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %4, align 8
  br label %340

59:                                               ; preds = %33
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* %10, align 8
  store i64 1, i64* %8, align 8
  br label %61

61:                                               ; preds = %329, %59
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %338

67:                                               ; preds = %61
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @JSON_STRING, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @JNODE_LABEL, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %12, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %13, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @JNODE_RAW, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  store i64 1, i64* %9, align 8
  br label %106

106:                                              ; preds = %234, %67
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %107, %110
  br i1 %111, label %112, label %243

112:                                              ; preds = %106
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @JSON_STRING, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @JNODE_LABEL, align 4
  %128 = and i32 %126, %127
  %129 = call i32 @assert(i32 %128)
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @JNODE_RAW, align 4
  %136 = and i32 %134, %135
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %12, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %233

147:                                              ; preds = %112
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %149 = load i64, i64* %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load i64, i64* %12, align 8
  %156 = call i64 @strncmp(i8* %153, i8* %154, i64 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %233

158:                                              ; preds = %147
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %160 = load i64, i64* %9, align 8
  %161 = add i64 %160, 1
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @JNODE_REMOVE, align 4
  %166 = load i32, i32* @JNODE_PATCH, align 4
  %167 = or i32 %165, %166
  %168 = and i32 %164, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %243

171:                                              ; preds = %158
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %173 = load i64, i64* %8, align 8
  %174 = add i64 %173, 1
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @JSON_NULL, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %171
  %181 = load i32, i32* @JNODE_REMOVE, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %183 = load i64, i64* %9, align 8
  %184 = add i64 %183, 1
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %181
  store i32 %188, i32* %186, align 8
  br label %232

189:                                              ; preds = %171
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %191 = load i64, i64* %6, align 8
  %192 = load i64, i64* %9, align 8
  %193 = add i64 %191, %192
  %194 = add i64 %193, 1
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %196 = load i64, i64* %8, align 8
  %197 = add i64 %196, 1
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = call %struct.TYPE_12__* @jsonMergePatch(%struct.TYPE_11__* %190, i64 %194, %struct.TYPE_12__* %198)
  store %struct.TYPE_12__* %199, %struct.TYPE_12__** %14, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %201 = icmp eq %struct.TYPE_12__* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %189
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %340

203:                                              ; preds = %189
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i64, i64* %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %207
  store %struct.TYPE_12__* %208, %struct.TYPE_12__** %11, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, 1
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 %212
  %214 = icmp ne %struct.TYPE_12__* %209, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %203
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %218 = load i64, i64* %9, align 8
  %219 = add i64 %218, 1
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  store %struct.TYPE_12__* %216, %struct.TYPE_12__** %222, align 8
  %223 = load i32, i32* @JNODE_PATCH, align 4
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %225 = load i64, i64* %9, align 8
  %226 = add i64 %225, 1
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %223
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %215, %203
  br label %232

232:                                              ; preds = %231, %180
  br label %243

233:                                              ; preds = %147, %112
  br label %234

234:                                              ; preds = %233
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %236 = load i64, i64* %9, align 8
  %237 = add i64 %236, 1
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i64 %237
  %239 = call i64 @jsonNodeSize(%struct.TYPE_12__* %238)
  %240 = add nsw i64 %239, 1
  %241 = load i64, i64* %9, align 8
  %242 = add i64 %241, %240
  store i64 %242, i64* %9, align 8
  br label %106

243:                                              ; preds = %232, %170, %106
  %244 = load i64, i64* %9, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = icmp uge i64 %244, %247
  br i1 %248, label %249, label %328

249:                                              ; preds = %243
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %251 = load i64, i64* %8, align 8
  %252 = add i64 %251, 1
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @JSON_NULL, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %328

258:                                              ; preds = %249
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %260 = load i64, i64* @JSON_OBJECT, align 8
  %261 = call i32 @jsonParseAddNode(%struct.TYPE_11__* %259, i64 %260, i64 2, i8* null)
  store i32 %261, i32* %15, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %263 = load i64, i64* @JSON_STRING, align 8
  %264 = load i64, i64* %12, align 8
  %265 = load i8*, i8** %13, align 8
  %266 = call i32 @jsonParseAddNode(%struct.TYPE_11__* %262, i64 %263, i64 %264, i8* %265)
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %268 = load i64, i64* @JSON_TRUE, align 8
  %269 = call i32 @jsonParseAddNode(%struct.TYPE_11__* %267, i64 %268, i64 0, i8* null)
  store i32 %269, i32* %16, align 4
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %258
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %340

275:                                              ; preds = %258
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %277 = call i32 @jsonRemoveAllNulls(%struct.TYPE_12__* %276)
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = load i64, i64* %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i64 %281
  store %struct.TYPE_12__* %282, %struct.TYPE_12__** %11, align 8
  %283 = load i32, i32* @JNODE_APPEND, align 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = load i64, i64* %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %283
  store i32 %291, i32* %289, align 8
  %292 = load i32, i32* %15, align 4
  %293 = sext i32 %292 to i64
  %294 = load i64, i64* %10, align 8
  %295 = sub i64 %293, %294
  %296 = trunc i64 %295 to i32
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = load i64, i64* %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 1
  store i32 %296, i32* %303, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sext i32 %304 to i64
  store i64 %305, i64* %10, align 8
  %306 = load i32, i32* @JNODE_PATCH, align 4
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %308, align 8
  %310 = load i32, i32* %16, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %306
  store i32 %315, i32* %313, align 8
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %317 = load i64, i64* %8, align 8
  %318 = add i64 %317, 1
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i64 %318
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = load i32, i32* %16, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 2
  store %struct.TYPE_12__* %319, %struct.TYPE_12__** %327, align 8
  br label %328

328:                                              ; preds = %275, %249, %243
  br label %329

329:                                              ; preds = %328
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %331 = load i64, i64* %8, align 8
  %332 = add i64 %331, 1
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i64 %332
  %334 = call i64 @jsonNodeSize(%struct.TYPE_12__* %333)
  %335 = add nsw i64 %334, 1
  %336 = load i64, i64* %8, align 8
  %337 = add i64 %336, %335
  store i64 %337, i64* %8, align 8
  br label %61

338:                                              ; preds = %61
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %339, %struct.TYPE_12__** %4, align 8
  br label %340

340:                                              ; preds = %338, %274, %202, %55, %22
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %341
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jsonRemoveAllNulls(%struct.TYPE_12__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @jsonNodeSize(%struct.TYPE_12__*) #1

declare dso_local i32 @jsonParseAddNode(%struct.TYPE_11__*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
