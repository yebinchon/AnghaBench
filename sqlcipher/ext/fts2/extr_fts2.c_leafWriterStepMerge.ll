; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leafWriterStepMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_leafWriterStepMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8* }

@VARINT_MAX = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@STANDALONE_MIN = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@LEAF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i8*, i32, i32*, i32)* @leafWriterStepMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leafWriterStepMerge(i32* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load i32, i32* @VARINT_MAX, align 4
  %27 = load i32, i32* @VARINT_MAX, align 4
  %28 = add nsw i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %16, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ASSERT_VALID_LEAF_NODE(i8* %39, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @leafWriterEncodeTerm(%struct.TYPE_9__* %45, i8* %46, i32 %47)
  store i32 %48, i32* %24, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %6
  %52 = load i32, i32* %24, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %6
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %74, %55
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i64 @dlrAllDataBytes(i32* %68)
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  br label %60

77:                                               ; preds = %60
  %78 = load i32, i32* %19, align 4
  %79 = call i32 @putVarint(i8* %31, i32 %78)
  store i32 %79, i32* %20, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @dataBufferAppend(%struct.TYPE_10__* %81, i8* %31, i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @docListMerge(%struct.TYPE_10__* %85, i32* %86, i32 %87)
  %89 = load i32, i32* @DL_DEFAULT, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %20, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @ASSERT_VALID_DOCLIST(i32 %89, i8* %99, i32 %107, i32* null)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %113, %114
  %116 = sub nsw i32 %112, %115
  store i32 %116, i32* %21, align 4
  %117 = load i32, i32* %21, align 4
  %118 = call i32 @putVarint(i8* %31, i32 %117)
  store i32 %118, i32* %22, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp sle i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load i32, i32* %22, align 4
  %125 = load i32, i32* %20, align 4
  %126 = icmp sle i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* @STANDALONE_MIN, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %182

134:                                              ; preds = %77
  %135 = load i32, i32* %16, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load i32*, i32** %8, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @leafWriterInternalFlush(i32* %138, %struct.TYPE_9__* %139, i32 0, i32 %140)
  store i32 %141, i32* %23, align 4
  %142 = load i32, i32* %23, align 4
  %143 = load i32, i32* @SQLITE_OK, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* %23, align 4
  store i32 %146, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %347

147:                                              ; preds = %137
  %148 = load i32, i32* %24, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %134
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %22, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %17, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %17, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i32, i32* %22, align 4
  %165 = call i32 @memcpy(i8* %163, i8* %31, i32 %164)
  %166 = load i32*, i32** %8, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @leafWriterInlineFlush(i32* %166, %struct.TYPE_9__* %167, i8* %168, i32 %169, i32 %170)
  store i32 %171, i32* %23, align 4
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* @SQLITE_OK, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %151
  %176 = load i32, i32* %23, align 4
  store i32 %176, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %347

177:                                              ; preds = %151
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  %180 = call i32 @dataBufferReset(%struct.TYPE_10__* %179)
  %181 = load i32, i32* %23, align 4
  store i32 %181, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %347

182:                                              ; preds = %77
  %183 = load i32, i32* %22, align 4
  %184 = load i32, i32* %20, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %224

186:                                              ; preds = %182
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i32, i32* %22, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = load i32, i32* %20, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %211, %212
  %214 = sub nsw i32 %210, %213
  %215 = call i32 @memmove(i8* %196, i8* %206, i32 %214)
  %216 = load i32, i32* %20, align 4
  %217 = load i32, i32* %22, align 4
  %218 = sub nsw i32 %216, %217
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, %218
  store i32 %223, i32* %221, align 8
  br label %224

224:                                              ; preds = %186, %182
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* %17, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i32, i32* %22, align 4
  %233 = call i32 @memcpy(i8* %231, i8* %31, i32 %232)
  %234 = load i32, i32* %16, align 4
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* %21, align 4
  %238 = add nsw i32 %236, %237
  %239 = load i32, i32* @LEAF_MAX, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %336

241:                                              ; preds = %224
  %242 = load i32*, i32** %8, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %244 = load i32, i32* %16, align 4
  %245 = call i32 @leafWriterInternalFlush(i32* %242, %struct.TYPE_9__* %243, i32 0, i32 %244)
  store i32 %245, i32* %23, align 4
  %246 = load i32, i32* %23, align 4
  %247 = load i32, i32* @SQLITE_OK, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %241
  %250 = load i32, i32* %23, align 4
  store i32 %250, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %347

251:                                              ; preds = %241
  %252 = load i32, i32* %24, align 4
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @putVarint(i8* %258, i32 0)
  store i32 %259, i32* %20, align 4
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = load i32, i32* %20, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  %267 = load i32, i32* %11, align 4
  %268 = call i32 @putVarint(i8* %266, i32 %267)
  %269 = load i32, i32* %20, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %20, align 4
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = load i32, i32* %20, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = load i8*, i8** %10, align 8
  %279 = load i32, i32* %11, align 4
  %280 = call i32 @memcpy(i8* %277, i8* %278, i32 %279)
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* %20, align 4
  %283 = add nsw i32 %282, %281
  store i32 %283, i32* %20, align 4
  %284 = load i32, i32* %20, align 4
  %285 = load i32, i32* %17, align 4
  %286 = icmp slt i32 %284, %285
  %287 = zext i1 %286 to i32
  %288 = call i32 @assert(i32 %287)
  %289 = load i32, i32* @STANDALONE_MIN, align 4
  %290 = mul nsw i32 2, %289
  %291 = load i32, i32* @LEAF_MAX, align 4
  %292 = icmp sle i32 %290, %291
  %293 = zext i1 %292 to i32
  %294 = call i32 @assert(i32 %293)
  %295 = load i32, i32* %20, align 4
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = add nsw i32 %295, %299
  %301 = load i32, i32* %17, align 4
  %302 = sub nsw i32 %300, %301
  %303 = load i32, i32* %17, align 4
  %304 = icmp slt i32 %302, %303
  %305 = zext i1 %304 to i32
  %306 = call i32 @assert(i32 %305)
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = load i32, i32* %20, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %310, i64 %312
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = load i32, i32* %17, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %17, align 4
  %326 = sub nsw i32 %324, %325
  %327 = call i32 @memcpy(i8* %313, i8* %320, i32 %326)
  %328 = load i32, i32* %17, align 4
  %329 = load i32, i32* %20, align 4
  %330 = sub nsw i32 %328, %329
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = sub nsw i32 %334, %330
  store i32 %335, i32* %333, align 8
  br label %336

336:                                              ; preds = %251, %224
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 1
  %340 = load i8*, i8** %339, align 8
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @ASSERT_VALID_LEAF_NODE(i8* %340, i32 %344)
  %346 = load i32, i32* @SQLITE_OK, align 4
  store i32 %346, i32* %7, align 4
  store i32 1, i32* %25, align 4
  br label %347

347:                                              ; preds = %336, %249, %177, %175, %145
  %348 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %348)
  %349 = load i32, i32* %7, align 4
  ret i32 %349
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT_VALID_LEAF_NODE(i8*, i32) #2

declare dso_local i32 @leafWriterEncodeTerm(%struct.TYPE_9__*, i8*, i32) #2

declare dso_local i64 @dlrAllDataBytes(i32*) #2

declare dso_local i32 @putVarint(i8*, i32) #2

declare dso_local i32 @dataBufferAppend(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i32 @docListMerge(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @ASSERT_VALID_DOCLIST(i32, i8*, i32, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @leafWriterInternalFlush(i32*, %struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @leafWriterInlineFlush(i32*, %struct.TYPE_9__*, i8*, i32, i32) #2

declare dso_local i32 @dataBufferReset(%struct.TYPE_10__*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
