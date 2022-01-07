; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lz_nonslide.c_lz_compress.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lz_nonslide.c_lz_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i64 (%struct.TYPE_8__*, i32, i32)*, {}*, i32*, i64, i32**, i32 }

@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lz_compress(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 12
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %305, %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = call i64 @lz_left_to_process(%struct.TYPE_8__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 12
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %27, %22
  %36 = phi i1 [ false, %27 ], [ false, %22 ], [ %34, %32 ]
  br i1 %36, label %37, label %306

37:                                               ; preds = %35
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %110, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %50, %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %110

57:                                               ; preds = %47, %37
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %14, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %57
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %75, %57
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 11
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 11
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 0, %92
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @memmove(i32* %82, i32* %94, i32 %95)
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %14, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @fill_blockbuf(%struct.TYPE_8__* %105, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = call i32 @lz_analyze_block(%struct.TYPE_8__* %108)
  br label %110

110:                                              ; preds = %79, %47, %42
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 13
  %113 = load i32**, i32*** %112, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %113, i64 %117
  store i32** %118, i32*** %10, align 8
  store i32** %118, i32*** %9, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  store i32* %126, i32** %8, align 8
  store i32* %126, i32** %7, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 11
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32* %134, i32** %5, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %12, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %110
  store i32 0, i32* %12, align 4
  br label %143

143:                                              ; preds = %142, %110
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %147, %150
  %152 = icmp slt i32 %146, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %143
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 11
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = sub i64 0, %163
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32* %165, i32** %6, align 8
  br label %171

166:                                              ; preds = %143
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32* %170, i32** %6, align 8
  br label %171

171:                                              ; preds = %166, %153
  br label %172

172:                                              ; preds = %274, %171
  %173 = load i32*, i32** %5, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = icmp ult i32* %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 12
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  %181 = xor i1 %180, true
  br label %182

182:                                              ; preds = %176, %172
  %183 = phi i1 [ false, %172 ], [ %181, %176 ]
  br i1 %183, label %184, label %305

184:                                              ; preds = %182
  store i16 0, i16* %13, align 2
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %11, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %217

191:                                              ; preds = %184
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = srem i32 %198, %201
  %203 = sub nsw i32 %195, %202
  %204 = icmp sgt i32 %192, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %191
  store i16 1, i16* %13, align 2
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = srem i32 %211, %214
  %216 = sub nsw i32 %208, %215
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %205, %191, %184
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %4, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  store i16 1, i16* %13, align 2
  %222 = load i32, i32* %4, align 4
  store i32 %222, i32* %11, align 4
  br label %223

223:                                              ; preds = %221, %217
  %224 = load i32, i32* %11, align 4
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 4
  %228 = icmp sge i32 %224, %227
  br i1 %228, label %229, label %254

229:                                              ; preds = %223
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 9
  %232 = load i64 (%struct.TYPE_8__*, i32, i32)*, i64 (%struct.TYPE_8__*, i32, i32)** %231, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %234 = load i32**, i32*** %10, align 8
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 11
  %238 = load i32*, i32** %237, align 8
  %239 = ptrtoint i32* %235 to i64
  %240 = ptrtoint i32* %238 to i64
  %241 = sub i64 %239, %240
  %242 = sdiv exact i64 %241, 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = sub nsw i64 %242, %246
  %248 = trunc i64 %247 to i32
  %249 = load i32, i32* %11, align 4
  %250 = call i64 %232(%struct.TYPE_8__* %233, i32 %248, i32 %249)
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %229
  store i32 1, i32* %11, align 4
  br label %253

253:                                              ; preds = %252, %229
  br label %255

254:                                              ; preds = %223
  store i32 1, i32* %11, align 4
  br label %255

255:                                              ; preds = %254, %253
  %256 = load i32, i32* %11, align 4
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 4
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %255
  %262 = load i32, i32* %11, align 4
  %263 = icmp eq i32 %262, 1
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 10
  %268 = bitcast {}** %267 to i32 (%struct.TYPE_8__*, i32)**
  %269 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %268, align 8
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %271 = load i32*, i32** %5, align 8
  %272 = load i32, i32* %271, align 4
  %273 = call i32 %269(%struct.TYPE_8__* %270, i32 %272)
  br label %274

274:                                              ; preds = %261, %255
  %275 = load i32, i32* %11, align 4
  %276 = load i32*, i32** %5, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %5, align 8
  %279 = load i32, i32* %11, align 4
  %280 = load i32**, i32*** %10, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i32*, i32** %280, i64 %281
  store i32** %282, i32*** %10, align 8
  %283 = load i32, i32* %11, align 4
  %284 = load i32*, i32** %8, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  store i32* %286, i32** %8, align 8
  %287 = load i32, i32* %11, align 4
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load i32, i32* %11, align 4
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* %11, align 4
  %299 = icmp sge i32 %297, %298
  %300 = zext i1 %299 to i32
  %301 = call i32 @assert(i32 %300)
  %302 = load i32, i32* %11, align 4
  %303 = load i32, i32* %4, align 4
  %304 = sub nsw i32 %303, %302
  store i32 %304, i32* %4, align 4
  br label %172

305:                                              ; preds = %182
  br label %18

306:                                              ; preds = %35
  ret i32 0
}

declare dso_local i64 @lz_left_to_process(%struct.TYPE_8__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @fill_blockbuf(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lz_analyze_block(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
