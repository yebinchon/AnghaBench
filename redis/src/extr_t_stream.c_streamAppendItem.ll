; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamAppendItem.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_streamAppendItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32, i32 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_24__ = type { i8*, i32, i32 }

@C_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@server = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@STREAM_ITEM_FLAG_NONE = common dso_local global i32 0, align 4
@STREAM_ITEM_FLAG_SAMEFIELDS = common dso_local global i32 0, align 4
@LP_INTBUF_SIZE = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @streamAppendItem(%struct.TYPE_22__* %0, %struct.TYPE_23__** %1, i64 %2, %struct.TYPE_21__* %3, %struct.TYPE_21__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca %struct.TYPE_24__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_23__** %1, %struct.TYPE_23__*** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %11, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %37 = icmp ne %struct.TYPE_21__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %5
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %40 = bitcast %struct.TYPE_21__* %12 to i8*
  %41 = bitcast %struct.TYPE_21__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  br label %46

42:                                               ; preds = %5
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = call i32 @streamNextID(%struct.TYPE_21__* %44, %struct.TYPE_21__* %12)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = call i64 @streamCompareID(%struct.TYPE_21__* %12, %struct.TYPE_21__* %48)
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @C_ERR, align 4
  store i32 %52, i32* %6, align 4
  br label %346

53:                                               ; preds = %46
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @raxStart(%struct.TYPE_24__* %13, i32 %56)
  %58 = call i32 @raxSeek(%struct.TYPE_24__* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i64 0, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %59 = call i64 @raxNext(%struct.TYPE_24__* %13)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %15, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = call i64 @lpBytes(i8* %64)
  store i64 %65, i64* %14, align 8
  br label %66

66:                                               ; preds = %61, %53
  %67 = call i32 @raxStop(%struct.TYPE_24__* %13)
  %68 = load i8*, i8** %15, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %76 = icmp uge i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i8* null, i8** %15, align 8
  br label %91

78:                                               ; preds = %73, %70
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 1), align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i8*, i8** %15, align 8
  %83 = call i8* @lpFirst(i8* %82)
  %84 = call i64 @lpGetInteger(i8* %83)
  store i64 %84, i64* %18, align 8
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 1), align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i8* null, i8** %15, align 8
  br label %89

89:                                               ; preds = %88, %81
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %77
  br label %92

92:                                               ; preds = %91, %66
  %93 = load i32, i32* @STREAM_ITEM_FLAG_NONE, align 4
  store i32 %93, i32* %19, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @server, i32 0, i32 0), align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %146

100:                                              ; preds = %96, %92
  %101 = bitcast %struct.TYPE_21__* %17 to i8*
  %102 = bitcast %struct.TYPE_21__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false)
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %104 = call i32 @streamEncodeID(i32* %103, %struct.TYPE_21__* %12)
  %105 = call i8* (...) @lpNew()
  store i8* %105, i8** %15, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = call i8* @lpAppendInteger(i8* %106, i64 1)
  store i8* %107, i8** %15, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = call i8* @lpAppendInteger(i8* %108, i64 0)
  store i8* %109, i8** %15, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i8* @lpAppendInteger(i8* %110, i64 %111)
  store i8* %112, i8** %15, align 8
  store i64 0, i64* %20, align 8
  br label %113

113:                                              ; preds = %131, %100
  %114 = load i64, i64* %20, align 8
  %115 = load i64, i64* %9, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %8, align 8
  %119 = load i64, i64* %20, align 8
  %120 = mul nsw i64 %119, 2
  %121 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %118, i64 %120
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %21, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = load i64, i64* %21, align 8
  %127 = inttoptr i64 %126 to i8*
  %128 = load i64, i64* %21, align 8
  %129 = call i64 @sdslen(i64 %128)
  %130 = call i8* @lpAppend(i8* %125, i8* %127, i64 %129)
  store i8* %130, i8** %15, align 8
  br label %131

131:                                              ; preds = %117
  %132 = load i64, i64* %20, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %20, align 8
  br label %113

134:                                              ; preds = %113
  %135 = load i8*, i8** %15, align 8
  %136 = call i8* @lpAppendInteger(i8* %135, i64 0)
  store i8* %136, i8** %15, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = bitcast [2 x i32]* %16 to i8*
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @raxInsert(i32 %139, i8* %140, i32 8, i8* %141, i32* null)
  %143 = load i32, i32* @STREAM_ITEM_FLAG_SAMEFIELDS, align 4
  %144 = load i32, i32* %19, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %19, align 4
  br label %232

146:                                              ; preds = %96
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = icmp eq i64 %149, 8
  %151 = zext i1 %150 to i32
  %152 = call i32 @serverAssert(i32 %151)
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @memcpy(i32* %153, i32 %155, i32 8)
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %158 = call i32 @streamDecodeID(i32* %157, %struct.TYPE_21__* %17)
  %159 = load i8*, i8** %15, align 8
  %160 = call i8* @lpFirst(i8* %159)
  store i8* %160, i8** %22, align 8
  %161 = load i8*, i8** %22, align 8
  %162 = call i64 @lpGetInteger(i8* %161)
  store i64 %162, i64* %23, align 8
  %163 = load i8*, i8** %15, align 8
  %164 = load i64, i64* %23, align 8
  %165 = add nsw i64 %164, 1
  %166 = call i8* @lpReplaceInteger(i8* %163, i8** %22, i64 %165)
  store i8* %166, i8** %15, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = load i8*, i8** %22, align 8
  %169 = call i8* @lpNext(i8* %167, i8* %168)
  store i8* %169, i8** %22, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = load i8*, i8** %22, align 8
  %172 = call i8* @lpNext(i8* %170, i8* %171)
  store i8* %172, i8** %22, align 8
  %173 = load i8*, i8** %22, align 8
  %174 = call i64 @lpGetInteger(i8* %173)
  store i64 %174, i64* %24, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = load i8*, i8** %22, align 8
  %177 = call i8* @lpNext(i8* %175, i8* %176)
  store i8* %177, i8** %22, align 8
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* %24, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %231

181:                                              ; preds = %146
  store i64 0, i64* %25, align 8
  br label %182

182:                                              ; preds = %219, %181
  %183 = load i64, i64* %25, align 8
  %184 = load i64, i64* %24, align 8
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %186, label %222

186:                                              ; preds = %182
  %187 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %8, align 8
  %188 = load i64, i64* %25, align 8
  %189 = mul nsw i64 %188, 2
  %190 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %187, i64 %189
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %26, align 8
  %194 = load i32, i32* @LP_INTBUF_SIZE, align 4
  %195 = zext i32 %194 to i64
  %196 = call i8* @llvm.stacksave()
  store i8* %196, i8** %28, align 8
  %197 = alloca i8, i64 %195, align 16
  store i64 %195, i64* %29, align 8
  %198 = load i8*, i8** %22, align 8
  %199 = call i8* @lpGet(i8* %198, i64* %27, i8* %197)
  store i8* %199, i8** %30, align 8
  %200 = load i64, i64* %26, align 8
  %201 = call i64 @sdslen(i64 %200)
  %202 = load i64, i64* %27, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %210, label %204

204:                                              ; preds = %186
  %205 = load i8*, i8** %30, align 8
  %206 = load i64, i64* %26, align 8
  %207 = load i64, i64* %27, align 8
  %208 = call i64 @memcmp(i8* %205, i64 %206, i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204, %186
  store i32 5, i32* %31, align 4
  br label %215

211:                                              ; preds = %204
  %212 = load i8*, i8** %15, align 8
  %213 = load i8*, i8** %22, align 8
  %214 = call i8* @lpNext(i8* %212, i8* %213)
  store i8* %214, i8** %22, align 8
  store i32 0, i32* %31, align 4
  br label %215

215:                                              ; preds = %211, %210
  %216 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %31, align 4
  switch i32 %217, label %348 [
    i32 0, label %218
    i32 5, label %222
  ]

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %25, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %25, align 8
  br label %182

222:                                              ; preds = %215, %182
  %223 = load i64, i64* %25, align 8
  %224 = load i64, i64* %24, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load i32, i32* @STREAM_ITEM_FLAG_SAMEFIELDS, align 4
  %228 = load i32, i32* %19, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %19, align 4
  br label %230

230:                                              ; preds = %226, %222
  br label %231

231:                                              ; preds = %230, %146
  br label %232

232:                                              ; preds = %231, %134
  %233 = load i8*, i8** %15, align 8
  %234 = load i32, i32* %19, align 4
  %235 = sext i32 %234 to i64
  %236 = call i8* @lpAppendInteger(i8* %233, i64 %235)
  store i8* %236, i8** %15, align 8
  %237 = load i8*, i8** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = sub nsw i64 %239, %241
  %243 = call i8* @lpAppendInteger(i8* %237, i64 %242)
  store i8* %243, i8** %15, align 8
  %244 = load i8*, i8** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = sub nsw i64 %246, %248
  %250 = call i8* @lpAppendInteger(i8* %244, i64 %249)
  store i8* %250, i8** %15, align 8
  %251 = load i32, i32* %19, align 4
  %252 = load i32, i32* @STREAM_ITEM_FLAG_SAMEFIELDS, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %232
  %256 = load i8*, i8** %15, align 8
  %257 = load i64, i64* %9, align 8
  %258 = call i8* @lpAppendInteger(i8* %256, i64 %257)
  store i8* %258, i8** %15, align 8
  br label %259

259:                                              ; preds = %255, %232
  store i64 0, i64* %32, align 8
  br label %260

260:                                              ; preds = %298, %259
  %261 = load i64, i64* %32, align 8
  %262 = load i64, i64* %9, align 8
  %263 = icmp slt i64 %261, %262
  br i1 %263, label %264, label %301

264:                                              ; preds = %260
  %265 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %8, align 8
  %266 = load i64, i64* %32, align 8
  %267 = mul nsw i64 %266, 2
  %268 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %265, i64 %267
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %33, align 8
  %272 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %8, align 8
  %273 = load i64, i64* %32, align 8
  %274 = mul nsw i64 %273, 2
  %275 = add nsw i64 %274, 1
  %276 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %272, i64 %275
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %34, align 8
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* @STREAM_ITEM_FLAG_SAMEFIELDS, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %264
  %285 = load i8*, i8** %15, align 8
  %286 = load i64, i64* %33, align 8
  %287 = inttoptr i64 %286 to i8*
  %288 = load i64, i64* %33, align 8
  %289 = call i64 @sdslen(i64 %288)
  %290 = call i8* @lpAppend(i8* %285, i8* %287, i64 %289)
  store i8* %290, i8** %15, align 8
  br label %291

291:                                              ; preds = %284, %264
  %292 = load i8*, i8** %15, align 8
  %293 = load i64, i64* %34, align 8
  %294 = inttoptr i64 %293 to i8*
  %295 = load i64, i64* %34, align 8
  %296 = call i64 @sdslen(i64 %295)
  %297 = call i8* @lpAppend(i8* %292, i8* %294, i64 %296)
  store i8* %297, i8** %15, align 8
  br label %298

298:                                              ; preds = %291
  %299 = load i64, i64* %32, align 8
  %300 = add nsw i64 %299, 1
  store i64 %300, i64* %32, align 8
  br label %260

301:                                              ; preds = %260
  %302 = load i64, i64* %9, align 8
  store i64 %302, i64* %35, align 8
  %303 = load i64, i64* %35, align 8
  %304 = add nsw i64 %303, 3
  store i64 %304, i64* %35, align 8
  %305 = load i32, i32* %19, align 4
  %306 = load i32, i32* @STREAM_ITEM_FLAG_SAMEFIELDS, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %301
  %310 = load i64, i64* %9, align 8
  %311 = add nsw i64 %310, 1
  %312 = load i64, i64* %35, align 8
  %313 = add nsw i64 %312, %311
  store i64 %313, i64* %35, align 8
  br label %314

314:                                              ; preds = %309, %301
  %315 = load i8*, i8** %15, align 8
  %316 = load i64, i64* %35, align 8
  %317 = call i8* @lpAppendInteger(i8* %315, i64 %316)
  store i8* %317, i8** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = load i8*, i8** %15, align 8
  %321 = icmp ne i8* %319, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %314
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = bitcast [2 x i32]* %16 to i8*
  %327 = load i8*, i8** %15, align 8
  %328 = call i32 @raxInsert(i32 %325, i8* %326, i32 8, i8* %327, i32* null)
  br label %329

329:                                              ; preds = %322, %314
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 8
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 0
  %336 = bitcast %struct.TYPE_21__* %335 to i8*
  %337 = bitcast %struct.TYPE_21__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %336, i8* align 8 %337, i64 16, i1 false)
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %339 = icmp ne %struct.TYPE_21__* %338, null
  br i1 %339, label %340, label %344

340:                                              ; preds = %329
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %342 = bitcast %struct.TYPE_21__* %341 to i8*
  %343 = bitcast %struct.TYPE_21__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %342, i8* align 8 %343, i64 16, i1 false)
  br label %344

344:                                              ; preds = %340, %329
  %345 = load i32, i32* @C_OK, align 4
  store i32 %345, i32* %6, align 4
  br label %346

346:                                              ; preds = %344, %51
  %347 = load i32, i32* %6, align 4
  ret i32 %347

348:                                              ; preds = %215
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @streamNextID(%struct.TYPE_21__*, %struct.TYPE_21__*) #2

declare dso_local i64 @streamCompareID(%struct.TYPE_21__*, %struct.TYPE_21__*) #2

declare dso_local i32 @raxStart(%struct.TYPE_24__*, i32) #2

declare dso_local i32 @raxSeek(%struct.TYPE_24__*, i8*, i32*, i32) #2

declare dso_local i64 @raxNext(%struct.TYPE_24__*) #2

declare dso_local i64 @lpBytes(i8*) #2

declare dso_local i32 @raxStop(%struct.TYPE_24__*) #2

declare dso_local i64 @lpGetInteger(i8*) #2

declare dso_local i8* @lpFirst(i8*) #2

declare dso_local i32 @streamEncodeID(i32*, %struct.TYPE_21__*) #2

declare dso_local i8* @lpNew(...) #2

declare dso_local i8* @lpAppendInteger(i8*, i64) #2

declare dso_local i8* @lpAppend(i8*, i8*, i64) #2

declare dso_local i64 @sdslen(i64) #2

declare dso_local i32 @raxInsert(i32, i8*, i32, i8*, i32*) #2

declare dso_local i32 @serverAssert(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @streamDecodeID(i32*, %struct.TYPE_21__*) #2

declare dso_local i8* @lpReplaceInteger(i8*, i8**, i64) #2

declare dso_local i8* @lpNext(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i8* @lpGet(i8*, i64*, i8*) #2

declare dso_local i64 @memcmp(i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
