; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_pes.c_PESHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_pes.c_PESHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@PES_PRIVATE_STREAM_1 = common dso_local global i32 0, align 4
@PES_EXTENDED_STREAM_ID = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_MPGV = common dso_local global i32 0, align 4
@VLC_CODEC_MP2V = common dso_local global i32 0, align 4
@VLC_CODEC_MP1V = common dso_local global i32 0, align 4
@PES_PAYLOAD_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32)* @PESHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PESHeader(i32* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_7__* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %27 = load i32, i32* %16, align 4
  %28 = ashr i32 %27, 8
  %29 = load i32, i32* @PES_PRIVATE_STREAM_1, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %9
  %32 = load i32, i32* %16, align 4
  %33 = and i32 %32, 255
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* @PES_PRIVATE_STREAM_1, align 4
  store i32 %34, i32* %16, align 4
  store i32 1, i32* %21, align 4
  %35 = load i32, i32* %22, align 4
  %36 = and i32 %35, 240
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %21, align 4
  %40 = add nsw i32 %39, 3
  store i32 %40, i32* %21, align 4
  br label %41

41:                                               ; preds = %38, %31
  br label %52

42:                                               ; preds = %9
  %43 = load i32, i32* %16, align 4
  %44 = ashr i32 %43, 8
  %45 = load i32, i32* @PES_EXTENDED_STREAM_ID, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %16, align 4
  %49 = and i32 %48, 127
  store i32 %49, i32* %23, align 4
  %50 = load i32, i32* @PES_EXTENDED_STREAM_ID, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @bits_initwrite(%struct.TYPE_8__* %20, i32 50, i32* %53)
  %55 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 24, i32 1)
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 8, i32 %56)
  %58 = load i32, i32* %16, align 4
  switch i32 %58, label %65 [
    i32 128, label %59
    i32 131, label %59
    i32 130, label %59
    i32 134, label %59
    i32 133, label %59
    i32 129, label %59
    i32 135, label %59
    i32 132, label %59
  ]

59:                                               ; preds = %52, %52, %52, %52, %52, %52, %52, %52
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 16, i32 %60)
  %62 = call i32 @bits_align(%struct.TYPE_8__* %20)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  br label %338

65:                                               ; preds = %52
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %238

68:                                               ; preds = %65
  store i32 0, i32* %25, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %102, label %78

78:                                               ; preds = %74
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @VIDEO_ES, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @VLC_CODEC_MPGV, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @VLC_CODEC_MP2V, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @VLC_CODEC_MP1V, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96, %74
  store i32 3, i32* %24, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i32 10, i32* %19, align 4
  br label %106

106:                                              ; preds = %105, %102
  br label %121

107:                                              ; preds = %96, %90, %84, %78, %71, %68
  %108 = load i32, i32* %12, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  store i32 2, i32* %24, align 4
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 5, i32* %19, align 4
  br label %114

114:                                              ; preds = %113, %110
  br label %120

115:                                              ; preds = %107
  store i32 0, i32* %24, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  store i32 0, i32* %19, align 4
  br label %119

119:                                              ; preds = %118, %115
  br label %120

120:                                              ; preds = %119, %114
  br label %121

121:                                              ; preds = %120, %106
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @PES_EXTENDED_STREAM_ID, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  store i32 1, i32* %25, align 4
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %19, align 4
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i32, i32* %25, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %19, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @PES_PAYLOAD_SIZE_MAX, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 16, i32 0)
  br label %148

140:                                              ; preds = %134
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %21, align 4
  %143 = add nsw i32 %141, %142
  %144 = add nsw i32 %143, 3
  %145 = load i32, i32* %19, align 4
  %146 = add nsw i32 %144, %145
  %147 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 16, i32 %146)
  br label %148

148:                                              ; preds = %140, %138
  %149 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 2, i32 2)
  %150 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 2, i32 0)
  %151 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 %152)
  %154 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %155 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %156 = load i32, i32* %24, align 4
  %157 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 2, i32 %156)
  %158 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %159 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %160 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %161 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %162 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %163 = load i32, i32* %25, align 4
  %164 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 %163)
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 8, i32 %165)
  %167 = load i32, i32* %24, align 4
  %168 = and i32 %167, 2
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %148
  %171 = load i32, i32* %24, align 4
  %172 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 4, i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = ashr i32 %173, 30
  %175 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 3, i32 %174)
  %176 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %177 = load i32, i32* %12, align 4
  %178 = ashr i32 %177, 15
  %179 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 15, i32 %178)
  %180 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 15, i32 %181)
  %183 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %184 = load i32, i32* %19, align 4
  %185 = sub nsw i32 %184, 5
  store i32 %185, i32* %19, align 4
  br label %186

186:                                              ; preds = %170, %148
  %187 = load i32, i32* %24, align 4
  %188 = and i32 %187, 1
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %186
  %191 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 4, i32 1)
  %192 = load i32, i32* %13, align 4
  %193 = ashr i32 %192, 30
  %194 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 3, i32 %193)
  %195 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %196 = load i32, i32* %13, align 4
  %197 = ashr i32 %196, 15
  %198 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 15, i32 %197)
  %199 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 15, i32 %200)
  %202 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %203 = load i32, i32* %19, align 4
  %204 = sub nsw i32 %203, 5
  store i32 %204, i32* %19, align 4
  br label %205

205:                                              ; preds = %190, %186
  %206 = load i32, i32* %25, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %205
  %209 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %210 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %211 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %212 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 0)
  %213 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 3, i32 7)
  %214 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* @PES_EXTENDED_STREAM_ID, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %208
  %219 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %220 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 7, i32 1)
  %221 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %222 = load i32, i32* %23, align 4
  %223 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 7, i32 %222)
  %224 = load i32, i32* %19, align 4
  %225 = sub nsw i32 %224, 2
  store i32 %225, i32* %19, align 4
  br label %226

226:                                              ; preds = %218, %208
  %227 = load i32, i32* %19, align 4
  %228 = sub nsw i32 %227, 1
  store i32 %228, i32* %19, align 4
  br label %229

229:                                              ; preds = %226, %205
  br label %230

230:                                              ; preds = %233, %229
  %231 = load i32, i32* %19, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 8, i32 255)
  %235 = load i32, i32* %19, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %19, align 4
  br label %230

237:                                              ; preds = %230
  br label %317

238:                                              ; preds = %65
  %239 = load i32, i32* %12, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %260

241:                                              ; preds = %238
  %242 = load i32, i32* %13, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %241
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %244
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @VIDEO_ES, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %248, %244
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %21, align 4
  %257 = add nsw i32 %255, %256
  %258 = add nsw i32 %257, 10
  %259 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 16, i32 %258)
  store i32 3, i32* %26, align 4
  br label %276

260:                                              ; preds = %248, %241, %238
  %261 = load i32, i32* %12, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %260
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* %21, align 4
  %266 = add nsw i32 %264, %265
  %267 = add nsw i32 %266, 5
  %268 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 16, i32 %267)
  store i32 2, i32* %26, align 4
  br label %275

269:                                              ; preds = %260
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %21, align 4
  %272 = add nsw i32 %270, %271
  %273 = add nsw i32 %272, 1
  %274 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 16, i32 %273)
  store i32 0, i32* %26, align 4
  br label %275

275:                                              ; preds = %269, %263
  br label %276

276:                                              ; preds = %275, %254
  %277 = load i32, i32* %26, align 4
  %278 = and i32 %277, 2
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %294

280:                                              ; preds = %276
  %281 = load i32, i32* %26, align 4
  %282 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 4, i32 %281)
  %283 = load i32, i32* %12, align 4
  %284 = ashr i32 %283, 30
  %285 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 3, i32 %284)
  %286 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %287 = load i32, i32* %12, align 4
  %288 = ashr i32 %287, 15
  %289 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 15, i32 %288)
  %290 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %291 = load i32, i32* %12, align 4
  %292 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 15, i32 %291)
  %293 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  br label %294

294:                                              ; preds = %280, %276
  %295 = load i32, i32* %26, align 4
  %296 = and i32 %295, 1
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %311

298:                                              ; preds = %294
  %299 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 4, i32 1)
  %300 = load i32, i32* %13, align 4
  %301 = ashr i32 %300, 30
  %302 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 3, i32 %301)
  %303 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %304 = load i32, i32* %13, align 4
  %305 = ashr i32 %304, 15
  %306 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 15, i32 %305)
  %307 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  %308 = load i32, i32* %13, align 4
  %309 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 15, i32 %308)
  %310 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 1, i32 1)
  br label %311

311:                                              ; preds = %298, %294
  %312 = load i32, i32* %26, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %311
  %315 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 8, i32 15)
  br label %316

316:                                              ; preds = %314, %311
  br label %317

317:                                              ; preds = %316, %237
  %318 = call i32 @bits_align(%struct.TYPE_8__* %20)
  %319 = load i32, i32* %16, align 4
  %320 = load i32, i32* @PES_PRIVATE_STREAM_1, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %334

322:                                              ; preds = %317
  %323 = load i32, i32* %22, align 4
  %324 = icmp ne i32 %323, -1
  br i1 %324, label %325, label %334

325:                                              ; preds = %322
  %326 = load i32, i32* %22, align 4
  %327 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 8, i32 %326)
  %328 = load i32, i32* %22, align 4
  %329 = and i32 %328, 240
  %330 = icmp eq i32 %329, 128
  br i1 %330, label %331, label %333

331:                                              ; preds = %325
  %332 = call i32 @bits_write(%struct.TYPE_8__* %20, i32 24, i32 0)
  br label %333

333:                                              ; preds = %331, %325
  br label %334

334:                                              ; preds = %333, %322, %317
  %335 = call i32 @bits_align(%struct.TYPE_8__* %20)
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  store i32 %337, i32* %10, align 4
  br label %338

338:                                              ; preds = %334, %59
  %339 = load i32, i32* %10, align 4
  ret i32 %339
}

declare dso_local i32 @bits_initwrite(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @bits_write(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @bits_align(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
