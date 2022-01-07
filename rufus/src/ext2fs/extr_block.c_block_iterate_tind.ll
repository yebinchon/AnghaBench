; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_block.c_block_iterate_tind.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_block.c_block_iterate_tind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_context = type { i32, i32 (%struct.TYPE_6__*, i64*, i32, i64, i32, i32)*, i64, i32, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@BLOCK_FLAG_DEPTH_TRAVERSE = common dso_local global i32 0, align 4
@BLOCK_FLAG_DATA_ONLY = common dso_local global i32 0, align 4
@BLOCK_COUNT_TIND = common dso_local global i32 0, align 4
@BLOCK_ABORT = common dso_local global i32 0, align 4
@EXT2_ET_BAD_TIND_BLOCK = common dso_local global i64 0, align 8
@BLOCK_ERROR = common dso_local global i32 0, align 4
@BLOCK_FLAG_APPEND = common dso_local global i32 0, align 4
@BLOCK_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32, %struct.block_context*)* @block_iterate_tind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_iterate_tind(i64* %0, i64 %1, i32 %2, %struct.block_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.block_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.block_context* %3, %struct.block_context** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.block_context*, %struct.block_context** %9, align 8
  %19 = getelementptr inbounds %struct.block_context, %struct.block_context* %18, i32 0, i32 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 2
  store i32 %23, i32* %14, align 4
  %24 = load %struct.block_context*, %struct.block_context** %9, align 8
  %25 = getelementptr inbounds %struct.block_context, %struct.block_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BLOCK_FLAG_DEPTH_TRAVERSE, align 4
  %28 = load i32, i32* @BLOCK_FLAG_DATA_ONLY, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %4
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  %35 = load %struct.block_context*, %struct.block_context** %9, align 8
  %36 = getelementptr inbounds %struct.block_context, %struct.block_context* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_6__*, i64*, i32, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i64*, i32, i64, i32, i32)** %36, align 8
  %38 = load %struct.block_context*, %struct.block_context** %9, align 8
  %39 = getelementptr inbounds %struct.block_context, %struct.block_context* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* @BLOCK_COUNT_TIND, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.block_context*, %struct.block_context** %9, align 8
  %45 = getelementptr inbounds %struct.block_context, %struct.block_context* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %37(%struct.TYPE_6__* %40, i64* %17, i32 %41, i64 %42, i32 %43, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i64, i64* %17, align 8
  %49 = load i64*, i64** %6, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %32, %4
  %51 = load %struct.block_context*, %struct.block_context** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @check_for_ro_violation_return(%struct.block_context* %51, i32 %52)
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @BLOCK_ABORT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57, %50
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %64, %66
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %67, %69
  %71 = load %struct.block_context*, %struct.block_context** %9, align 8
  %72 = getelementptr inbounds %struct.block_context, %struct.block_context* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %305

76:                                               ; preds = %57
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.block_context*, %struct.block_context** %9, align 8
  %80 = getelementptr inbounds %struct.block_context, %struct.block_context* %79, i32 0, i32 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = call i64 @ext2fs_blocks_count(%struct.TYPE_7__* %83)
  %85 = icmp sge i64 %78, %84
  br i1 %85, label %97, label %86

86:                                               ; preds = %76
  %87 = load i64*, i64** %6, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.block_context*, %struct.block_context** %9, align 8
  %90 = getelementptr inbounds %struct.block_context, %struct.block_context* %89, i32 0, i32 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %88, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %86, %76
  %98 = load i64, i64* @EXT2_ET_BAD_TIND_BLOCK, align 8
  %99 = load %struct.block_context*, %struct.block_context** %9, align 8
  %100 = getelementptr inbounds %struct.block_context, %struct.block_context* %99, i32 0, i32 5
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @BLOCK_ERROR, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %5, align 4
  br label %305

105:                                              ; preds = %86
  %106 = load %struct.block_context*, %struct.block_context** %9, align 8
  %107 = getelementptr inbounds %struct.block_context, %struct.block_context* %106, i32 0, i32 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i64*, i64** %6, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.block_context*, %struct.block_context** %9, align 8
  %112 = getelementptr inbounds %struct.block_context, %struct.block_context* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @ext2fs_read_ind_block(%struct.TYPE_6__* %108, i64 %110, i64 %113)
  %115 = load %struct.block_context*, %struct.block_context** %9, align 8
  %116 = getelementptr inbounds %struct.block_context, %struct.block_context* %115, i32 0, i32 5
  store i64 %114, i64* %116, align 8
  %117 = load %struct.block_context*, %struct.block_context** %9, align 8
  %118 = getelementptr inbounds %struct.block_context, %struct.block_context* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %105
  %122 = load i32, i32* @BLOCK_ERROR, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %305

126:                                              ; preds = %105
  %127 = load %struct.block_context*, %struct.block_context** %9, align 8
  %128 = getelementptr inbounds %struct.block_context, %struct.block_context* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i64*
  store i64* %130, i64** %16, align 8
  store i32 0, i32* %15, align 4
  %131 = load %struct.block_context*, %struct.block_context** %9, align 8
  %132 = getelementptr inbounds %struct.block_context, %struct.block_context* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @BLOCK_FLAG_APPEND, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %177

137:                                              ; preds = %126
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %171, %137
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %176

142:                                              ; preds = %138
  %143 = load i64*, i64** %16, align 8
  %144 = load i64*, i64** %6, align 8
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.block_context*, %struct.block_context** %9, align 8
  %148 = call i32 @block_iterate_dind(i64* %143, i64 %145, i32 %146, %struct.block_context* %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %11, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @BLOCK_ABORT, align 4
  %154 = load i32, i32* @BLOCK_ERROR, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %142
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @BLOCK_ABORT, align 4
  %161 = load i32, i32* @BLOCK_ERROR, align 4
  %162 = or i32 %160, %161
  %163 = and i32 %159, %162
  %164 = load i32, i32* %10, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %10, align 4
  br label %176

166:                                              ; preds = %142
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %168, 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %15, align 4
  br label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  %174 = load i64*, i64** %16, align 8
  %175 = getelementptr inbounds i64, i64* %174, i32 1
  store i64* %175, i64** %16, align 8
  br label %138

176:                                              ; preds = %158, %138
  br label %230

177:                                              ; preds = %126
  store i32 0, i32* %12, align 4
  br label %178

178:                                              ; preds = %224, %177
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %14, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %229

182:                                              ; preds = %178
  %183 = load i64*, i64** %16, align 8
  %184 = load i64, i64* %183, align 8
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %182
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = mul nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = load %struct.block_context*, %struct.block_context** %9, align 8
  %192 = getelementptr inbounds %struct.block_context, %struct.block_context* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, %190
  store i64 %194, i64* %192, align 8
  br label %224

195:                                              ; preds = %182
  %196 = load i64*, i64** %16, align 8
  %197 = load i64*, i64** %6, align 8
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.block_context*, %struct.block_context** %9, align 8
  %201 = call i32 @block_iterate_dind(i64* %196, i64 %198, i32 %199, %struct.block_context* %200)
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %11, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @BLOCK_ABORT, align 4
  %207 = load i32, i32* @BLOCK_ERROR, align 4
  %208 = or i32 %206, %207
  %209 = and i32 %205, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %195
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* @BLOCK_ABORT, align 4
  %214 = load i32, i32* @BLOCK_ERROR, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %212, %215
  %217 = load i32, i32* %10, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %10, align 4
  br label %229

219:                                              ; preds = %195
  %220 = load i32, i32* %15, align 4
  %221 = sext i32 %220 to i64
  %222 = add i64 %221, 8
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %15, align 4
  br label %224

224:                                              ; preds = %219, %186
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %12, align 4
  %227 = load i64*, i64** %16, align 8
  %228 = getelementptr inbounds i64, i64* %227, i32 1
  store i64* %228, i64** %16, align 8
  br label %178

229:                                              ; preds = %211, %178
  br label %230

230:                                              ; preds = %229, %176
  %231 = load %struct.block_context*, %struct.block_context** %9, align 8
  %232 = load i32, i32* %11, align 4
  %233 = call i32 @check_for_ro_violation_return(%struct.block_context* %231, i32 %232)
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* @BLOCK_CHANGED, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %261

238:                                              ; preds = %230
  %239 = load %struct.block_context*, %struct.block_context** %9, align 8
  %240 = getelementptr inbounds %struct.block_context, %struct.block_context* %239, i32 0, i32 4
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = load i64*, i64** %6, align 8
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.block_context*, %struct.block_context** %9, align 8
  %245 = getelementptr inbounds %struct.block_context, %struct.block_context* %244, i32 0, i32 6
  %246 = load i64, i64* %245, align 8
  %247 = call i64 @ext2fs_write_ind_block(%struct.TYPE_6__* %241, i64 %243, i64 %246)
  %248 = load %struct.block_context*, %struct.block_context** %9, align 8
  %249 = getelementptr inbounds %struct.block_context, %struct.block_context* %248, i32 0, i32 5
  store i64 %247, i64* %249, align 8
  %250 = load %struct.block_context*, %struct.block_context** %9, align 8
  %251 = getelementptr inbounds %struct.block_context, %struct.block_context* %250, i32 0, i32 5
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %238
  %255 = load i32, i32* @BLOCK_ERROR, align 4
  %256 = load i32, i32* @BLOCK_ABORT, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* %10, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %254, %238
  br label %261

261:                                              ; preds = %260, %230
  %262 = load %struct.block_context*, %struct.block_context** %9, align 8
  %263 = getelementptr inbounds %struct.block_context, %struct.block_context* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @BLOCK_FLAG_DEPTH_TRAVERSE, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %300

268:                                              ; preds = %261
  %269 = load %struct.block_context*, %struct.block_context** %9, align 8
  %270 = getelementptr inbounds %struct.block_context, %struct.block_context* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @BLOCK_FLAG_DATA_ONLY, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %300, label %275

275:                                              ; preds = %268
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* @BLOCK_ABORT, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %300, label %280

280:                                              ; preds = %275
  %281 = load i64*, i64** %6, align 8
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %17, align 8
  %283 = load %struct.block_context*, %struct.block_context** %9, align 8
  %284 = getelementptr inbounds %struct.block_context, %struct.block_context* %283, i32 0, i32 1
  %285 = load i32 (%struct.TYPE_6__*, i64*, i32, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i64*, i32, i64, i32, i32)** %284, align 8
  %286 = load %struct.block_context*, %struct.block_context** %9, align 8
  %287 = getelementptr inbounds %struct.block_context, %struct.block_context* %286, i32 0, i32 4
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %287, align 8
  %289 = load i32, i32* @BLOCK_COUNT_TIND, align 4
  %290 = load i64, i64* %7, align 8
  %291 = load i32, i32* %8, align 4
  %292 = load %struct.block_context*, %struct.block_context** %9, align 8
  %293 = getelementptr inbounds %struct.block_context, %struct.block_context* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = call i32 %285(%struct.TYPE_6__* %288, i64* %17, i32 %289, i64 %290, i32 %291, i32 %294)
  %296 = load i32, i32* %10, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %10, align 4
  %298 = load i64, i64* %17, align 8
  %299 = load i64*, i64** %6, align 8
  store i64 %298, i64* %299, align 8
  br label %300

300:                                              ; preds = %280, %275, %268, %261
  %301 = load %struct.block_context*, %struct.block_context** %9, align 8
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @check_for_ro_violation_return(%struct.block_context* %301, i32 %302)
  %304 = load i32, i32* %10, align 4
  store i32 %304, i32* %5, align 4
  br label %305

305:                                              ; preds = %300, %121, %97, %62
  %306 = load i32, i32* %5, align 4
  ret i32 %306
}

declare dso_local i32 @check_for_ro_violation_return(%struct.block_context*, i32) #1

declare dso_local i64 @ext2fs_blocks_count(%struct.TYPE_7__*) #1

declare dso_local i64 @ext2fs_read_ind_block(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @block_iterate_dind(i64*, i64, i32, %struct.block_context*) #1

declare dso_local i64 @ext2fs_write_ind_block(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
