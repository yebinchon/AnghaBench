; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_write_compressed_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_write_compressed_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_data = type { i32 }
%struct.huff_entry = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@LZX_PRETREE_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzx_data*, %struct.huff_entry*, i32*, i32)* @lzx_write_compressed_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzx_write_compressed_tree(%struct.lzx_data* %0, %struct.huff_entry* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.lzx_data*, align 8
  %6 = alloca %struct.huff_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [20 x %struct.TYPE_3__], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.lzx_data* %0, %struct.lzx_data** %5, align 8
  store %struct.huff_entry* %1, %struct.huff_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* @LZX_PRETREE_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = call i32* @malloc(i32 %29)
  store i32* %30, i32** %9, align 8
  store i32* %30, i32** %16, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = call i32* @malloc(i32 %34)
  store i32* %35, i32** %10, align 8
  store i32* %35, i32** %18, align 8
  %36 = mul nuw i64 4, %23
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(i32* %25, i32 0, i32 %37)
  store i32 1, i32* %13, align 4
  %39 = load %struct.huff_entry*, %struct.huff_entry** %6, align 8
  %40 = getelementptr inbounds %struct.huff_entry, %struct.huff_entry* %39, i64 0
  %41 = getelementptr inbounds %struct.huff_entry, %struct.huff_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  store i32 1, i32* %20, align 4
  br label %43

43:                                               ; preds = %233, %4
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %236

47:                                               ; preds = %43
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load %struct.huff_entry*, %struct.huff_entry** %6, align 8
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.huff_entry, %struct.huff_entry* %52, i64 %54
  %56 = getelementptr inbounds %struct.huff_entry, %struct.huff_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %230

60:                                               ; preds = %51, %47
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %134

63:                                               ; preds = %60
  br label %64

64:                                               ; preds = %73, %63
  %65 = load i32, i32* %13, align 4
  %66 = icmp sge i32 %65, 20
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %68, 20
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp sgt i32 %70, 31
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 31, i32* %19, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32*, i32** %16, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %16, align 8
  store i32 18, i32* %74, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32*, i32** %18, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %18, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32, i32* %19, align 4
  %80 = add nsw i32 %79, 20
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = getelementptr inbounds i32, i32* %25, i64 18
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %64

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %96, %86
  %88 = load i32, i32* %13, align 4
  %89 = icmp sge i32 %88, 4
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = sub nsw i32 %91, 4
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp sgt i32 %93, 15
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 15, i32* %19, align 4
  br label %96

96:                                               ; preds = %95, %90
  %97 = load i32*, i32** %16, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %16, align 8
  store i32 17, i32* %97, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32*, i32** %18, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %18, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32, i32* %19, align 4
  %103 = add nsw i32 %102, 4
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %13, align 4
  %106 = getelementptr inbounds i32, i32* %25, i64 17
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %87

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %113, %109
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %16, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %16, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %16, align 8
  %124 = load i32, i32* %122, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %25, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load i32*, i32** %18, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %18, align 8
  store i32 0, i32* %129, align 4
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %13, align 4
  br label %110

133:                                              ; preds = %110
  br label %218

134:                                              ; preds = %60
  br label %135

135:                                              ; preds = %169, %134
  %136 = load i32, i32* %13, align 4
  %137 = icmp sge i32 %136, 4
  br i1 %137, label %138, label %183

138:                                              ; preds = %135
  %139 = load i32, i32* %13, align 4
  %140 = icmp eq i32 %139, 4
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 0, i32* %19, align 4
  br label %143

142:                                              ; preds = %138
  store i32 1, i32* %19, align 4
  br label %143

143:                                              ; preds = %142, %141
  %144 = load i32*, i32** %16, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %16, align 8
  store i32 19, i32* %144, align 4
  %146 = load i32, i32* %19, align 4
  %147 = load i32*, i32** %18, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %18, align 8
  store i32 %146, i32* %147, align 4
  %149 = getelementptr inbounds i32, i32* %25, i64 19
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load i32*, i32** %16, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %16, align 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 16
  br i1 %164, label %165, label %169

165:                                              ; preds = %143
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 17
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %165, %143
  %170 = load i32*, i32** %16, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %16, align 8
  %172 = load i32, i32* %170, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %25, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = load i32*, i32** %18, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %18, align 8
  store i32 0, i32* %177, align 4
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 4
  %181 = load i32, i32* %13, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %13, align 4
  br label %135

183:                                              ; preds = %135
  br label %184

184:                                              ; preds = %205, %183
  %185 = load i32, i32* %13, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %217

187:                                              ; preds = %184
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %14, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load i32*, i32** %16, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i32*, i32** %16, align 8
  %199 = load i32, i32* %198, align 4
  %200 = icmp sgt i32 %199, 16
  br i1 %200, label %201, label %205

201:                                              ; preds = %187
  %202 = load i32*, i32** %16, align 8
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 17
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %201, %187
  %206 = load i32*, i32** %18, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %18, align 8
  store i32 0, i32* %206, align 4
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %13, align 4
  %210 = load i32*, i32** %16, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %16, align 8
  %212 = load i32, i32* %210, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %25, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  br label %184

217:                                              ; preds = %184
  br label %218

218:                                              ; preds = %217, %133
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = load %struct.huff_entry*, %struct.huff_entry** %6, align 8
  %224 = load i32, i32* %20, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.huff_entry, %struct.huff_entry* %223, i64 %225
  %227 = getelementptr inbounds %struct.huff_entry, %struct.huff_entry* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %222, %218
  store i32 0, i32* %13, align 4
  br label %230

230:                                              ; preds = %229, %51
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %20, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %20, align 4
  br label %43

236:                                              ; preds = %43
  %237 = load i32*, i32** %16, align 8
  store i32* %237, i32** %17, align 8
  %238 = load i32, i32* @LZX_PRETREE_SIZE, align 4
  %239 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %15, i64 0, i64 0
  %240 = call i32 @build_huffman_tree(i32 %238, i32 16, i32* %25, %struct.TYPE_3__* %239)
  store i32 0, i32* %20, align 4
  br label %241

241:                                              ; preds = %253, %236
  %242 = load i32, i32* %20, align 4
  %243 = load i32, i32* @LZX_PRETREE_SIZE, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %241
  %246 = load %struct.lzx_data*, %struct.lzx_data** %5, align 8
  %247 = load i32, i32* %20, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %15, i64 0, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @lzx_write_bits(%struct.lzx_data* %246, i32 4, i32 %251)
  br label %253

253:                                              ; preds = %245
  %254 = load i32, i32* %20, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %20, align 4
  br label %241

256:                                              ; preds = %241
  %257 = load i32*, i32** %9, align 8
  store i32* %257, i32** %16, align 8
  %258 = load i32*, i32** %10, align 8
  store i32* %258, i32** %18, align 8
  store i32 0, i32* %13, align 4
  br label %259

259:                                              ; preds = %339, %256
  %260 = load i32*, i32** %16, align 8
  %261 = load i32*, i32** %17, align 8
  %262 = icmp ult i32* %260, %261
  br i1 %262, label %263, label %342

263:                                              ; preds = %259
  %264 = load i32*, i32** %16, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %16, align 8
  %266 = load i32, i32* %264, align 4
  store i32 %266, i32* %21, align 4
  %267 = load %struct.lzx_data*, %struct.lzx_data** %5, align 8
  %268 = load i32, i32* %21, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %15, i64 0, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %21, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %15, i64 0, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @lzx_write_bits(%struct.lzx_data* %267, i32 %272, i32 %277)
  %279 = load i32, i32* %21, align 4
  %280 = icmp eq i32 %279, 17
  br i1 %280, label %281, label %291

281:                                              ; preds = %263
  %282 = load i32*, i32** %18, align 8
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 4
  %285 = load i32, i32* %13, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %13, align 4
  %287 = load %struct.lzx_data*, %struct.lzx_data** %5, align 8
  %288 = load i32*, i32** %18, align 8
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @lzx_write_bits(%struct.lzx_data* %287, i32 4, i32 %289)
  br label %339

291:                                              ; preds = %263
  %292 = load i32, i32* %21, align 4
  %293 = icmp eq i32 %292, 18
  br i1 %293, label %294, label %304

294:                                              ; preds = %291
  %295 = load i32*, i32** %18, align 8
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %296, 20
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %13, align 4
  %300 = load %struct.lzx_data*, %struct.lzx_data** %5, align 8
  %301 = load i32*, i32** %18, align 8
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @lzx_write_bits(%struct.lzx_data* %300, i32 5, i32 %302)
  br label %338

304:                                              ; preds = %291
  %305 = load i32, i32* %21, align 4
  %306 = icmp eq i32 %305, 19
  br i1 %306, label %307, label %334

307:                                              ; preds = %304
  %308 = load i32*, i32** %18, align 8
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 4
  %311 = load i32, i32* %13, align 4
  %312 = add nsw i32 %311, %310
  store i32 %312, i32* %13, align 4
  %313 = load %struct.lzx_data*, %struct.lzx_data** %5, align 8
  %314 = load i32*, i32** %18, align 8
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @lzx_write_bits(%struct.lzx_data* %313, i32 1, i32 %315)
  %317 = load i32*, i32** %16, align 8
  %318 = getelementptr inbounds i32, i32* %317, i32 1
  store i32* %318, i32** %16, align 8
  %319 = load i32, i32* %317, align 4
  store i32 %319, i32* %21, align 4
  %320 = load %struct.lzx_data*, %struct.lzx_data** %5, align 8
  %321 = load i32, i32* %21, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %15, i64 0, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %21, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [20 x %struct.TYPE_3__], [20 x %struct.TYPE_3__]* %15, i64 0, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @lzx_write_bits(%struct.lzx_data* %320, i32 %325, i32 %330)
  %332 = load i32*, i32** %18, align 8
  %333 = getelementptr inbounds i32, i32* %332, i32 1
  store i32* %333, i32** %18, align 8
  br label %337

334:                                              ; preds = %304
  %335 = load i32, i32* %13, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %13, align 4
  br label %337

337:                                              ; preds = %334, %307
  br label %338

338:                                              ; preds = %337, %294
  br label %339

339:                                              ; preds = %338, %281
  %340 = load i32*, i32** %18, align 8
  %341 = getelementptr inbounds i32, i32* %340, i32 1
  store i32* %341, i32** %18, align 8
  br label %259

342:                                              ; preds = %259
  %343 = load i32*, i32** %9, align 8
  %344 = call i32 @free(i32* %343)
  %345 = load i32*, i32** %10, align 8
  %346 = call i32 @free(i32* %345)
  %347 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %347)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @build_huffman_tree(i32, i32, i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @lzx_write_bits(%struct.lzx_data*, i32, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
