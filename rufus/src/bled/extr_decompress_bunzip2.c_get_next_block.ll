; ModuleID = '/home/carl/AnghaBench/rufus/src/bled/extr_decompress_bunzip2.c_get_next_block.c'
source_filename = "/home/carl/AnghaBench/rufus/src/bled/extr_decompress_bunzip2.c_get_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32*, i32, i32, i64, i64, i32, i32*, i32, i32, i32, i32, %struct.group_data*, i32 }
%struct.group_data = type { i32, i32, i32*, i32*, i32* }

@RETVAL_LAST_BLOCK = common dso_local global i32 0, align 4
@RETVAL_NOT_BZIP_DATA = common dso_local global i32 0, align 4
@RETVAL_OBSOLETE_INPUT = common dso_local global i32 0, align 4
@RETVAL_DATA_ERROR = common dso_local global i32 0, align 4
@MAX_GROUPS = common dso_local global i32 0, align 4
@MAX_SYMBOLS = common dso_local global i32 0, align 4
@MAX_HUFCODE_BITS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@GROUP_SIZE = common dso_local global i32 0, align 4
@SYMBOL_RUNB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"dbufCount:%d+runCnt:%d %d > dbufSize:%d RETVAL_DATA_ERROR\00", align 1
@RETVAL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @get_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_block(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.group_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [256 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [256 x i32], align 16
  %22 = alloca [256 x i32], align 16
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %24, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %6, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %23, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = call i32 @get_bits(%struct.TYPE_4__* %56, i32 24)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = call i32 @get_bits(%struct.TYPE_4__* %58, i32 24)
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = call i32 @get_bits(%struct.TYPE_4__* %60, i32 32)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 1536581
  br i1 %65, label %66, label %71

66:                                               ; preds = %1
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 3690640
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @RETVAL_LAST_BLOCK, align 4
  store i32 %70, i32* %2, align 4
  br label %802

71:                                               ; preds = %66, %1
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 3227993
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 2511705
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %71
  %78 = load i32, i32* @RETVAL_NOT_BZIP_DATA, align 4
  store i32 %78, i32* %2, align 4
  br label %802

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = call i32 @get_bits(%struct.TYPE_4__* %80, i32 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @RETVAL_OBSOLETE_INPUT, align 4
  store i32 %84, i32* %2, align 4
  br label %802

85:                                               ; preds = %79
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = call i32 @get_bits(%struct.TYPE_4__* %86, i32 24)
  store i32 %87, i32* %25, align 4
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %92, i32* %2, align 4
  br label %802

93:                                               ; preds = %85
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = call i32 @get_bits(%struct.TYPE_4__* %94, i32 16)
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %130, %93
  %97 = load i32, i32* %13, align 4
  %98 = and i32 %97, 32768
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %96
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = call i32 @get_bits(%struct.TYPE_4__* %101, i32 16)
  store i32 %102, i32* %26, align 4
  br label %103

103:                                              ; preds = %118, %100
  %104 = load i32, i32* %26, align 4
  %105 = and i32 %104, 32768
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %103
  %114 = load i32, i32* %26, align 4
  %115 = shl i32 %114, 1
  store i32 %115, i32* %26, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  %120 = and i32 %119, 15
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %103, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %123, 16
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %122, %96
  %126 = load i32, i32* %13, align 4
  %127 = shl i32 %126, 1
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 16
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %131, 256
  br i1 %132, label %96, label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %135 = call i32 @get_bits(%struct.TYPE_4__* %134, i32 3)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 2
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @MAX_GROUPS, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138, %133
  %143 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %143, i32* %2, align 4
  br label %802

144:                                              ; preds = %138
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %154, %144
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %152
  store i32 %150, i32* %153, align 4
  br label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %145

157:                                              ; preds = %145
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %159 = call i32 @get_bits(%struct.TYPE_4__* %158, i32 15)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %163, i32* %2, align 4
  br label %802

164:                                              ; preds = %157
  store i32 0, i32* %11, align 4
  br label %165

165:                                              ; preds = %208, %164
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %211

169:                                              ; preds = %165
  store i32 0, i32* %28, align 4
  br label %170

170:                                              ; preds = %180, %169
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %172 = call i32 @get_bits(%struct.TYPE_4__* %171, i32 1)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %170
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp sge i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %179, i32* %2, align 4
  br label %802

180:                                              ; preds = %174
  %181 = load i32, i32* %28, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %28, align 4
  br label %170

183:                                              ; preds = %170
  %184 = load i32, i32* %28, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %27, align 4
  br label %188

188:                                              ; preds = %192, %183
  %189 = load i32, i32* %28, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %28, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %188
  %193 = load i32, i32* %28, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %28, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %199
  store i32 %196, i32* %200, align 4
  br label %188

201:                                              ; preds = %188
  %202 = load i32, i32* %27, align 4
  %203 = load i32*, i32** %23, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %202, i32* %206, align 4
  %207 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 0
  store i32 %202, i32* %207, align 16
  br label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %165

211:                                              ; preds = %165
  %212 = load i32, i32* %16, align 4
  %213 = add nsw i32 %212, 2
  store i32 %213, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %214

214:                                              ; preds = %446, %211
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %449

218:                                              ; preds = %214
  %219 = load i32, i32* @MAX_SYMBOLS, align 4
  %220 = zext i32 %219 to i64
  %221 = call i8* @llvm.stacksave()
  store i8* %221, i8** %29, align 8
  %222 = alloca i32, i64 %220, align 16
  store i64 %220, i64* %30, align 8
  %223 = load i32, i32* @MAX_HUFCODE_BITS, align 4
  %224 = add nsw i32 %223, 1
  %225 = zext i32 %224 to i64
  %226 = alloca i32, i64 %225, align 16
  store i64 %225, i64* %31, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %228 = call i32 @get_bits(%struct.TYPE_4__* %227, i32 5)
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %35, align 4
  store i32 0, i32* %11, align 4
  br label %230

230:                                              ; preds = %265, %218
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %15, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %268

234:                                              ; preds = %230
  br label %235

235:                                              ; preds = %252, %234
  %236 = load i32, i32* %35, align 4
  %237 = load i32, i32* @MAX_HUFCODE_BITS, align 4
  %238 = sub nsw i32 %237, 1
  %239 = icmp ugt i32 %236, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %241, i32* %2, align 4
  store i32 1, i32* %37, align 4
  br label %442

242:                                              ; preds = %235
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %244 = call i32 @get_bits(%struct.TYPE_4__* %243, i32 2)
  store i32 %244, i32* %36, align 4
  %245 = load i32, i32* %36, align 4
  %246 = icmp slt i32 %245, 2
  br i1 %246, label %247, label %252

247:                                              ; preds = %242
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  br label %259

252:                                              ; preds = %242
  %253 = load i32, i32* %36, align 4
  %254 = add nsw i32 %253, 1
  %255 = and i32 %254, 2
  %256 = sub nsw i32 %255, 1
  %257 = load i32, i32* %35, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %35, align 4
  br label %235

259:                                              ; preds = %247
  %260 = load i32, i32* %35, align 4
  %261 = add nsw i32 %260, 1
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %222, i64 %263
  store i32 %261, i32* %264, align 4
  br label %265

265:                                              ; preds = %259
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %11, align 4
  br label %230

268:                                              ; preds = %230
  %269 = getelementptr inbounds i32, i32* %222, i64 0
  %270 = load i32, i32* %269, align 16
  store i32 %270, i32* %33, align 4
  store i32 %270, i32* %32, align 4
  store i32 1, i32* %11, align 4
  br label %271

271:                                              ; preds = %301, %268
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %15, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %304

275:                                              ; preds = %271
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %222, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %33, align 4
  %281 = icmp sgt i32 %279, %280
  br i1 %281, label %282, label %287

282:                                              ; preds = %275
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %222, i64 %284
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %33, align 4
  br label %300

287:                                              ; preds = %275
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %222, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %32, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %287
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %222, i64 %296
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %32, align 4
  br label %299

299:                                              ; preds = %294, %287
  br label %300

300:                                              ; preds = %299, %282
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %11, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %11, align 4
  br label %271

304:                                              ; preds = %271
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 13
  %307 = load %struct.group_data*, %struct.group_data** %306, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.group_data, %struct.group_data* %307, i64 %309
  store %struct.group_data* %310, %struct.group_data** %4, align 8
  %311 = load i32, i32* %32, align 4
  %312 = load %struct.group_data*, %struct.group_data** %4, align 8
  %313 = getelementptr inbounds %struct.group_data, %struct.group_data* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load i32, i32* %33, align 4
  %315 = load %struct.group_data*, %struct.group_data** %4, align 8
  %316 = getelementptr inbounds %struct.group_data, %struct.group_data* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 4
  %317 = load %struct.group_data*, %struct.group_data** %4, align 8
  %318 = getelementptr inbounds %struct.group_data, %struct.group_data* %317, i32 0, i32 2
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 -1
  store i32* %320, i32** %8, align 8
  %321 = load %struct.group_data*, %struct.group_data** %4, align 8
  %322 = getelementptr inbounds %struct.group_data, %struct.group_data* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 -1
  store i32* %324, i32** %9, align 8
  store i32 0, i32* %34, align 4
  %325 = load i32, i32* %32, align 4
  store i32 %325, i32* %11, align 4
  br label %326

326:                                              ; preds = %363, %304
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* %33, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %366

330:                                              ; preds = %326
  %331 = load i32*, i32** %9, align 8
  %332 = load i32, i32* %11, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 0, i32* %334, align 4
  %335 = load i32, i32* %11, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %226, i64 %336
  store i32 0, i32* %337, align 4
  store i32 0, i32* %38, align 4
  br label %338

338:                                              ; preds = %359, %330
  %339 = load i32, i32* %38, align 4
  %340 = load i32, i32* %15, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %362

342:                                              ; preds = %338
  %343 = load i32, i32* %38, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %222, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %11, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %358

349:                                              ; preds = %342
  %350 = load i32, i32* %38, align 4
  %351 = load %struct.group_data*, %struct.group_data** %4, align 8
  %352 = getelementptr inbounds %struct.group_data, %struct.group_data* %351, i32 0, i32 4
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %34, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %34, align 4
  %356 = sext i32 %354 to i64
  %357 = getelementptr inbounds i32, i32* %353, i64 %356
  store i32 %350, i32* %357, align 4
  br label %358

358:                                              ; preds = %349, %342
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %38, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %38, align 4
  br label %338

362:                                              ; preds = %338
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %11, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %11, align 4
  br label %326

366:                                              ; preds = %326
  store i32 0, i32* %11, align 4
  br label %367

367:                                              ; preds = %380, %366
  %368 = load i32, i32* %11, align 4
  %369 = load i32, i32* %15, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %383

371:                                              ; preds = %367
  %372 = load i32, i32* %11, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %222, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %226, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = add i32 %378, 1
  store i32 %379, i32* %377, align 4
  br label %380

380:                                              ; preds = %371
  %381 = load i32, i32* %11, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %11, align 4
  br label %367

383:                                              ; preds = %367
  store i32 0, i32* %13, align 4
  store i32 0, i32* %34, align 4
  %384 = load i32, i32* %32, align 4
  store i32 %384, i32* %11, align 4
  br label %385

385:                                              ; preds = %389, %383
  %386 = load i32, i32* %11, align 4
  %387 = load i32, i32* %33, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %420

389:                                              ; preds = %385
  %390 = load i32, i32* %11, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %226, i64 %391
  %393 = load i32, i32* %392, align 4
  store i32 %393, i32* %39, align 4
  %394 = load i32, i32* %39, align 4
  %395 = load i32, i32* %34, align 4
  %396 = add i32 %395, %394
  store i32 %396, i32* %34, align 4
  %397 = load i32, i32* %34, align 4
  %398 = load i32, i32* %33, align 4
  %399 = load i32, i32* %11, align 4
  %400 = sub nsw i32 %398, %399
  %401 = shl i32 %397, %400
  %402 = sub nsw i32 %401, 1
  %403 = load i32*, i32** %9, align 8
  %404 = load i32, i32* %11, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  store i32 %402, i32* %406, align 4
  %407 = load i32, i32* %34, align 4
  %408 = shl i32 %407, 1
  store i32 %408, i32* %34, align 4
  %409 = load i32, i32* %39, align 4
  %410 = load i32, i32* %13, align 4
  %411 = add i32 %410, %409
  store i32 %411, i32* %13, align 4
  %412 = load i32, i32* %34, align 4
  %413 = load i32, i32* %13, align 4
  %414 = sub nsw i32 %412, %413
  %415 = load i32*, i32** %8, align 8
  %416 = load i32, i32* %11, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %11, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %415, i64 %418
  store i32 %414, i32* %419, align 4
  br label %385

420:                                              ; preds = %385
  %421 = load i32, i32* %34, align 4
  %422 = load i32, i32* %33, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %226, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = add i32 %421, %425
  %427 = sub i32 %426, 1
  %428 = load i32*, i32** %9, align 8
  %429 = load i32, i32* %33, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  store i32 %427, i32* %431, align 4
  %432 = load i32, i32* @INT_MAX, align 4
  %433 = load i32*, i32** %9, align 8
  %434 = load i32, i32* %33, align 4
  %435 = add nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %433, i64 %436
  store i32 %432, i32* %437, align 4
  %438 = load i32*, i32** %8, align 8
  %439 = load i32, i32* %32, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  store i32 0, i32* %441, align 4
  store i32 0, i32* %37, align 4
  br label %442

442:                                              ; preds = %420, %240
  %443 = load i8*, i8** %29, align 8
  call void @llvm.stackrestore(i8* %443)
  %444 = load i32, i32* %37, align 4
  switch i32 %444, label %804 [
    i32 0, label %445
    i32 1, label %802
  ]

445:                                              ; preds = %442
  br label %446

446:                                              ; preds = %445
  %447 = load i32, i32* %12, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %12, align 4
  br label %214

449:                                              ; preds = %214
  store i32 0, i32* %11, align 4
  br label %450

450:                                              ; preds = %461, %449
  %451 = load i32, i32* %11, align 4
  %452 = icmp slt i32 %451, 256
  br i1 %452, label %453, label %464

453:                                              ; preds = %450
  %454 = load i32, i32* %11, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %455
  store i32 0, i32* %456, align 4
  %457 = load i32, i32* %11, align 4
  %458 = load i32, i32* %11, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %459
  store i32 %457, i32* %460, align 4
  br label %461

461:                                              ; preds = %453
  %462 = load i32, i32* %11, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %11, align 4
  br label %450

464:                                              ; preds = %450
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %14, align 4
  br label %465

465:                                              ; preds = %722, %464
  %466 = load i32, i32* @GROUP_SIZE, align 4
  %467 = sub nsw i32 %466, 1
  store i32 %467, i32* %15, align 4
  %468 = load i32, i32* %10, align 4
  %469 = load i32, i32* %17, align 4
  %470 = icmp sge i32 %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %465
  %472 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %472, i32* %2, align 4
  br label %802

473:                                              ; preds = %465
  %474 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 13
  %476 = load %struct.group_data*, %struct.group_data** %475, align 8
  %477 = load i32*, i32** %23, align 8
  %478 = load i32, i32* %10, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %10, align 4
  %480 = sext i32 %478 to i64
  %481 = getelementptr inbounds i32, i32* %477, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.group_data, %struct.group_data* %476, i64 %483
  store %struct.group_data* %484, %struct.group_data** %4, align 8
  %485 = load %struct.group_data*, %struct.group_data** %4, align 8
  %486 = getelementptr inbounds %struct.group_data, %struct.group_data* %485, i32 0, i32 2
  %487 = load i32*, i32** %486, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 -1
  store i32* %488, i32** %8, align 8
  %489 = load %struct.group_data*, %struct.group_data** %4, align 8
  %490 = getelementptr inbounds %struct.group_data, %struct.group_data* %489, i32 0, i32 3
  %491 = load i32*, i32** %490, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 -1
  store i32* %492, i32** %9, align 8
  br label %493

493:                                              ; preds = %721, %473
  br label %494

494:                                              ; preds = %517, %493
  %495 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %495, i32 0, i32 4
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.group_data*, %struct.group_data** %4, align 8
  %499 = getelementptr inbounds %struct.group_data, %struct.group_data* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = sub nsw i32 %497, %500
  store i32 %501, i32* %41, align 4
  %502 = icmp slt i32 %501, 0
  br i1 %502, label %503, label %538

503:                                              ; preds = %494
  %504 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 5
  %506 = load i64, i64* %505, align 8
  %507 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %508 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %507, i32 0, i32 6
  %509 = load i64, i64* %508, align 8
  %510 = icmp eq i64 %506, %509
  br i1 %510, label %511, label %517

511:                                              ; preds = %503
  %512 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %513 = load %struct.group_data*, %struct.group_data** %4, align 8
  %514 = getelementptr inbounds %struct.group_data, %struct.group_data* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = call i32 @get_bits(%struct.TYPE_4__* %512, i32 %515)
  store i32 %516, i32* %40, align 4
  br label %553

517:                                              ; preds = %503
  %518 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 7
  %520 = load i32, i32* %519, align 8
  %521 = shl i32 %520, 8
  %522 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i32 0, i32 8
  %524 = load i32*, i32** %523, align 8
  %525 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %525, i32 0, i32 5
  %527 = load i64, i64* %526, align 8
  %528 = add nsw i64 %527, 1
  store i64 %528, i64* %526, align 8
  %529 = getelementptr inbounds i32, i32* %524, i64 %527
  %530 = load i32, i32* %529, align 4
  %531 = or i32 %521, %530
  %532 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %532, i32 0, i32 7
  store i32 %531, i32* %533, align 8
  %534 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %535 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 4
  %537 = add nsw i32 %536, 8
  store i32 %537, i32* %535, align 4
  br label %494

538:                                              ; preds = %494
  %539 = load i32, i32* %41, align 4
  %540 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %540, i32 0, i32 4
  store i32 %539, i32* %541, align 4
  %542 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %542, i32 0, i32 7
  %544 = load i32, i32* %543, align 8
  %545 = load i32, i32* %41, align 4
  %546 = ashr i32 %544, %545
  %547 = load %struct.group_data*, %struct.group_data** %4, align 8
  %548 = getelementptr inbounds %struct.group_data, %struct.group_data* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = shl i32 1, %549
  %551 = sub nsw i32 %550, 1
  %552 = and i32 %546, %551
  store i32 %552, i32* %40, align 4
  br label %553

553:                                              ; preds = %538, %511
  %554 = load %struct.group_data*, %struct.group_data** %4, align 8
  %555 = getelementptr inbounds %struct.group_data, %struct.group_data* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  store i32 %556, i32* %11, align 4
  br label %557

557:                                              ; preds = %565, %553
  %558 = load i32, i32* %40, align 4
  %559 = load i32*, i32** %9, align 8
  %560 = load i32, i32* %11, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = icmp sgt i32 %558, %563
  br i1 %564, label %565, label %568

565:                                              ; preds = %557
  %566 = load i32, i32* %11, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %11, align 4
  br label %557

568:                                              ; preds = %557
  %569 = load %struct.group_data*, %struct.group_data** %4, align 8
  %570 = getelementptr inbounds %struct.group_data, %struct.group_data* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* %11, align 4
  %573 = sub nsw i32 %571, %572
  store i32 %573, i32* %12, align 4
  %574 = load i32, i32* %12, align 4
  %575 = icmp slt i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %568
  %577 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %577, i32* %2, align 4
  br label %802

578:                                              ; preds = %568
  %579 = load i32, i32* %12, align 4
  %580 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %581 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %580, i32 0, i32 4
  %582 = load i32, i32* %581, align 4
  %583 = add nsw i32 %582, %579
  store i32 %583, i32* %581, align 4
  %584 = load i32, i32* %40, align 4
  %585 = load i32, i32* %12, align 4
  %586 = ashr i32 %584, %585
  %587 = load i32*, i32** %8, align 8
  %588 = load i32, i32* %11, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = sub nsw i32 %586, %591
  store i32 %592, i32* %40, align 4
  %593 = load i32, i32* %40, align 4
  %594 = load i32, i32* @MAX_SYMBOLS, align 4
  %595 = icmp uge i32 %593, %594
  br i1 %595, label %596, label %598

596:                                              ; preds = %578
  %597 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %597, i32* %2, align 4
  br label %802

598:                                              ; preds = %578
  %599 = load %struct.group_data*, %struct.group_data** %4, align 8
  %600 = getelementptr inbounds %struct.group_data, %struct.group_data* %599, i32 0, i32 4
  %601 = load i32*, i32** %600, align 8
  %602 = load i32, i32* %40, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  %605 = load i32, i32* %604, align 4
  store i32 %605, i32* %40, align 4
  %606 = load i32, i32* %40, align 4
  %607 = load i32, i32* @SYMBOL_RUNB, align 4
  %608 = icmp ule i32 %606, %607
  br i1 %608, label %609, label %626

609:                                              ; preds = %598
  %610 = load i32, i32* %14, align 4
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %609
  store i32 1, i32* %14, align 4
  store i32 0, i32* %19, align 4
  br label %613

613:                                              ; preds = %612, %609
  %614 = load i32, i32* %14, align 4
  %615 = load i32, i32* %40, align 4
  %616 = shl i32 %614, %615
  %617 = load i32, i32* %19, align 4
  %618 = add nsw i32 %617, %616
  store i32 %618, i32* %19, align 4
  %619 = load i32, i32* %14, align 4
  %620 = load i32, i32* %6, align 4
  %621 = icmp slt i32 %619, %620
  br i1 %621, label %622, label %625

622:                                              ; preds = %613
  %623 = load i32, i32* %14, align 4
  %624 = shl i32 %623, 1
  store i32 %624, i32* %14, align 4
  br label %625

625:                                              ; preds = %622, %613
  br label %717

626:                                              ; preds = %598
  %627 = load i32, i32* %14, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %668

629:                                              ; preds = %626
  %630 = load i32, i32* %5, align 4
  %631 = load i32, i32* %19, align 4
  %632 = add nsw i32 %630, %631
  %633 = load i32, i32* %6, align 4
  %634 = icmp sgt i32 %632, %633
  br i1 %634, label %635, label %644

635:                                              ; preds = %629
  %636 = load i32, i32* %5, align 4
  %637 = load i32, i32* %19, align 4
  %638 = load i32, i32* %5, align 4
  %639 = load i32, i32* %19, align 4
  %640 = add nsw i32 %638, %639
  %641 = load i32, i32* %6, align 4
  %642 = call i32 @dbg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %636, i32 %637, i32 %640, i32 %641)
  %643 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %643, i32* %2, align 4
  br label %802

644:                                              ; preds = %629
  %645 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 0
  %646 = load i32, i32* %645, align 16
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %647
  %649 = load i32, i32* %648, align 4
  store i32 %649, i32* %42, align 4
  %650 = load i32, i32* %19, align 4
  %651 = load i32, i32* %42, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %652
  %654 = load i32, i32* %653, align 4
  %655 = add nsw i32 %654, %650
  store i32 %655, i32* %653, align 4
  br label %656

656:                                              ; preds = %660, %644
  %657 = load i32, i32* %19, align 4
  %658 = add nsw i32 %657, -1
  store i32 %658, i32* %19, align 4
  %659 = icmp sge i32 %658, 0
  br i1 %659, label %660, label %667

660:                                              ; preds = %656
  %661 = load i32, i32* %42, align 4
  %662 = load i32*, i32** %24, align 8
  %663 = load i32, i32* %5, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %5, align 4
  %665 = sext i32 %663 to i64
  %666 = getelementptr inbounds i32, i32* %662, i64 %665
  store i32 %661, i32* %666, align 4
  br label %656

667:                                              ; preds = %656
  store i32 0, i32* %14, align 4
  br label %668

668:                                              ; preds = %667, %626
  %669 = load i32, i32* %40, align 4
  %670 = load i32, i32* %16, align 4
  %671 = icmp sgt i32 %669, %670
  br i1 %671, label %672, label %673

672:                                              ; preds = %668
  br label %723

673:                                              ; preds = %668
  %674 = load i32, i32* %5, align 4
  %675 = load i32, i32* %6, align 4
  %676 = icmp sge i32 %674, %675
  br i1 %676, label %677, label %679

677:                                              ; preds = %673
  %678 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %678, i32* %2, align 4
  br label %802

679:                                              ; preds = %673
  %680 = load i32, i32* %40, align 4
  %681 = sub nsw i32 %680, 1
  store i32 %681, i32* %11, align 4
  %682 = load i32, i32* %11, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %683
  %685 = load i32, i32* %684, align 4
  store i32 %685, i32* %20, align 4
  br label %686

686:                                              ; preds = %695, %679
  %687 = load i32, i32* %11, align 4
  %688 = sub nsw i32 %687, 1
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = load i32, i32* %11, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %693
  store i32 %691, i32* %694, align 4
  br label %695

695:                                              ; preds = %686
  %696 = load i32, i32* %11, align 4
  %697 = add nsw i32 %696, -1
  store i32 %697, i32* %11, align 4
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %686, label %699

699:                                              ; preds = %695
  %700 = load i32, i32* %20, align 4
  %701 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 0
  store i32 %700, i32* %701, align 16
  %702 = load i32, i32* %20, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 0, i64 %703
  %705 = load i32, i32* %704, align 4
  store i32 %705, i32* %20, align 4
  %706 = load i32, i32* %20, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %707
  %709 = load i32, i32* %708, align 4
  %710 = add nsw i32 %709, 1
  store i32 %710, i32* %708, align 4
  %711 = load i32, i32* %20, align 4
  %712 = load i32*, i32** %24, align 8
  %713 = load i32, i32* %5, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %5, align 4
  %715 = sext i32 %713 to i64
  %716 = getelementptr inbounds i32, i32* %712, i64 %715
  store i32 %711, i32* %716, align 4
  br label %717

717:                                              ; preds = %699, %625
  %718 = load i32, i32* %15, align 4
  %719 = add nsw i32 %718, -1
  store i32 %719, i32* %15, align 4
  %720 = icmp sge i32 %719, 0
  br i1 %720, label %721, label %722

721:                                              ; preds = %717
  br label %493

722:                                              ; preds = %717
  br label %465

723:                                              ; preds = %672
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %724

724:                                              ; preds = %739, %723
  %725 = load i32, i32* %11, align 4
  %726 = icmp slt i32 %725, 256
  br i1 %726, label %727, label %742

727:                                              ; preds = %724
  %728 = load i32, i32* %12, align 4
  %729 = load i32, i32* %11, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %730
  %732 = load i32, i32* %731, align 4
  %733 = add nsw i32 %728, %732
  store i32 %733, i32* %43, align 4
  %734 = load i32, i32* %12, align 4
  %735 = load i32, i32* %11, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %736
  store i32 %734, i32* %737, align 4
  %738 = load i32, i32* %43, align 4
  store i32 %738, i32* %12, align 4
  br label %739

739:                                              ; preds = %727
  %740 = load i32, i32* %11, align 4
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %11, align 4
  br label %724

742:                                              ; preds = %724
  store i32 0, i32* %11, align 4
  br label %743

743:                                              ; preds = %770, %742
  %744 = load i32, i32* %11, align 4
  %745 = load i32, i32* %5, align 4
  %746 = icmp slt i32 %744, %745
  br i1 %746, label %747, label %773

747:                                              ; preds = %743
  %748 = load i32*, i32** %24, align 8
  %749 = load i32, i32* %11, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i32, i32* %748, i64 %750
  %752 = load i32, i32* %751, align 4
  store i32 %752, i32* %44, align 4
  %753 = load i32, i32* %44, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %754
  %756 = load i32, i32* %755, align 4
  store i32 %756, i32* %45, align 4
  %757 = load i32, i32* %11, align 4
  %758 = shl i32 %757, 8
  %759 = load i32*, i32** %24, align 8
  %760 = load i32, i32* %45, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds i32, i32* %759, i64 %761
  %763 = load i32, i32* %762, align 4
  %764 = or i32 %763, %758
  store i32 %764, i32* %762, align 4
  %765 = load i32, i32* %45, align 4
  %766 = add nsw i32 %765, 1
  %767 = load i32, i32* %44, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds [256 x i32], [256 x i32]* %18, i64 0, i64 %768
  store i32 %766, i32* %769, align 4
  br label %770

770:                                              ; preds = %747
  %771 = load i32, i32* %11, align 4
  %772 = add nsw i32 %771, 1
  store i32 %772, i32* %11, align 4
  br label %743

773:                                              ; preds = %743
  %774 = load i32, i32* %5, align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %797

776:                                              ; preds = %773
  %777 = load i32, i32* %25, align 4
  %778 = load i32, i32* %5, align 4
  %779 = icmp sge i32 %777, %778
  br i1 %779, label %780, label %782

780:                                              ; preds = %776
  %781 = load i32, i32* @RETVAL_DATA_ERROR, align 4
  store i32 %781, i32* %2, align 4
  br label %802

782:                                              ; preds = %776
  %783 = load i32*, i32** %24, align 8
  %784 = load i32, i32* %25, align 4
  %785 = zext i32 %784 to i64
  %786 = getelementptr inbounds i32, i32* %783, i64 %785
  %787 = load i32, i32* %786, align 4
  store i32 %787, i32* %46, align 4
  %788 = load i32, i32* %46, align 4
  %789 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %790 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %789, i32 0, i32 9
  store i32 %788, i32* %790, align 8
  %791 = load i32, i32* %46, align 4
  %792 = ashr i32 %791, 8
  %793 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %794 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %793, i32 0, i32 10
  store i32 %792, i32* %794, align 4
  %795 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %796 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %795, i32 0, i32 11
  store i32 5, i32* %796, align 8
  br label %797

797:                                              ; preds = %782, %773
  %798 = load i32, i32* %5, align 4
  %799 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %800 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %799, i32 0, i32 12
  store i32 %798, i32* %800, align 4
  %801 = load i32, i32* @RETVAL_OK, align 4
  store i32 %801, i32* %2, align 4
  br label %802

802:                                              ; preds = %797, %780, %677, %635, %596, %576, %471, %442, %178, %162, %142, %91, %83, %77, %69
  %803 = load i32, i32* %2, align 4
  ret i32 %803

804:                                              ; preds = %442
  unreachable
}

declare dso_local i32 @get_bits(%struct.TYPE_4__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @dbg(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
