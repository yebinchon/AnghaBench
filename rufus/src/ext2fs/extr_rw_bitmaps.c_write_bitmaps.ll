; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_rw_bitmaps.c_write_bitmaps.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_rw_bitmaps.c_write_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i64, i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_FLAG_RW = common dso_local global i32 0, align 4
@EXT2_ET_RO_FILSYS = common dso_local global i64 0, align 8
@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@EXT2_FLAG_DIRTY = common dso_local global i32 0, align 4
@EXT2_ET_BLOCK_BITMAP_WRITE = common dso_local global i64 0, align 8
@EXT2_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@EXT2_ET_INODE_BITMAP_WRITE = common dso_local global i64 0, align 8
@EXT2_FLAG_BB_DIRTY = common dso_local global i32 0, align 4
@EXT2_FLAG_IB_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, i32, i32)* @write_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_bitmaps(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @EXT2FS_B2C(%struct.TYPE_17__* %20, i64 %25)
  store i32 %26, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %29 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_17__* %27, i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EXT2_FLAG_RW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %3
  %37 = load i64, i64* @EXT2_ET_RO_FILSYS, align 8
  store i64 %37, i64* %4, align 8
  br label %314

38:                                               ; preds = %3
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = call i32 @ext2fs_has_group_desc_csum(%struct.TYPE_17__* %39)
  store i32 %40, i32* %16, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = call i32 @EXT2_CLUSTERS_PER_GROUP(%struct.TYPE_18__* %46)
  %48 = sdiv i32 %47, 8
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @io_channel_alloc_buf(i32 %51, i32 0, i8** %14)
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %302

56:                                               ; preds = %43
  %57 = load i8*, i8** %14, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memset(i8* %57, i32 255, i32 %60)
  br label %62

62:                                               ; preds = %56, %38
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = call i32 @EXT2_INODES_PER_GROUP(%struct.TYPE_18__* %68)
  %70 = add nsw i32 %69, 7
  %71 = sdiv i32 %70, 8
  %72 = sext i32 %71 to i64
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @io_channel_alloc_buf(i32 %76, i32 0, i8** %15)
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %302

81:                                               ; preds = %65
  %82 = load i8*, i8** %15, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memset(i8* %82, i32 255, i32 %85)
  br label %87

87:                                               ; preds = %81, %62
  store i64 0, i64* %8, align 8
  br label %88

88:                                               ; preds = %276, %87
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %279

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  br label %209

98:                                               ; preds = %94
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %105 = call i64 @ext2fs_bg_flags_test(%struct.TYPE_17__* %102, i64 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %204

108:                                              ; preds = %101, %98
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %10, align 4
  %114 = shl i32 %113, 3
  %115 = load i8*, i8** %14, align 8
  %116 = call i64 @ext2fs_get_block_bitmap_range2(i32 %111, i32 %112, i32 %114, i8* %115)
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %302

120:                                              ; preds = %108
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %124, 1
  %126 = icmp eq i64 %121, %125
  br i1 %126, label %127, label %167

127:                                              ; preds = %120
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = call i32 @ext2fs_blocks_count(%struct.TYPE_18__* %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = sub nsw i32 %132, %138
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = call i64 @EXT2_BLOCKS_PER_GROUP(%struct.TYPE_18__* %142)
  %144 = trunc i64 %143 to i32
  %145 = srem i32 %139, %144
  %146 = call i32 @EXT2FS_NUM_B2C(%struct.TYPE_17__* %128, i32 %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %127
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %162, %149
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %155, 8
  %157 = icmp ult i32 %152, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %151
  %159 = load i32, i32* %9, align 4
  %160 = load i8*, i8** %14, align 8
  %161 = call i32 @ext2fs_set_bit(i32 %159, i8* %160)
  br label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %9, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %151

165:                                              ; preds = %151
  br label %166

166:                                              ; preds = %165, %127
  br label %167

167:                                              ; preds = %166, %120
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = load i64, i64* %8, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i64 @ext2fs_block_bitmap_csum_set(%struct.TYPE_17__* %168, i64 %169, i8* %170, i32 %171)
  store i64 %172, i64* %13, align 8
  %173 = load i64, i64* %13, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i64, i64* %13, align 8
  store i64 %176, i64* %4, align 8
  br label %314

177:                                              ; preds = %167
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %179 = load i64, i64* %8, align 8
  %180 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_17__* %178, i64 %179)
  %181 = load i32, i32* @EXT2_FLAG_DIRTY, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %187 = load i64, i64* %8, align 8
  %188 = call i32 @ext2fs_block_bitmap_loc(%struct.TYPE_17__* %186, i64 %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %177
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %17, align 4
  %196 = load i8*, i8** %14, align 8
  %197 = call i64 @io_channel_write_blk64(i32 %194, i32 %195, i32 1, i8* %196)
  store i64 %197, i64* %13, align 8
  %198 = load i64, i64* %13, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = load i64, i64* @EXT2_ET_BLOCK_BITMAP_WRITE, align 8
  store i64 %201, i64* %13, align 8
  br label %302

202:                                              ; preds = %191
  br label %203

203:                                              ; preds = %202, %177
  br label %204

204:                                              ; preds = %203, %107
  %205 = load i32, i32* %10, align 4
  %206 = shl i32 %205, 3
  %207 = load i32, i32* %18, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %18, align 4
  br label %209

209:                                              ; preds = %204, %97
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  br label %276

213:                                              ; preds = %209
  %214 = load i32, i32* %16, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %218 = load i64, i64* %8, align 8
  %219 = load i32, i32* @EXT2_BG_INODE_UNINIT, align 4
  %220 = call i64 @ext2fs_bg_flags_test(%struct.TYPE_17__* %217, i64 %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %271

223:                                              ; preds = %216, %213
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %11, align 4
  %229 = shl i32 %228, 3
  %230 = load i8*, i8** %15, align 8
  %231 = call i64 @ext2fs_get_inode_bitmap_range2(i32 %226, i32 %227, i32 %229, i8* %230)
  store i64 %231, i64* %13, align 8
  %232 = load i64, i64* %13, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %223
  br label %302

235:                                              ; preds = %223
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %237 = load i64, i64* %8, align 8
  %238 = load i8*, i8** %15, align 8
  %239 = load i32, i32* %11, align 4
  %240 = call i64 @ext2fs_inode_bitmap_csum_set(%struct.TYPE_17__* %236, i64 %237, i8* %238, i32 %239)
  store i64 %240, i64* %13, align 8
  %241 = load i64, i64* %13, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %302

244:                                              ; preds = %235
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %246 = load i64, i64* %8, align 8
  %247 = call i32 @ext2fs_group_desc_csum_set(%struct.TYPE_17__* %245, i64 %246)
  %248 = load i32, i32* @EXT2_FLAG_DIRTY, align 4
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %254 = load i64, i64* %8, align 8
  %255 = call i32 @ext2fs_inode_bitmap_loc(%struct.TYPE_17__* %253, i64 %254)
  store i32 %255, i32* %17, align 4
  %256 = load i32, i32* %17, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %244
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %17, align 4
  %263 = load i8*, i8** %15, align 8
  %264 = call i64 @io_channel_write_blk64(i32 %261, i32 %262, i32 1, i8* %263)
  store i64 %264, i64* %13, align 8
  %265 = load i64, i64* %13, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %258
  %268 = load i64, i64* @EXT2_ET_INODE_BITMAP_WRITE, align 8
  store i64 %268, i64* %13, align 8
  br label %302

269:                                              ; preds = %258
  br label %270

270:                                              ; preds = %269, %244
  br label %271

271:                                              ; preds = %270, %222
  %272 = load i32, i32* %11, align 4
  %273 = shl i32 %272, 3
  %274 = load i32, i32* %19, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %19, align 4
  br label %276

276:                                              ; preds = %271, %212
  %277 = load i64, i64* %8, align 8
  %278 = add nsw i64 %277, 1
  store i64 %278, i64* %8, align 8
  br label %88

279:                                              ; preds = %88
  %280 = load i32, i32* %7, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %279
  %283 = load i32, i32* @EXT2_FLAG_BB_DIRTY, align 4
  %284 = xor i32 %283, -1
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = and i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = call i32 @ext2fs_free_mem(i8** %14)
  br label %290

290:                                              ; preds = %282, %279
  %291 = load i32, i32* %6, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %290
  %294 = load i32, i32* @EXT2_FLAG_IB_DIRTY, align 4
  %295 = xor i32 %294, -1
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = and i32 %298, %295
  store i32 %299, i32* %297, align 8
  %300 = call i32 @ext2fs_free_mem(i8** %15)
  br label %301

301:                                              ; preds = %293, %290
  store i64 0, i64* %4, align 8
  br label %314

302:                                              ; preds = %267, %243, %234, %200, %119, %80, %55
  %303 = load i8*, i8** %15, align 8
  %304 = icmp ne i8* %303, null
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = call i32 @ext2fs_free_mem(i8** %15)
  br label %307

307:                                              ; preds = %305, %302
  %308 = load i8*, i8** %14, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  %311 = call i32 @ext2fs_free_mem(i8** %14)
  br label %312

312:                                              ; preds = %310, %307
  %313 = load i64, i64* %13, align 8
  store i64 %313, i64* %4, align 8
  br label %314

314:                                              ; preds = %312, %301, %175, %36
  %315 = load i64, i64* %4, align 8
  ret i64 %315
}

declare dso_local i32 @EXT2FS_B2C(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ext2fs_has_group_desc_csum(%struct.TYPE_17__*) #1

declare dso_local i32 @EXT2_CLUSTERS_PER_GROUP(%struct.TYPE_18__*) #1

declare dso_local i64 @io_channel_alloc_buf(i32, i32, i8**) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(%struct.TYPE_18__*) #1

declare dso_local i64 @ext2fs_bg_flags_test(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i64 @ext2fs_get_block_bitmap_range2(i32, i32, i32, i8*) #1

declare dso_local i32 @EXT2FS_NUM_B2C(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ext2fs_blocks_count(%struct.TYPE_18__*) #1

declare dso_local i64 @EXT2_BLOCKS_PER_GROUP(%struct.TYPE_18__*) #1

declare dso_local i32 @ext2fs_set_bit(i32, i8*) #1

declare dso_local i64 @ext2fs_block_bitmap_csum_set(%struct.TYPE_17__*, i64, i8*, i32) #1

declare dso_local i32 @ext2fs_group_desc_csum_set(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ext2fs_block_bitmap_loc(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @io_channel_write_blk64(i32, i32, i32, i8*) #1

declare dso_local i64 @ext2fs_get_inode_bitmap_range2(i32, i32, i32, i8*) #1

declare dso_local i64 @ext2fs_inode_bitmap_csum_set(%struct.TYPE_17__*, i64, i8*, i32) #1

declare dso_local i32 @ext2fs_inode_bitmap_loc(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
