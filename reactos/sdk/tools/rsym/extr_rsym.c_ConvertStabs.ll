; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_ConvertStabs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_ConvertStabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i8*, i8* }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.StringHashTable = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to allocate memory for converted .stab symbols\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Function name too long\0A\00", align 1
@CompareSymEntry = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__**, i32*, i8*, i32, i8*, i32, i8*, i64, i32, i32)* @ConvertStabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertStabs(i32* %0, %struct.TYPE_9__** %1, i32* %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i64 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_8__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca [256 x i8], align 16
  %33 = alloca %struct.TYPE_9__*, align 8
  %34 = alloca %struct.StringHashTable, align 4
  store i32* %0, i32** %13, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %14, align 8
  store i32* %2, i32** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i64 %8, i64* %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 1, i32* %29, align 4
  %35 = load i8*, i8** %18, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %24, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %25, align 4
  %41 = load i32*, i32** %13, align 8
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %25, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %11
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %45, align 8
  store i32 0, i32* %12, align 4
  br label %344

46:                                               ; preds = %11
  %47 = load i32, i32* %25, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call %struct.TYPE_9__* @malloc(i32 %50)
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %52, align 8
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp eq %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %344

59:                                               ; preds = %46
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %33, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %63 = call i32 @memset(%struct.TYPE_9__* %62, i32 0, i32 32)
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @StringHashTableInit(%struct.StringHashTable* %34, i32 %65, i8* %66)
  store i64 0, i64* %28, align 8
  store i32 0, i32* %26, align 4
  br label %68

68:                                               ; preds = %322, %59
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %25, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %325

72:                                               ; preds = %68
  %73 = load i64, i64* %28, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %77 = load i32, i32* %26, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %21, align 8
  %83 = sub nsw i64 %81, %82
  store i64 %83, i64* %27, align 8
  br label %93

84:                                               ; preds = %72
  %85 = load i64, i64* %28, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %87 = load i32, i32* %26, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %85, %91
  store i64 %92, i64* %27, align 8
  br label %93

93:                                               ; preds = %84, %75
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %95 = load i32, i32* %26, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %320 [
    i32 129, label %100
    i32 128, label %100
    i32 132, label %100
    i32 131, label %195
    i32 130, label %278
  ]

100:                                              ; preds = %93, %93, %93
  %101 = load i8*, i8** %20, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %103 = load i32, i32* %26, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %101, i64 %108
  store i8* %109, i8** %30, align 8
  %110 = load i32, i32* %19, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %112 = load i32, i32* %26, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %110, %116
  br i1 %117, label %152, label %118

118:                                              ; preds = %100
  %119 = load i8*, i8** %30, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %152, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %30, align 8
  %125 = load i8*, i8** %30, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 47
  br i1 %132, label %152, label %133

133:                                              ; preds = %123
  %134 = load i8*, i8** %30, align 8
  %135 = load i8*, i8** %30, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 92
  br i1 %142, label %152, label %143

143:                                              ; preds = %133
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %145 = load i32, i32* %26, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %21, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %143, %133, %123, %118, %100
  br label %322

153:                                              ; preds = %143
  %154 = load i32, i32* %29, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* %27, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %157, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %156, %153
  %163 = load i32, i32* %29, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %162
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 1
  store %struct.TYPE_9__* %167, %struct.TYPE_9__** %33, align 8
  %168 = call i32 @memset(%struct.TYPE_9__* %167, i32 0, i32 32)
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 -1
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  store i8* %172, i8** %174, align 8
  br label %176

175:                                              ; preds = %162
  store i32 0, i32* %29, align 4
  br label %176

176:                                              ; preds = %175, %165
  %177 = load i64, i64* %27, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %176, %156
  %181 = load i8*, i8** %20, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %183 = load i32, i32* %26, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %181, i64 %188
  %190 = load i32*, i32** %15, align 8
  %191 = load i8*, i8** %16, align 8
  %192 = call i8* @FindOrAddString(%struct.StringHashTable* %34, i8* %189, i32* %190, i8* %191)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 3
  store i8* %192, i8** %194, align 8
  br label %321

195:                                              ; preds = %93
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %197 = load i32, i32* %26, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %195
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %205 = load i32, i32* %26, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %21, align 8
  %211 = icmp slt i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %203, %195
  store i64 0, i64* %28, align 8
  br label %322

213:                                              ; preds = %203
  %214 = load i32, i32* %29, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %213
  %217 = load i64, i64* %27, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %217, %220
  br i1 %221, label %222, label %240

222:                                              ; preds = %216, %213
  %223 = load i32, i32* %29, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %222
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 1
  store %struct.TYPE_9__* %227, %struct.TYPE_9__** %33, align 8
  %228 = call i32 @memset(%struct.TYPE_9__* %227, i32 0, i32 32)
  br label %230

229:                                              ; preds = %222
  store i32 0, i32* %29, align 4
  br label %230

230:                                              ; preds = %229, %225
  %231 = load i64, i64* %27, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i64 -1
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 3
  store i8* %237, i8** %239, align 8
  br label %240

240:                                              ; preds = %230, %216
  %241 = load i8*, i8** %20, align 8
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %243 = load i32, i32* %26, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %241, i64 %248
  store i8* %249, i8** %30, align 8
  %250 = load i8*, i8** %30, align 8
  %251 = call i32 @strcspn(i8* %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %251, i32* %31, align 4
  %252 = load i32, i32* %31, align 4
  %253 = sext i32 %252 to i64
  %254 = icmp ule i64 256, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %240
  %256 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = call i32 @free(%struct.TYPE_9__* %257)
  %259 = load i32, i32* @stderr, align 4
  %260 = call i32 @fprintf(i32 %259, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %344

261:                                              ; preds = %240
  %262 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i64 0, i64 0
  %263 = load i8*, i8** %30, align 8
  %264 = load i32, i32* %31, align 4
  %265 = call i32 @memcpy(i8* %262, i8* %263, i32 %264)
  %266 = load i32, i32* %31, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i64 0, i64 %267
  store i8 0, i8* %268, align 1
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i64 0, i64 0
  %270 = load i32*, i32** %15, align 8
  %271 = load i8*, i8** %16, align 8
  %272 = call i8* @FindOrAddString(%struct.StringHashTable* %34, i8* %269, i32* %270, i8* %271)
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 2
  store i8* %272, i8** %274, align 8
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 1
  store i32 0, i32* %276, align 8
  %277 = load i64, i64* %27, align 8
  store i64 %277, i64* %28, align 8
  br label %321

278:                                              ; preds = %93
  %279 = load i32, i32* %29, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %278
  %282 = load i64, i64* %27, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %282, %285
  br i1 %286, label %287, label %311

287:                                              ; preds = %281, %278
  %288 = load i32, i32* %29, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %306, label %290

290:                                              ; preds = %287
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 1
  store %struct.TYPE_9__* %292, %struct.TYPE_9__** %33, align 8
  %293 = call i32 @memset(%struct.TYPE_9__* %292, i32 0, i32 32)
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i64 -1
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 3
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 3
  store i8* %297, i8** %299, align 8
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i64 -1
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 2
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 2
  store i8* %303, i8** %305, align 8
  br label %307

306:                                              ; preds = %287
  store i32 0, i32* %29, align 4
  br label %307

307:                                              ; preds = %306, %290
  %308 = load i64, i64* %27, align 8
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  store i64 %308, i64* %310, align 8
  br label %311

311:                                              ; preds = %307, %281
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %313 = load i32, i32* %26, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 8
  br label %321

320:                                              ; preds = %93
  br label %322

321:                                              ; preds = %311, %261, %180
  br label %322

322:                                              ; preds = %321, %320, %212, %152
  %323 = load i32, i32* %26, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %26, align 4
  br label %68

325:                                              ; preds = %68
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %327 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %327, align 8
  %329 = ptrtoint %struct.TYPE_9__* %326 to i64
  %330 = ptrtoint %struct.TYPE_9__* %328 to i64
  %331 = sub i64 %329, %330
  %332 = sdiv exact i64 %331, 32
  %333 = add nsw i64 %332, 1
  %334 = trunc i64 %333 to i32
  %335 = load i32*, i32** %13, align 8
  store i32 %334, i32* %335, align 4
  %336 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %336, align 8
  %338 = load i32*, i32** %13, align 8
  %339 = load i32, i32* %338, align 4
  %340 = load i64, i64* @CompareSymEntry, align 8
  %341 = inttoptr i64 %340 to i32 (i8*, i8*)*
  %342 = call i32 @qsort(%struct.TYPE_9__* %337, i32 %339, i32 4, i32 (i8*, i8*)* %341)
  %343 = call i32 @StringHashTableFree(%struct.StringHashTable* %34)
  store i32 0, i32* %12, align 4
  br label %344

344:                                              ; preds = %325, %255, %56, %44
  %345 = load i32, i32* %12, align 4
  ret i32 %345
}

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @StringHashTableInit(%struct.StringHashTable*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @FindOrAddString(%struct.StringHashTable*, i8*, i32*, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_9__*, i32, i32, i32 (i8*, i8*)*) #1

declare dso_local i32 @StringHashTableFree(%struct.StringHashTable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
