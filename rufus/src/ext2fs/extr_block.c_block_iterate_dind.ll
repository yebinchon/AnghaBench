; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_block.c_block_iterate_dind.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_block.c_block_iterate_dind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_context = type { i32, i32 (%struct.TYPE_6__*, i64*, i32, i64, i32, i32)*, i32, i32, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@BLOCK_FLAG_DEPTH_TRAVERSE = common dso_local global i32 0, align 4
@BLOCK_FLAG_DATA_ONLY = common dso_local global i32 0, align 4
@BLOCK_COUNT_DIND = common dso_local global i32 0, align 4
@BLOCK_ABORT = common dso_local global i32 0, align 4
@EXT2_ET_BAD_DIND_BLOCK = common dso_local global i64 0, align 8
@BLOCK_ERROR = common dso_local global i32 0, align 4
@BLOCK_FLAG_APPEND = common dso_local global i32 0, align 4
@BLOCK_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32, %struct.block_context*)* @block_iterate_dind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_iterate_dind(i64* %0, i64 %1, i32 %2, %struct.block_context* %3) #0 {
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
  %41 = load i32, i32* @BLOCK_COUNT_DIND, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.block_context*, %struct.block_context** %9, align 8
  %45 = getelementptr inbounds %struct.block_context, %struct.block_context* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
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
  br i1 %61, label %62, label %71

62:                                               ; preds = %57, %50
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load %struct.block_context*, %struct.block_context** %9, align 8
  %67 = getelementptr inbounds %struct.block_context, %struct.block_context* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %297

71:                                               ; preds = %57
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.block_context*, %struct.block_context** %9, align 8
  %75 = getelementptr inbounds %struct.block_context, %struct.block_context* %74, i32 0, i32 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = call i64 @ext2fs_blocks_count(%struct.TYPE_7__* %78)
  %80 = icmp sge i64 %73, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %71
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.block_context*, %struct.block_context** %9, align 8
  %85 = getelementptr inbounds %struct.block_context, %struct.block_context* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %83, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %81, %71
  %93 = load i64, i64* @EXT2_ET_BAD_DIND_BLOCK, align 8
  %94 = load %struct.block_context*, %struct.block_context** %9, align 8
  %95 = getelementptr inbounds %struct.block_context, %struct.block_context* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @BLOCK_ERROR, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %297

100:                                              ; preds = %81
  %101 = load %struct.block_context*, %struct.block_context** %9, align 8
  %102 = getelementptr inbounds %struct.block_context, %struct.block_context* %101, i32 0, i32 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i64*, i64** %6, align 8
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.block_context*, %struct.block_context** %9, align 8
  %107 = getelementptr inbounds %struct.block_context, %struct.block_context* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @ext2fs_read_ind_block(%struct.TYPE_6__* %103, i64 %105, i64 %108)
  %110 = load %struct.block_context*, %struct.block_context** %9, align 8
  %111 = getelementptr inbounds %struct.block_context, %struct.block_context* %110, i32 0, i32 5
  store i64 %109, i64* %111, align 8
  %112 = load %struct.block_context*, %struct.block_context** %9, align 8
  %113 = getelementptr inbounds %struct.block_context, %struct.block_context* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %100
  %117 = load i32, i32* @BLOCK_ERROR, align 4
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %5, align 4
  br label %297

121:                                              ; preds = %100
  %122 = load %struct.block_context*, %struct.block_context** %9, align 8
  %123 = getelementptr inbounds %struct.block_context, %struct.block_context* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i64*
  store i64* %125, i64** %16, align 8
  store i32 0, i32* %15, align 4
  %126 = load %struct.block_context*, %struct.block_context** %9, align 8
  %127 = getelementptr inbounds %struct.block_context, %struct.block_context* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @BLOCK_FLAG_APPEND, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %172

132:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %166, %132
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %171

137:                                              ; preds = %133
  %138 = load i64*, i64** %16, align 8
  %139 = load i64*, i64** %6, align 8
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.block_context*, %struct.block_context** %9, align 8
  %143 = call i32 @block_iterate_ind(i64* %138, i64 %140, i32 %141, %struct.block_context* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %11, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @BLOCK_ABORT, align 4
  %149 = load i32, i32* @BLOCK_ERROR, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %137
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @BLOCK_ABORT, align 4
  %156 = load i32, i32* @BLOCK_ERROR, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %171

161:                                              ; preds = %137
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 %163, 8
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %15, align 4
  br label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  %169 = load i64*, i64** %16, align 8
  %170 = getelementptr inbounds i64, i64* %169, i32 1
  store i64* %170, i64** %16, align 8
  br label %133

171:                                              ; preds = %153, %133
  br label %222

172:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %216, %172
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %221

177:                                              ; preds = %173
  %178 = load i64*, i64** %16, align 8
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.block_context*, %struct.block_context** %9, align 8
  %184 = getelementptr inbounds %struct.block_context, %struct.block_context* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %216

187:                                              ; preds = %177
  %188 = load i64*, i64** %16, align 8
  %189 = load i64*, i64** %6, align 8
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = load %struct.block_context*, %struct.block_context** %9, align 8
  %193 = call i32 @block_iterate_ind(i64* %188, i64 %190, i32 %191, %struct.block_context* %192)
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %11, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @BLOCK_ABORT, align 4
  %199 = load i32, i32* @BLOCK_ERROR, align 4
  %200 = or i32 %198, %199
  %201 = and i32 %197, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %187
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* @BLOCK_ABORT, align 4
  %206 = load i32, i32* @BLOCK_ERROR, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = load i32, i32* %10, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %10, align 4
  br label %221

211:                                              ; preds = %187
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = add i64 %213, 8
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %15, align 4
  br label %216

216:                                              ; preds = %211, %181
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %12, align 4
  %219 = load i64*, i64** %16, align 8
  %220 = getelementptr inbounds i64, i64* %219, i32 1
  store i64* %220, i64** %16, align 8
  br label %173

221:                                              ; preds = %203, %173
  br label %222

222:                                              ; preds = %221, %171
  %223 = load %struct.block_context*, %struct.block_context** %9, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @check_for_ro_violation_return(%struct.block_context* %223, i32 %224)
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* @BLOCK_CHANGED, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %253

230:                                              ; preds = %222
  %231 = load %struct.block_context*, %struct.block_context** %9, align 8
  %232 = getelementptr inbounds %struct.block_context, %struct.block_context* %231, i32 0, i32 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = load i64*, i64** %6, align 8
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.block_context*, %struct.block_context** %9, align 8
  %237 = getelementptr inbounds %struct.block_context, %struct.block_context* %236, i32 0, i32 6
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @ext2fs_write_ind_block(%struct.TYPE_6__* %233, i64 %235, i64 %238)
  %240 = load %struct.block_context*, %struct.block_context** %9, align 8
  %241 = getelementptr inbounds %struct.block_context, %struct.block_context* %240, i32 0, i32 5
  store i64 %239, i64* %241, align 8
  %242 = load %struct.block_context*, %struct.block_context** %9, align 8
  %243 = getelementptr inbounds %struct.block_context, %struct.block_context* %242, i32 0, i32 5
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %230
  %247 = load i32, i32* @BLOCK_ERROR, align 4
  %248 = load i32, i32* @BLOCK_ABORT, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* %10, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %10, align 4
  br label %252

252:                                              ; preds = %246, %230
  br label %253

253:                                              ; preds = %252, %222
  %254 = load %struct.block_context*, %struct.block_context** %9, align 8
  %255 = getelementptr inbounds %struct.block_context, %struct.block_context* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @BLOCK_FLAG_DEPTH_TRAVERSE, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %292

260:                                              ; preds = %253
  %261 = load %struct.block_context*, %struct.block_context** %9, align 8
  %262 = getelementptr inbounds %struct.block_context, %struct.block_context* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @BLOCK_FLAG_DATA_ONLY, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %292, label %267

267:                                              ; preds = %260
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* @BLOCK_ABORT, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %292, label %272

272:                                              ; preds = %267
  %273 = load i64*, i64** %6, align 8
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %17, align 8
  %275 = load %struct.block_context*, %struct.block_context** %9, align 8
  %276 = getelementptr inbounds %struct.block_context, %struct.block_context* %275, i32 0, i32 1
  %277 = load i32 (%struct.TYPE_6__*, i64*, i32, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i64*, i32, i64, i32, i32)** %276, align 8
  %278 = load %struct.block_context*, %struct.block_context** %9, align 8
  %279 = getelementptr inbounds %struct.block_context, %struct.block_context* %278, i32 0, i32 4
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = load i32, i32* @BLOCK_COUNT_DIND, align 4
  %282 = load i64, i64* %7, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load %struct.block_context*, %struct.block_context** %9, align 8
  %285 = getelementptr inbounds %struct.block_context, %struct.block_context* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 %277(%struct.TYPE_6__* %280, i64* %17, i32 %281, i64 %282, i32 %283, i32 %286)
  %288 = load i32, i32* %10, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %10, align 4
  %290 = load i64, i64* %17, align 8
  %291 = load i64*, i64** %6, align 8
  store i64 %290, i64* %291, align 8
  br label %292

292:                                              ; preds = %272, %267, %260, %253
  %293 = load %struct.block_context*, %struct.block_context** %9, align 8
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @check_for_ro_violation_return(%struct.block_context* %293, i32 %294)
  %296 = load i32, i32* %10, align 4
  store i32 %296, i32* %5, align 4
  br label %297

297:                                              ; preds = %292, %116, %92, %62
  %298 = load i32, i32* %5, align 4
  ret i32 %298
}

declare dso_local i32 @check_for_ro_violation_return(%struct.block_context*, i32) #1

declare dso_local i64 @ext2fs_blocks_count(%struct.TYPE_7__*) #1

declare dso_local i64 @ext2fs_read_ind_block(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @block_iterate_ind(i64*, i64, i32, %struct.block_context*) #1

declare dso_local i64 @ext2fs_write_ind_block(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
