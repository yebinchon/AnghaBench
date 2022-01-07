; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_a52.h_vlc_a52_ParseEac3BitstreamInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_a52.h_vlc_a52_ParseEac3BitstreamInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_a52_bitstream_info = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_A52_MIN_HEADER_SIZE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@__const.vlc_a52_ParseEac3BitstreamInfo.blkspersyncframe = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 2, i32 6], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_a52_bitstream_info*, i32*, i64)* @vlc_a52_ParseEac3BitstreamInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_a52_ParseEac3BitstreamInfo(%struct.vlc_a52_bitstream_info* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_a52_bitstream_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.vlc_a52_bitstream_info* %0, %struct.vlc_a52_bitstream_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @bs_init(i32* %8, i32* %15, i64 %16)
  %18 = call i32 @bs_read(i32* %8, i32 2)
  %19 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %20 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = call i32 @bs_read(i32* %8, i32 3)
  %23 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %24 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = call i32 @bs_read(i32* %8, i32 11)
  %27 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %28 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %31 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %4, align 4
  br label %270

37:                                               ; preds = %3
  %38 = call i32 @bs_read(i32* %8, i32 2)
  %39 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %40 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %42 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = call i32 @bs_read(i32* %8, i32 2)
  %47 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %48 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %51 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %4, align 4
  br label %270

57:                                               ; preds = %45
  %58 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %59 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  store i32 3, i32* %60, align 8
  br label %66

61:                                               ; preds = %37
  %62 = call i32 @bs_read(i32* %8, i32 2)
  %63 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %64 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %57
  %67 = call i32 @bs_read(i32* %8, i32 3)
  %68 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %69 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = call i64 @bs_read1(i32* %8)
  %71 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %72 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %71, i32 0, i32 5
  store i64 %70, i64* %72, align 8
  %73 = call i32 @bs_read(i32* %8, i32 5)
  %74 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %75 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @VLC_A52_MIN_HEADER_SIZE, align 8
  %78 = icmp ule i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %81 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %80, i32 0, i32 3
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %82, i32* %4, align 4
  br label %270

83:                                               ; preds = %66
  %84 = call i32 @bs_skip(i32* %8, i32 5)
  %85 = call i64 @bs_read1(i32* %8)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @bs_skip(i32* %8, i32 8)
  br label %89

89:                                               ; preds = %87, %83
  %90 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %91 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = call i32 @bs_skip(i32* %8, i32 5)
  %96 = call i64 @bs_read1(i32* %8)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 @bs_skip(i32* %8, i32 8)
  br label %100

100:                                              ; preds = %98, %94
  br label %101

101:                                              ; preds = %100, %89
  %102 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %103 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = call i64 @bs_read1(i32* %8)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @bs_skip(i32* %8, i32 16)
  br label %112

112:                                              ; preds = %110, %107, %101
  %113 = call i64 @bs_read1(i32* %8)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %258

115:                                              ; preds = %112
  %116 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %117 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 2
  br i1 %119, label %120, label %138

120:                                              ; preds = %115
  %121 = call i32 @bs_skip(i32* %8, i32 2)
  %122 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %123 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = call i32 @bs_skip(i32* %8, i32 6)
  br label %129

129:                                              ; preds = %127, %120
  %130 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %131 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = call i32 @bs_skip(i32* %8, i32 6)
  br label %137

137:                                              ; preds = %135, %129
  br label %138

138:                                              ; preds = %137, %115
  %139 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %140 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = call i64 @bs_read1(i32* %8)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 @bs_skip(i32* %8, i32 5)
  br label %148

148:                                              ; preds = %146, %143, %138
  %149 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %150 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %257

154:                                              ; preds = %148
  %155 = call i64 @bs_read1(i32* %8)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 @bs_skip(i32* %8, i32 6)
  br label %159

159:                                              ; preds = %157, %154
  %160 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %161 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = call i64 @bs_read1(i32* %8)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 @bs_skip(i32* %8, i32 6)
  br label %169

169:                                              ; preds = %167, %164, %159
  %170 = call i64 @bs_read1(i32* %8)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 @bs_skip(i32* %8, i32 6)
  br label %174

174:                                              ; preds = %172, %169
  %175 = call i32 @bs_read(i32* %8, i32 2)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call i32 @bs_skip(i32* %8, i32 5)
  br label %205

180:                                              ; preds = %174
  %181 = load i32, i32* %9, align 4
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = call i32 @bs_skip(i32* %8, i32 12)
  br label %204

185:                                              ; preds = %180
  %186 = load i32, i32* %9, align 4
  %187 = icmp eq i32 %186, 3
  br i1 %187, label %188, label %203

188:                                              ; preds = %185
  %189 = call i32 @bs_read(i32* %8, i32 5)
  %190 = add nsw i32 %189, 2
  store i32 %190, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %191

191:                                              ; preds = %198, %188
  %192 = load i64, i64* %11, align 8
  %193 = load i32, i32* %10, align 4
  %194 = zext i32 %193 to i64
  %195 = icmp ult i64 %192, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = call i32 @bs_skip(i32* %8, i32 8)
  br label %198

198:                                              ; preds = %196
  %199 = load i64, i64* %11, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %11, align 8
  br label %191

201:                                              ; preds = %191
  %202 = call i32 @bs_align(i32* %8)
  br label %203

203:                                              ; preds = %201, %185
  br label %204

204:                                              ; preds = %203, %183
  br label %205

205:                                              ; preds = %204, %178
  %206 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %207 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %208, 2
  br i1 %209, label %210, label %226

210:                                              ; preds = %205
  %211 = call i64 @bs_read1(i32* %8)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = call i32 @bs_skip(i32* %8, i32 14)
  br label %215

215:                                              ; preds = %213, %210
  %216 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %217 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = call i64 @bs_read1(i32* %8)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call i32 @bs_skip(i32* %8, i32 14)
  br label %225

225:                                              ; preds = %223, %220, %215
  br label %226

226:                                              ; preds = %225, %205
  %227 = call i64 @bs_read1(i32* %8)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %256

229:                                              ; preds = %226
  %230 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %230, i8* align 16 bitcast ([4 x i32]* @__const.vlc_a52_ParseEac3BitstreamInfo.blkspersyncframe to i8*), i64 16, i1 false)
  %231 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %232 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  store i64 %238, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %239

239:                                              ; preds = %252, %229
  %240 = load i64, i64* %14, align 8
  %241 = load i64, i64* %13, align 8
  %242 = icmp ult i64 %240, %241
  br i1 %242, label %243, label %255

243:                                              ; preds = %239
  %244 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %245 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  %250 = call i32 @bs_skip(i32* %8, i32 5)
  br label %251

251:                                              ; preds = %249, %243
  br label %252

252:                                              ; preds = %251
  %253 = load i64, i64* %14, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %14, align 8
  br label %239

255:                                              ; preds = %239
  br label %256

256:                                              ; preds = %255, %226
  br label %257

257:                                              ; preds = %256, %148
  br label %258

258:                                              ; preds = %257, %112
  %259 = call i64 @bs_read1(i32* %8)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = call i32 @bs_read(i32* %8, i32 3)
  %263 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %264 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %263, i32 0, i32 3
  store i32 %262, i32* %264, align 4
  br label %268

265:                                              ; preds = %258
  %266 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %267 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %266, i32 0, i32 3
  store i32 0, i32* %267, align 4
  br label %268

268:                                              ; preds = %265, %261
  %269 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %269, i32* %4, align 4
  br label %270

270:                                              ; preds = %268, %79, %55, %35
  %271 = load i32, i32* %4, align 4
  ret i32 %271
}

declare dso_local i32 @bs_init(i32*, i32*, i64) #1

declare dso_local i32 @bs_read(i32*, i32) #1

declare dso_local i64 @bs_read1(i32*) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i32 @bs_align(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
