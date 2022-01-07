; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_tables.c_ext2fs_allocate_group_table.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_alloc_tables.c_ext2fs_allocate_group_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32 }

@EXT2_ET_BLOCK_ALLOC_FAIL = common dso_local global i64 0, align 8
@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_allocate_group_table(%struct.TYPE_21__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ext2fs_group_first_block2(%struct.TYPE_21__* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ext2fs_group_last_block2(%struct.TYPE_21__* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %3
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %3
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %42 = call i64 @ext2fs_has_feature_flex_bg(%struct.TYPE_22__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %38
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %44
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sub nsw i32 %59, 1
  %61 = or i32 %58, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = icmp sgt i32 %62, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %51
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %68, %51
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %74, %75
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %73, %44, %38
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %78
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %120, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_21__* %87, i32 %88, i32 %89, i32 1, i32 %90, i32* %10)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i64, i64* %8, align 8
  store i64 %95, i64* %4, align 8
  br label %445

96:                                               ; preds = %86
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %107, %108
  %110 = add nsw i32 %109, 1
  %111 = srem i32 %106, %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %96
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %117, %96
  br label %122

120:                                              ; preds = %83, %78
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %120, %119
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %168

125:                                              ; preds = %122
  store i32 0, i32* %17, align 4
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %15, align 4
  %129 = srem i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @ext2fs_block_bitmap_loc(%struct.TYPE_21__* %132, i32 %134)
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %17, align 4
  br label %158

137:                                              ; preds = %125
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  %143 = icmp eq i32 %138, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %137
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %15, align 4
  %147 = sub nsw i32 %146, 1
  %148 = and i32 %145, %147
  store i32 %148, i32* %16, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* %15, align 4
  store i32 %152, i32* %16, align 4
  br label %156

153:                                              ; preds = %144
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %153, %151
  br label %157

157:                                              ; preds = %156, %137
  br label %158

158:                                              ; preds = %157, %131
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @flexbg_offset(%struct.TYPE_21__* %159, i32 %160, i32 %161, i32 %162, i32 %163, i32 1)
  store i32 %164, i32* %10, align 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @ext2fs_group_last_block2(%struct.TYPE_21__* %165, i32 %166)
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %158, %122
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @ext2fs_block_bitmap_loc(%struct.TYPE_21__* %169, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %226, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_21__* %174, i32 %175, i32 %176, i32 1, i32 %177, i32* %12)
  store i64 %178, i64* %8, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* @EXT2_ET_BLOCK_ALLOC_FAIL, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %173
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_21__* %183, i32 %184, i32 %185, i32 1, i32 %186, i32* %12)
  store i64 %187, i64* %8, align 8
  br label %188

188:                                              ; preds = %182, %173
  %189 = load i64, i64* %8, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i64, i64* %8, align 8
  store i64 %192, i64* %4, align 8
  br label %445

193:                                              ; preds = %188
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @ext2fs_mark_block_bitmap2(i32 %194, i32 %195)
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @ext2fs_block_bitmap_loc_set(%struct.TYPE_21__* %197, i32 %198, i32 %199)
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %225

203:                                              ; preds = %193
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @ext2fs_group_of_blk2(%struct.TYPE_21__* %204, i32 %205)
  store i32 %206, i32* %18, align 4
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %208 = load i32, i32* %18, align 4
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %210 = load i32, i32* %18, align 4
  %211 = call i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_21__* %209, i32 %210)
  %212 = sub nsw i64 %211, 1
  %213 = call i32 @ext2fs_bg_free_blocks_count_set(%struct.TYPE_21__* %207, i32 %208, i64 %212)
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 3
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %215, align 8
  %217 = call i32 @ext2fs_free_blocks_count_add(%struct.TYPE_22__* %216, i32 -1)
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %221 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_21__* %218, i32 %219, i32 %220)
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_21__* %222, i32 %223)
  br label %225

225:                                              ; preds = %203, %193
  br label %226

226:                                              ; preds = %225, %168
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %256

229:                                              ; preds = %226
  store i32 0, i32* %19, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %15, align 4
  %232 = srem i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sub nsw i32 %236, 1
  %238 = call i32 @ext2fs_inode_bitmap_loc(%struct.TYPE_21__* %235, i32 %237)
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %19, align 4
  br label %246

240:                                              ; preds = %229
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @ext2fs_block_bitmap_loc(%struct.TYPE_21__* %241, i32 %242)
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %243, %244
  store i32 %245, i32* %19, align 4
  br label %246

246:                                              ; preds = %240, %234
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %14, align 4
  %252 = call i32 @flexbg_offset(%struct.TYPE_21__* %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 1)
  store i32 %252, i32* %10, align 4
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %254 = load i32, i32* %13, align 4
  %255 = call i32 @ext2fs_group_last_block2(%struct.TYPE_21__* %253, i32 %254)
  store i32 %255, i32* %11, align 4
  br label %256

256:                                              ; preds = %246, %226
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %258 = load i32, i32* %6, align 4
  %259 = call i32 @ext2fs_inode_bitmap_loc(%struct.TYPE_21__* %257, i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %314, label %261

261:                                              ; preds = %256
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* %7, align 4
  %266 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_21__* %262, i32 %263, i32 %264, i32 1, i32 %265, i32* %12)
  store i64 %266, i64* %8, align 8
  %267 = load i64, i64* %8, align 8
  %268 = load i64, i64* @EXT2_ET_BLOCK_ALLOC_FAIL, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %261
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %7, align 4
  %275 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_21__* %271, i32 %272, i32 %273, i32 1, i32 %274, i32* %12)
  store i64 %275, i64* %8, align 8
  br label %276

276:                                              ; preds = %270, %261
  %277 = load i64, i64* %8, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = load i64, i64* %8, align 8
  store i64 %280, i64* %4, align 8
  br label %445

281:                                              ; preds = %276
  %282 = load i32, i32* %7, align 4
  %283 = load i32, i32* %12, align 4
  %284 = call i32 @ext2fs_mark_block_bitmap2(i32 %282, i32 %283)
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* %12, align 4
  %288 = call i32 @ext2fs_inode_bitmap_loc_set(%struct.TYPE_21__* %285, i32 %286, i32 %287)
  %289 = load i32, i32* %15, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %313

291:                                              ; preds = %281
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %293 = load i32, i32* %12, align 4
  %294 = call i32 @ext2fs_group_of_blk2(%struct.TYPE_21__* %292, i32 %293)
  store i32 %294, i32* %20, align 4
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %296 = load i32, i32* %20, align 4
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %298 = load i32, i32* %20, align 4
  %299 = call i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_21__* %297, i32 %298)
  %300 = sub nsw i64 %299, 1
  %301 = call i32 @ext2fs_bg_free_blocks_count_set(%struct.TYPE_21__* %295, i32 %296, i64 %300)
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %303, align 8
  %305 = call i32 @ext2fs_free_blocks_count_add(%struct.TYPE_22__* %304, i32 -1)
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %307 = load i32, i32* %20, align 4
  %308 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %309 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_21__* %306, i32 %307, i32 %308)
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %311 = load i32, i32* %20, align 4
  %312 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_21__* %310, i32 %311)
  br label %313

313:                                              ; preds = %291, %281
  br label %314

314:                                              ; preds = %313, %256
  %315 = load i32, i32* %15, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %350

317:                                              ; preds = %314
  store i32 0, i32* %21, align 4
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %15, align 4
  %320 = srem i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %317
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %324 = load i32, i32* %6, align 4
  %325 = sub nsw i32 %324, 1
  %326 = call i32 @ext2fs_inode_table_loc(%struct.TYPE_21__* %323, i32 %325)
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %326, %329
  store i32 %330, i32* %21, align 4
  br label %337

331:                                              ; preds = %317
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %333 = load i32, i32* %6, align 4
  %334 = call i32 @ext2fs_inode_bitmap_loc(%struct.TYPE_21__* %332, i32 %333)
  %335 = load i32, i32* %16, align 4
  %336 = add nsw i32 %334, %335
  store i32 %336, i32* %21, align 4
  br label %337

337:                                              ; preds = %331, %322
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* %21, align 4
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* %14, align 4
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @flexbg_offset(%struct.TYPE_21__* %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %345)
  store i32 %346, i32* %9, align 4
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %348 = load i32, i32* %13, align 4
  %349 = call i32 @ext2fs_group_last_block2(%struct.TYPE_21__* %347, i32 %348)
  store i32 %349, i32* %11, align 4
  br label %350

350:                                              ; preds = %337, %314
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %352 = load i32, i32* %6, align 4
  %353 = call i32 @ext2fs_inode_table_loc(%struct.TYPE_21__* %351, i32 %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %441, label %355

355:                                              ; preds = %350
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* %11, align 4
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* %7, align 4
  %363 = call i64 @ext2fs_get_free_blocks2(%struct.TYPE_21__* %356, i32 %357, i32 %358, i32 %361, i32 %362, i32* %12)
  store i64 %363, i64* %8, align 8
  %364 = load i64, i64* %8, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %355
  %367 = load i64, i64* %8, align 8
  store i64 %367, i64* %4, align 8
  br label %445

368:                                              ; preds = %355
  %369 = load i32, i32* %7, align 4
  %370 = load i32, i32* %12, align 4
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @ext2fs_mark_block_bitmap_range2(i32 %369, i32 %370, i32 %373)
  %375 = load i32, i32* %15, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %436

377:                                              ; preds = %368
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  store i32 %380, i32* %22, align 4
  %381 = load i32, i32* %12, align 4
  store i32 %381, i32* %23, align 4
  br label %382

382:                                              ; preds = %403, %377
  %383 = load i32, i32* %22, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %435

385:                                              ; preds = %382
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %387 = load i32, i32* %23, align 4
  %388 = call i32 @ext2fs_group_of_blk2(%struct.TYPE_21__* %386, i32 %387)
  store i32 %388, i32* %24, align 4
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %390 = load i32, i32* %24, align 4
  %391 = call i32 @ext2fs_group_last_block2(%struct.TYPE_21__* %389, i32 %390)
  store i32 %391, i32* %11, align 4
  %392 = load i32, i32* %22, align 4
  store i32 %392, i32* %25, align 4
  %393 = load i32, i32* %23, align 4
  %394 = load i32, i32* %22, align 4
  %395 = add nsw i32 %393, %394
  %396 = load i32, i32* %11, align 4
  %397 = icmp sgt i32 %395, %396
  br i1 %397, label %398, label %403

398:                                              ; preds = %385
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* %23, align 4
  %401 = sub nsw i32 %399, %400
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %25, align 4
  br label %403

403:                                              ; preds = %398, %385
  %404 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %405 = load i32, i32* %24, align 4
  %406 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %407 = load i32, i32* %24, align 4
  %408 = call i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_21__* %406, i32 %407)
  %409 = load i32, i32* %25, align 4
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %411 = call i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_21__* %410)
  %412 = sdiv i32 %409, %411
  %413 = sext i32 %412 to i64
  %414 = sub nsw i64 %408, %413
  %415 = call i32 @ext2fs_bg_free_blocks_count_set(%struct.TYPE_21__* %404, i32 %405, i64 %414)
  %416 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %417 = load i32, i32* %24, align 4
  %418 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %419 = call i32 @ext2fs_bg_flags_clear(%struct.TYPE_21__* %416, i32 %417, i32 %418)
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %421 = load i32, i32* %24, align 4
  %422 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_21__* %420, i32 %421)
  %423 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %423, i32 0, i32 3
  %425 = load %struct.TYPE_22__*, %struct.TYPE_22__** %424, align 8
  %426 = load i32, i32* %25, align 4
  %427 = sub nsw i32 0, %426
  %428 = call i32 @ext2fs_free_blocks_count_add(%struct.TYPE_22__* %425, i32 %427)
  %429 = load i32, i32* %25, align 4
  %430 = load i32, i32* %23, align 4
  %431 = add nsw i32 %430, %429
  store i32 %431, i32* %23, align 4
  %432 = load i32, i32* %25, align 4
  %433 = load i32, i32* %22, align 4
  %434 = sub nsw i32 %433, %432
  store i32 %434, i32* %22, align 4
  br label %382

435:                                              ; preds = %382
  br label %436

436:                                              ; preds = %435, %368
  %437 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %438 = load i32, i32* %6, align 4
  %439 = load i32, i32* %12, align 4
  %440 = call i32 @ext2fs_inode_table_loc_set(%struct.TYPE_21__* %437, i32 %438, i32 %439)
  br label %441

441:                                              ; preds = %436, %350
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %443 = load i32, i32* %6, align 4
  %444 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_21__* %442, i32 %443)
  store i64 0, i64* %4, align 8
  br label %445

445:                                              ; preds = %441, %366, %279, %191, %94
  %446 = load i64, i64* %4, align 8
  ret i64 %446
}

declare dso_local i32 @ext2fs_group_first_block2(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ext2fs_group_last_block2(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ext2fs_has_feature_flex_bg(%struct.TYPE_22__*) #1

declare dso_local i64 @ext2fs_get_free_blocks2(%struct.TYPE_21__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ext2fs_block_bitmap_loc(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @flexbg_offset(%struct.TYPE_21__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ext2fs_mark_block_bitmap2(i32, i32) #1

declare dso_local i32 @ext2fs_block_bitmap_loc_set(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ext2fs_group_of_blk2(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ext2fs_bg_free_blocks_count_set(%struct.TYPE_21__*, i32, i64) #1

declare dso_local i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ext2fs_free_blocks_count_add(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ext2fs_bg_flags_clear(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ext2fs_group_desc_csum_set(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ext2fs_inode_bitmap_loc(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ext2fs_inode_bitmap_loc_set(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ext2fs_inode_table_loc(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ext2fs_mark_block_bitmap_range2(i32, i32, i32) #1

declare dso_local i32 @EXT2FS_CLUSTER_RATIO(%struct.TYPE_21__*) #1

declare dso_local i32 @ext2fs_inode_table_loc_set(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
