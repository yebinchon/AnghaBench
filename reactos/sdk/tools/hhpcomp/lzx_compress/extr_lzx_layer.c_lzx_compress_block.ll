; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_compress_block.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_lzx_compress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64, double, double, i32*, i32*, i32, i32*, i64*, i64*, i32*, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64, i32, i64 (i32)*, i32 }
%struct.TYPE_9__ = type { i64 }

@LZX_FRAME_SIZE = common dso_local global i8* null, align 8
@NUM_SECONDARY_LENGTHS = common dso_local global i32 0, align 4
@LZX_ALIGNED_SIZE = common dso_local global i32 0, align 4
@LZX_ALIGNED_OFFSET_BLOCK = common dso_local global i32 0, align 4
@LZX_VERBATIM_BLOCK = common dso_local global i32 0, align 4
@LZX_MAX_CODE_LENGTH = common dso_local global i32 0, align 4
@NUM_CHARS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzx_compress_block(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 12
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %19, %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 12
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 12
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @free(i32* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32* @malloc(i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 12
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %34, %19
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** @LZX_FRAME_SIZE, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store double 0.000000e+00, double* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store double 0x416312CFE0000000, double* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 12
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 13
  store i32* %65, i32** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @NUM_SECONDARY_LENGTHS, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memset(i32* %70, i32 0, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(i32* %78, i32 0, i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 9
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @LZX_ALIGNED_SIZE, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memset(i32* %88, i32 0, i32 %92)
  br label %94

94:                                               ; preds = %434, %45
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 20
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @lz_compress(i32 %97, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = load i8*, i8** @LZX_FRAME_SIZE, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %106, %94
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %136, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 20
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @lz_left_to_process(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %410, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 19
  %130 = load i64 (i32)*, i64 (i32)** %129, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 18
  %133 = load i32, i32* %132, align 8
  %134 = call i64 %130(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %410

136:                                              ; preds = %127, %116, %111
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %139, %142
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %8, align 8
  %146 = sub nsw i64 %144, %145
  store i64 %146, i64* %13, align 8
  %147 = load i64, i64* %13, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %411

150:                                              ; preds = %136
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  store i32 1, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %150
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 17
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %165 = call i32 @lzx_write_bits(%struct.TYPE_8__* %164, i32 1, i64 0)
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 17
  store i64 0, i64* %167, align 8
  br label %168

168:                                              ; preds = %163, %158
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %169 = load i32, i32* @LZX_ALIGNED_SIZE, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 9
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 16
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = call i32 @build_huffman_tree(i32 %169, i32 7, i32* %172, %struct.TYPE_9__* %175)
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %212, %168
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @LZX_ALIGNED_SIZE, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %215

181:                                              ; preds = %177
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 9
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %188, 3
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %10, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %10, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 9
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 16
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = mul nsw i64 %200, %208
  %210 = load i64, i64* %11, align 8
  %211 = add nsw i64 %210, %209
  store i64 %211, i64* %11, align 8
  br label %212

212:                                              ; preds = %181
  %213 = load i32, i32* %7, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %7, align 4
  br label %177

215:                                              ; preds = %177
  %216 = load i64, i64* %11, align 8
  %217 = load i32, i32* @LZX_ALIGNED_SIZE, align 4
  %218 = mul nsw i32 %217, 3
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %216, %219
  store i64 %220, i64* %12, align 8
  %221 = load i64, i64* %12, align 8
  %222 = load i64, i64* %10, align 8
  %223 = icmp slt i64 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %215
  %225 = load i32, i32* @LZX_ALIGNED_OFFSET_BLOCK, align 4
  store i32 %225, i32* %9, align 4
  br label %228

226:                                              ; preds = %215
  %227 = load i32, i32* @LZX_VERBATIM_BLOCK, align 4
  store i32 %227, i32* %9, align 4
  br label %228

228:                                              ; preds = %226, %224
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = call i32 @lzx_write_bits(%struct.TYPE_8__* %229, i32 3, i64 %231)
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %234 = load i64, i64* %13, align 8
  %235 = call i32 @lzx_write_bits(%struct.TYPE_8__* %233, i32 24, i64 %234)
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %238, %241
  %243 = sext i32 %242 to i64
  store i64 %243, i64* %8, align 8
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @LZX_ALIGNED_OFFSET_BLOCK, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %267

247:                                              ; preds = %228
  store i32 0, i32* %7, align 4
  br label %248

248:                                              ; preds = %263, %247
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* @LZX_ALIGNED_SIZE, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %266

252:                                              ; preds = %248
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 16
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @lzx_write_bits(%struct.TYPE_8__* %253, i32 3, i64 %261)
  br label %263

263:                                              ; preds = %252
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %248

266:                                              ; preds = %248
  br label %267

267:                                              ; preds = %266, %228
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @LZX_MAX_CODE_LENGTH, align 4
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 7
  %274 = load i32*, i32** %273, align 8
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 15
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %276, align 8
  %278 = call i32 @build_huffman_tree(i32 %270, i32 %271, i32* %274, %struct.TYPE_9__* %277)
  %279 = load i32, i32* @NUM_SECONDARY_LENGTHS, align 4
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 6
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 14
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %284, align 8
  %286 = call i32 @build_huffman_tree(i32 %279, i32 16, i32* %282, %struct.TYPE_9__* %285)
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 15
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 10
  %293 = load i64*, i64** %292, align 8
  %294 = load i32, i32* @NUM_CHARS, align 4
  %295 = call i32 @lzx_write_compressed_tree(%struct.TYPE_8__* %287, %struct.TYPE_9__* %290, i64* %293, i32 %294)
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 15
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %298, align 8
  %300 = load i32, i32* @NUM_CHARS, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i64 %301
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 10
  %305 = load i64*, i64** %304, align 8
  %306 = load i32, i32* @NUM_CHARS, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %305, i64 %307
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 8
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @NUM_CHARS, align 4
  %313 = sub nsw i32 %311, %312
  %314 = call i32 @lzx_write_compressed_tree(%struct.TYPE_8__* %296, %struct.TYPE_9__* %302, i64* %308, i32 %313)
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 14
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %317, align 8
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 11
  %321 = load i64*, i64** %320, align 8
  %322 = load i32, i32* @NUM_SECONDARY_LENGTHS, align 4
  %323 = call i32 @lzx_write_compressed_tree(%struct.TYPE_8__* %315, %struct.TYPE_9__* %318, i64* %321, i32 %322)
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %325 = load i32, i32* %9, align 4
  %326 = call i32 @lzx_write_compressed_literals(%struct.TYPE_8__* %324, i32 %325)
  store i32 0, i32* %7, align 4
  br label %327

327:                                              ; preds = %348, %267
  %328 = load i32, i32* %7, align 4
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %328, %331
  br i1 %332, label %333, label %351

333:                                              ; preds = %327
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 15
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %335, align 8
  %337 = load i32, i32* %7, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 10
  %344 = load i64*, i64** %343, align 8
  %345 = load i32, i32* %7, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  store i64 %341, i64* %347, align 8
  br label %348

348:                                              ; preds = %333
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %7, align 4
  br label %327

351:                                              ; preds = %327
  store i32 0, i32* %7, align 4
  br label %352

352:                                              ; preds = %371, %351
  %353 = load i32, i32* %7, align 4
  %354 = load i32, i32* @NUM_SECONDARY_LENGTHS, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %374

356:                                              ; preds = %352
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 14
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %358, align 8
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 11
  %367 = load i64*, i64** %366, align 8
  %368 = load i32, i32* %7, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  store i64 %364, i64* %370, align 8
  br label %371

371:                                              ; preds = %356
  %372 = load i32, i32* %7, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %7, align 4
  br label %352

374:                                              ; preds = %352
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 4
  store double 0.000000e+00, double* %376, align 8
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 5
  store double 0x416312CFE0000000, double* %378, align 8
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 12
  %381 = load i32*, i32** %380, align 8
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 13
  store i32* %381, i32** %383, align 8
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 6
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* @NUM_SECONDARY_LENGTHS, align 4
  %388 = sext i32 %387 to i64
  %389 = mul i64 %388, 4
  %390 = trunc i64 %389 to i32
  %391 = call i32 @memset(i32* %386, i32 0, i32 %390)
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 7
  %394 = load i32*, i32** %393, align 8
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 8
  %397 = load i32, i32* %396, align 8
  %398 = sext i32 %397 to i64
  %399 = mul i64 %398, 4
  %400 = trunc i64 %399 to i32
  %401 = call i32 @memset(i32* %394, i32 0, i32 %400)
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 9
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* @LZX_ALIGNED_SIZE, align 4
  %406 = sext i32 %405 to i64
  %407 = mul i64 %406, 4
  %408 = trunc i64 %407 to i32
  %409 = call i32 @memset(i32* %404, i32 0, i32 %408)
  br label %410

410:                                              ; preds = %374, %127, %121
  br label %411

411:                                              ; preds = %410, %149
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %434

416:                                              ; preds = %411
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 20
  %419 = load i32, i32* %418, align 8
  %420 = call i64 @lz_left_to_process(i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %432, label %422

422:                                              ; preds = %416
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 19
  %425 = load i64 (i32)*, i64 (i32)** %424, align 8
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 18
  %428 = load i32, i32* %427, align 8
  %429 = call i64 %425(i32 %428)
  %430 = icmp ne i64 %429, 0
  %431 = xor i1 %430, true
  br label %432

432:                                              ; preds = %422, %416
  %433 = phi i1 [ true, %416 ], [ %431, %422 ]
  br label %434

434:                                              ; preds = %432, %411
  %435 = phi i1 [ false, %411 ], [ %433, %432 ]
  br i1 %435, label %94, label %436

436:                                              ; preds = %434
  ret i32 0
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lz_compress(i32, i32) #1

declare dso_local i64 @lz_left_to_process(i32) #1

declare dso_local i32 @lzx_write_bits(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @build_huffman_tree(i32, i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @lzx_write_compressed_tree(%struct.TYPE_8__*, %struct.TYPE_9__*, i64*, i32) #1

declare dso_local i32 @lzx_write_compressed_literals(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
