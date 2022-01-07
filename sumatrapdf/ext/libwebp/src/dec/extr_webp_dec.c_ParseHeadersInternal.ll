; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseHeadersInternal.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_ParseHeadersInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, i32, i32*, i32*, i64, i32 }

@RIFF_HEADER_SIZE = common dso_local global i64 0, align 8
@VP8_STATUS_NOT_ENOUGH_DATA = common dso_local global i64 0, align 8
@VP8_STATUS_OK = common dso_local global i64 0, align 8
@ANIMATION_FLAG = common dso_local global i32 0, align 4
@VP8_STATUS_BITSTREAM_ERROR = common dso_local global i64 0, align 8
@ALPHA_FLAG = common dso_local global i32 0, align 4
@TAG_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ALPH\00", align 1
@MAX_CHUNK_PAYLOAD = common dso_local global i64 0, align 8
@VP8_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@VP8L_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_4__*)* @ParseHeadersInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseHeadersInternal(i32* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, %struct.TYPE_4__* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_4__, align 8
  %28 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %36

35:                                               ; preds = %8
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 0, %35 ]
  store i32 %37, i32* %25, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @RIFF_HEADER_SIZE, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = load i64, i64* @VP8_STATUS_NOT_ENOUGH_DATA, align 8
  store i64 %45, i64* %9, align 8
  br label %321

46:                                               ; preds = %40
  %47 = call i32 @memset(%struct.TYPE_4__* %27, i32 0, i32 72)
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  store i32* %48, i32** %49, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = load i32, i32* %25, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %54 = call i64 @ParseRIFF(i32** %10, i64* %11, i32 %52, i64* %53)
  store i64 %54, i64* %26, align 8
  %55 = load i64, i64* %26, align 8
  %56 = load i64, i64* @VP8_STATUS_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i64, i64* %26, align 8
  store i64 %59, i64* %9, align 8
  br label %321

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %22, align 4
  store i32 0, i32* %28, align 4
  %65 = call i64 @ParseVP8X(i32** %10, i64* %11, i32* %23, i32* %18, i32* %19, i32* %28)
  store i64 %65, i64* %26, align 8
  %66 = load i64, i64* %26, align 8
  %67 = load i64, i64* @VP8_STATUS_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i64, i64* %26, align 8
  store i64 %70, i64* %9, align 8
  br label %321

71:                                               ; preds = %60
  %72 = load i32, i32* %28, align 4
  %73 = load i32, i32* @ANIMATION_FLAG, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %22, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %23, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  store i64 %85, i64* %9, align 8
  br label %321

86:                                               ; preds = %81, %71
  %87 = load i32*, i32** %14, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* %28, align 4
  %91 = load i32, i32* @ALPHA_FLAG, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %14, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %86
  %99 = load i32*, i32** %15, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %24, align 4
  %103 = load i32*, i32** %15, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32*, i32** %16, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32*, i32** %16, align 8
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* %19, align 4
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %23, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i32, i32* %24, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %119 = icmp eq %struct.TYPE_4__* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i64, i64* @VP8_STATUS_OK, align 8
  store i64 %121, i64* %26, align 8
  br label %280

122:                                              ; preds = %117, %114, %109
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @TAG_SIZE, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i64, i64* @VP8_STATUS_NOT_ENOUGH_DATA, align 8
  store i64 %127, i64* %26, align 8
  br label %280

128:                                              ; preds = %122
  %129 = load i32, i32* %22, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %23, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %22, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %23, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %137
  %141 = load i32*, i32** %10, align 8
  %142 = load i64, i64* @TAG_SIZE, align 8
  %143 = call i32 @memcmp(i32* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %140, %131
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 8
  %150 = call i64 @ParseOptionalChunks(i32** %10, i64* %11, i64 %147, i32** %148, i32* %149)
  store i64 %150, i64* %26, align 8
  %151 = load i64, i64* %26, align 8
  %152 = load i64, i64* @VP8_STATUS_OK, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %280

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %140, %137, %134
  %157 = load i32, i32* %25, align 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %162 = call i64 @ParseVP8Header(i32** %10, i64* %11, i32 %157, i64 %159, i64* %160, i64* %161)
  store i64 %162, i64* %26, align 8
  %163 = load i64, i64* %26, align 8
  %164 = load i64, i64* @VP8_STATUS_OK, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  br label %280

167:                                              ; preds = %156
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @MAX_CHUNK_PAYLOAD, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  store i64 %173, i64* %9, align 8
  br label %321

174:                                              ; preds = %167
  %175 = load i32*, i32** %16, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load i32, i32* %24, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i32 2, i32 1
  %186 = load i32*, i32** %16, align 8
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %180, %177, %174
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %208, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* @VP8_FRAME_HEADER_SIZE, align 8
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i64, i64* @VP8_STATUS_NOT_ENOUGH_DATA, align 8
  store i64 %196, i64* %26, align 8
  br label %280

197:                                              ; preds = %191
  %198 = load i32*, i32** %10, align 8
  %199 = load i64, i64* %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @VP8GetInfo(i32* %198, i64 %199, i32 %202, i32* %20, i32* %21)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %197
  %206 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  store i64 %206, i64* %9, align 8
  br label %321

207:                                              ; preds = %197
  br label %223

208:                                              ; preds = %187
  %209 = load i64, i64* %11, align 8
  %210 = load i64, i64* @VP8L_FRAME_HEADER_SIZE, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i64, i64* @VP8_STATUS_NOT_ENOUGH_DATA, align 8
  store i64 %213, i64* %26, align 8
  br label %280

214:                                              ; preds = %208
  %215 = load i32*, i32** %10, align 8
  %216 = load i64, i64* %11, align 8
  %217 = load i32*, i32** %14, align 8
  %218 = call i32 @VP8LGetInfo(i32* %215, i64 %216, i32* %20, i32* %21, i32* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %214
  %221 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  store i64 %221, i64* %9, align 8
  br label %321

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %222, %207
  %224 = load i32, i32* %23, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %237

226:                                              ; preds = %223
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %20, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %21, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230, %226
  %235 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  store i64 %235, i64* %9, align 8
  br label %321

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236, %223
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %239 = icmp ne %struct.TYPE_4__* %238, null
  br i1 %239, label %240, label %279

240:                                              ; preds = %237
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %242 = bitcast %struct.TYPE_4__* %241 to i8*
  %243 = bitcast %struct.TYPE_4__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %242, i8* align 8 %243, i64 72, i1 false)
  %244 = load i32*, i32** %10, align 8
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 6
  %247 = load i32*, i32** %246, align 8
  %248 = ptrtoint i32* %244 to i64
  %249 = ptrtoint i32* %247 to i64
  %250 = sub i64 %248, %249
  %251 = sdiv exact i64 %250, 4
  %252 = trunc i64 %251 to i32
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 4
  store i32 %252, i32* %254, align 8
  %255 = load i32*, i32** %10, align 8
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 6
  %258 = load i32*, i32** %257, align 8
  %259 = ptrtoint i32* %255 to i64
  %260 = ptrtoint i32* %258 to i64
  %261 = sub i64 %259, %260
  %262 = sdiv exact i64 %261, 4
  %263 = load i64, i64* @MAX_CHUNK_PAYLOAD, align 8
  %264 = icmp slt i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* %11, align 8
  %275 = sub i64 %273, %274
  %276 = icmp eq i64 %270, %275
  %277 = zext i1 %276 to i32
  %278 = call i32 @assert(i32 %277)
  br label %279

279:                                              ; preds = %240, %237
  br label %280

280:                                              ; preds = %279, %212, %195, %166, %154, %126, %120
  %281 = load i64, i64* %26, align 8
  %282 = load i64, i64* @VP8_STATUS_OK, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %294, label %284

284:                                              ; preds = %280
  %285 = load i64, i64* %26, align 8
  %286 = load i64, i64* @VP8_STATUS_NOT_ENOUGH_DATA, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %319

288:                                              ; preds = %284
  %289 = load i32, i32* %23, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %319

291:                                              ; preds = %288
  %292 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %293 = icmp eq %struct.TYPE_4__* %292, null
  br i1 %293, label %294, label %319

294:                                              ; preds = %291, %280
  %295 = load i32*, i32** %14, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %305

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %299 = load i32*, i32** %298, align 8
  %300 = icmp ne i32* %299, null
  %301 = zext i1 %300 to i32
  %302 = load i32*, i32** %14, align 8
  %303 = load i32, i32* %302, align 4
  %304 = or i32 %303, %301
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %297, %294
  %306 = load i32*, i32** %12, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i32, i32* %20, align 4
  %310 = load i32*, i32** %12, align 8
  store i32 %309, i32* %310, align 4
  br label %311

311:                                              ; preds = %308, %305
  %312 = load i32*, i32** %13, align 8
  %313 = icmp ne i32* %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i32, i32* %21, align 4
  %316 = load i32*, i32** %13, align 8
  store i32 %315, i32* %316, align 4
  br label %317

317:                                              ; preds = %314, %311
  %318 = load i64, i64* @VP8_STATUS_OK, align 8
  store i64 %318, i64* %9, align 8
  br label %321

319:                                              ; preds = %291, %288, %284
  %320 = load i64, i64* %26, align 8
  store i64 %320, i64* %9, align 8
  br label %321

321:                                              ; preds = %319, %317, %234, %220, %205, %172, %84, %69, %58, %44
  %322 = load i64, i64* %9, align 8
  ret i64 %322
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @ParseRIFF(i32**, i64*, i32, i64*) #1

declare dso_local i64 @ParseVP8X(i32**, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memcmp(i32*, i8*, i64) #1

declare dso_local i64 @ParseOptionalChunks(i32**, i64*, i64, i32**, i32*) #1

declare dso_local i64 @ParseVP8Header(i32**, i64*, i32, i64, i64*, i64*) #1

declare dso_local i32 @VP8GetInfo(i32*, i64, i32, i32*, i32*) #1

declare dso_local i32 @VP8LGetInfo(i32*, i64, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
