; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_rw_bitmaps.c_read_bitmaps.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_rw_bitmaps.c_read_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i8*, i8*, i32, i64, i32, i32, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_ET_CORRUPT_SUPERBLOCK = common dso_local global i64 0, align 8
@ext2fs_write_bitmaps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"block bitmap for \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"inode bitmap for \00", align 1
@EXT2_FLAG_IMAGE_FILE = common dso_local global i32 0, align 4
@EXT2_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@EXT2_ET_BLOCK_BITMAP_READ = common dso_local global i64 0, align 8
@EXT2_FLAG_IGNORE_CSUM_ERRORS = common dso_local global i32 0, align 4
@EXT2_ET_BLOCK_BITMAP_CSUM_INVALID = common dso_local global i64 0, align 8
@EXT2_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@EXT2_ET_INODE_BITMAP_READ = common dso_local global i64 0, align 8
@EXT2_ET_INODE_BITMAP_CSUM_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, i32, i32)* @read_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_bitmaps(%struct.TYPE_21__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 7
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = call i32 @EXT2_CLUSTERS_PER_GROUP(%struct.TYPE_19__* %24)
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = call i32 @EXT2_INODES_PER_GROUP(%struct.TYPE_19__* %29)
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @EXT2FS_B2C(%struct.TYPE_21__* %32, i32 %37)
  store i32 %38, i32* %18, align 4
  store i32 1, i32* %20, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %41 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_21__* %39, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %3
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %3
  %54 = load i64, i64* @EXT2_ET_CORRUPT_SUPERBLOCK, align 8
  store i64 %54, i64* %4, align 8
  br label %502

55:                                               ; preds = %47
  %56 = load i32, i32* @ext2fs_write_bitmaps, align 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %60 = call i32 @ext2fs_has_group_desc_csum(%struct.TYPE_21__* %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @strlen(i32 %63)
  %65 = add nsw i64 %64, 80
  %66 = call i64 @ext2fs_get_mem(i64 %65, i8** %11)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i64, i64* %12, align 8
  store i64 %70, i64* %4, align 8
  br label %502

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %71
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @ext2fs_free_block_bitmap(i8* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @strcpy(i8* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %87 = load i8*, i8** %11, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @strcat(i8* %87, i32 %90)
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = call i64 @ext2fs_allocate_block_bitmap(%struct.TYPE_21__* %92, i8* %93, i8** %95)
  store i64 %96, i64* %12, align 8
  %97 = load i64, i64* %12, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %467

100:                                              ; preds = %84
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @io_channel_alloc_buf(i32 %103, i32 0, i8** %9)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %467

108:                                              ; preds = %100
  br label %110

109:                                              ; preds = %71
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %109, %108
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %110
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @ext2fs_free_inode_bitmap(i8* %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @strcpy(i8* %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i8*, i8** %11, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @strcat(i8* %126, i32 %129)
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = call i64 @ext2fs_allocate_inode_bitmap(%struct.TYPE_21__* %131, i8* %132, i8** %134)
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %12, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %123
  br label %467

139:                                              ; preds = %123
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @io_channel_alloc_buf(i32 %142, i32 0, i8** %10)
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %467

147:                                              ; preds = %139
  br label %149

148:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  br label %149

149:                                              ; preds = %148, %147
  %150 = call i32 @ext2fs_free_mem(i8** %11)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @EXT2_FLAG_IMAGE_FILE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %286

157:                                              ; preds = %149
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ext2fs_le32_to_cpu(i32 %162)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = udiv i32 %163, %166
  store i32 %167, i32* %17, align 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 7
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %21, align 4
  br label %173

173:                                              ; preds = %213, %157
  %174 = load i8*, i8** %10, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %21, align 4
  %178 = icmp ugt i32 %177, 0
  br label %179

179:                                              ; preds = %176, %173
  %180 = phi i1 [ false, %173 ], [ %178, %176 ]
  br i1 %180, label %181, label %220

181:                                              ; preds = %179
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %17, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %17, align 4
  %187 = load i8*, i8** %10, align 8
  %188 = call i64 @io_channel_read_blk64(i32 %184, i32 %185, i32 1, i8* %187)
  store i64 %188, i64* %12, align 8
  %189 = load i64, i64* %12, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %467

192:                                              ; preds = %181
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = shl i32 %195, 3
  store i32 %196, i32* %16, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %21, align 4
  %199 = icmp ugt i32 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i32, i32* %21, align 4
  store i32 %201, i32* %16, align 4
  br label %202

202:                                              ; preds = %200, %192
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = load i32, i32* %20, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i8*, i8** %10, align 8
  %209 = call i64 @ext2fs_set_inode_bitmap_range2(i8* %205, i32 %206, i32 %207, i8* %208)
  store i64 %209, i64* %12, align 8
  %210 = load i64, i64* %12, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  br label %467

213:                                              ; preds = %202
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %20, align 4
  %216 = add i32 %215, %214
  store i32 %216, i32* %20, align 4
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %21, align 4
  %219 = sub i32 %218, %217
  store i32 %219, i32* %21, align 4
  br label %173

220:                                              ; preds = %179
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @ext2fs_le32_to_cpu(i32 %225)
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = udiv i32 %226, %229
  store i32 %230, i32* %17, align 4
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 7
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %232, align 8
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @EXT2_GROUPS_TO_CLUSTERS(%struct.TYPE_19__* %233, i64 %236)
  store i32 %237, i32* %19, align 4
  br label %238

238:                                              ; preds = %278, %220
  %239 = load i8*, i8** %9, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32, i32* %19, align 4
  %243 = icmp ugt i32 %242, 0
  br label %244

244:                                              ; preds = %241, %238
  %245 = phi i1 [ false, %238 ], [ %243, %241 ]
  br i1 %245, label %246, label %285

246:                                              ; preds = %244
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %17, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %17, align 4
  %252 = load i8*, i8** %9, align 8
  %253 = call i64 @io_channel_read_blk64(i32 %249, i32 %250, i32 1, i8* %252)
  store i64 %253, i64* %12, align 8
  %254 = load i64, i64* %12, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  br label %467

257:                                              ; preds = %246
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = shl i32 %260, 3
  store i32 %261, i32* %16, align 4
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* %19, align 4
  %264 = icmp ugt i32 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %257
  %266 = load i32, i32* %19, align 4
  store i32 %266, i32* %16, align 4
  br label %267

267:                                              ; preds = %265, %257
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = load i8*, i8** %269, align 8
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %16, align 4
  %273 = load i8*, i8** %9, align 8
  %274 = call i64 @ext2fs_set_block_bitmap_range2(i8* %270, i32 %271, i32 %272, i8* %273)
  store i64 %274, i64* %12, align 8
  %275 = load i64, i64* %12, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %267
  br label %467

278:                                              ; preds = %267
  %279 = load i32, i32* %16, align 4
  %280 = load i32, i32* %18, align 4
  %281 = add i32 %280, %279
  store i32 %281, i32* %18, align 4
  %282 = load i32, i32* %16, align 4
  %283 = load i32, i32* %19, align 4
  %284 = sub i32 %283, %282
  store i32 %284, i32* %19, align 4
  br label %238

285:                                              ; preds = %244
  br label %456

286:                                              ; preds = %149
  store i64 0, i64* %8, align 8
  br label %287

287:                                              ; preds = %442, %286
  %288 = load i64, i64* %8, align 8
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = icmp slt i64 %288, %291
  br i1 %292, label %293, label %445

293:                                              ; preds = %287
  %294 = load i8*, i8** %9, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %367

296:                                              ; preds = %293
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %298 = load i64, i64* %8, align 8
  %299 = call i32 @ext2fs_block_bitmap_loc(%struct.TYPE_21__* %297, i64 %298)
  store i32 %299, i32* %17, align 4
  %300 = load i32, i32* %15, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %296
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %304 = load i64, i64* %8, align 8
  %305 = load i32, i32* @EXT2_BG_BLOCK_UNINIT, align 4
  %306 = call i64 @ext2fs_bg_flags_test(%struct.TYPE_21__* %303, i64 %304, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %314

308:                                              ; preds = %302
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %310 = load i64, i64* %8, align 8
  %311 = call i64 @ext2fs_group_desc_csum_verify(%struct.TYPE_21__* %309, i64 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  store i32 0, i32* %17, align 4
  br label %314

314:                                              ; preds = %313, %308, %302, %296
  %315 = load i32, i32* %17, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %345

317:                                              ; preds = %314
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %17, align 4
  %322 = load i8*, i8** %9, align 8
  %323 = call i64 @io_channel_read_blk64(i32 %320, i32 %321, i32 1, i8* %322)
  store i64 %323, i64* %12, align 8
  %324 = load i64, i64* %12, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %317
  %327 = load i64, i64* @EXT2_ET_BLOCK_BITMAP_READ, align 8
  store i64 %327, i64* %12, align 8
  br label %467

328:                                              ; preds = %317
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @EXT2_FLAG_IGNORE_CSUM_ERRORS, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %344, label %335

335:                                              ; preds = %328
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %337 = load i64, i64* %8, align 8
  %338 = load i8*, i8** %9, align 8
  %339 = load i32, i32* %13, align 4
  %340 = call i32 @ext2fs_block_bitmap_csum_verify(%struct.TYPE_21__* %336, i64 %337, i8* %338, i32 %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %335
  %343 = load i64, i64* @EXT2_ET_BLOCK_BITMAP_CSUM_INVALID, align 8
  store i64 %343, i64* %12, align 8
  br label %467

344:                                              ; preds = %335, %328
  br label %349

345:                                              ; preds = %314
  %346 = load i8*, i8** %9, align 8
  %347 = load i32, i32* %13, align 4
  %348 = call i32 @memset(i8* %346, i32 0, i32 %347)
  br label %349

349:                                              ; preds = %345, %344
  %350 = load i32, i32* %13, align 4
  %351 = shl i32 %350, 3
  store i32 %351, i32* %16, align 4
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 1
  %354 = load i8*, i8** %353, align 8
  %355 = load i32, i32* %18, align 4
  %356 = load i32, i32* %16, align 4
  %357 = load i8*, i8** %9, align 8
  %358 = call i64 @ext2fs_set_block_bitmap_range2(i8* %354, i32 %355, i32 %356, i8* %357)
  store i64 %358, i64* %12, align 8
  %359 = load i64, i64* %12, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %349
  br label %467

362:                                              ; preds = %349
  %363 = load i32, i32* %13, align 4
  %364 = shl i32 %363, 3
  %365 = load i32, i32* %18, align 4
  %366 = add i32 %365, %364
  store i32 %366, i32* %18, align 4
  br label %367

367:                                              ; preds = %362, %293
  %368 = load i8*, i8** %10, align 8
  %369 = icmp ne i8* %368, null
  br i1 %369, label %370, label %441

370:                                              ; preds = %367
  %371 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %372 = load i64, i64* %8, align 8
  %373 = call i32 @ext2fs_inode_bitmap_loc(%struct.TYPE_21__* %371, i64 %372)
  store i32 %373, i32* %17, align 4
  %374 = load i32, i32* %15, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %388

376:                                              ; preds = %370
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %378 = load i64, i64* %8, align 8
  %379 = load i32, i32* @EXT2_BG_INODE_UNINIT, align 4
  %380 = call i64 @ext2fs_bg_flags_test(%struct.TYPE_21__* %377, i64 %378, i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %376
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %384 = load i64, i64* %8, align 8
  %385 = call i64 @ext2fs_group_desc_csum_verify(%struct.TYPE_21__* %383, i64 %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %388

387:                                              ; preds = %382
  store i32 0, i32* %17, align 4
  br label %388

388:                                              ; preds = %387, %382, %376, %370
  %389 = load i32, i32* %17, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %419

391:                                              ; preds = %388
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 5
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* %17, align 4
  %396 = load i8*, i8** %10, align 8
  %397 = call i64 @io_channel_read_blk64(i32 %394, i32 %395, i32 1, i8* %396)
  store i64 %397, i64* %12, align 8
  %398 = load i64, i64* %12, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %391
  %401 = load i64, i64* @EXT2_ET_INODE_BITMAP_READ, align 8
  store i64 %401, i64* %12, align 8
  br label %467

402:                                              ; preds = %391
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @EXT2_FLAG_IGNORE_CSUM_ERRORS, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %418, label %409

409:                                              ; preds = %402
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %411 = load i64, i64* %8, align 8
  %412 = load i8*, i8** %10, align 8
  %413 = load i32, i32* %14, align 4
  %414 = call i32 @ext2fs_inode_bitmap_csum_verify(%struct.TYPE_21__* %410, i64 %411, i8* %412, i32 %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %418, label %416

416:                                              ; preds = %409
  %417 = load i64, i64* @EXT2_ET_INODE_BITMAP_CSUM_INVALID, align 8
  store i64 %417, i64* %12, align 8
  br label %467

418:                                              ; preds = %409, %402
  br label %423

419:                                              ; preds = %388
  %420 = load i8*, i8** %10, align 8
  %421 = load i32, i32* %14, align 4
  %422 = call i32 @memset(i8* %420, i32 0, i32 %421)
  br label %423

423:                                              ; preds = %419, %418
  %424 = load i32, i32* %14, align 4
  %425 = shl i32 %424, 3
  store i32 %425, i32* %16, align 4
  %426 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %426, i32 0, i32 2
  %428 = load i8*, i8** %427, align 8
  %429 = load i32, i32* %20, align 4
  %430 = load i32, i32* %16, align 4
  %431 = load i8*, i8** %10, align 8
  %432 = call i64 @ext2fs_set_inode_bitmap_range2(i8* %428, i32 %429, i32 %430, i8* %431)
  store i64 %432, i64* %12, align 8
  %433 = load i64, i64* %12, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %423
  br label %467

436:                                              ; preds = %423
  %437 = load i32, i32* %14, align 4
  %438 = shl i32 %437, 3
  %439 = load i32, i32* %20, align 4
  %440 = add i32 %439, %438
  store i32 %440, i32* %20, align 4
  br label %441

441:                                              ; preds = %436, %367
  br label %442

442:                                              ; preds = %441
  %443 = load i64, i64* %8, align 8
  %444 = add nsw i64 %443, 1
  store i64 %444, i64* %8, align 8
  br label %287

445:                                              ; preds = %287
  %446 = load i32, i32* %7, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %455

448:                                              ; preds = %445
  %449 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %450 = call i64 @mark_uninit_bg_group_blocks(%struct.TYPE_21__* %449)
  store i64 %450, i64* %12, align 8
  %451 = load i64, i64* %12, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %448
  br label %467

454:                                              ; preds = %448
  br label %455

455:                                              ; preds = %454, %445
  br label %456

456:                                              ; preds = %455, %285
  %457 = load i8*, i8** %10, align 8
  %458 = icmp ne i8* %457, null
  br i1 %458, label %459, label %461

459:                                              ; preds = %456
  %460 = call i32 @ext2fs_free_mem(i8** %10)
  br label %461

461:                                              ; preds = %459, %456
  %462 = load i8*, i8** %9, align 8
  %463 = icmp ne i8* %462, null
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  %465 = call i32 @ext2fs_free_mem(i8** %9)
  br label %466

466:                                              ; preds = %464, %461
  store i64 0, i64* %4, align 8
  br label %502

467:                                              ; preds = %453, %435, %416, %400, %361, %342, %326, %277, %256, %212, %191, %146, %138, %107, %99
  %468 = load i32, i32* %7, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %467
  %471 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %471, i32 0, i32 1
  %473 = call i32 @ext2fs_free_mem(i8** %472)
  %474 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %474, i32 0, i32 1
  store i8* null, i8** %475, align 8
  br label %476

476:                                              ; preds = %470, %467
  %477 = load i32, i32* %6, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %476
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %480, i32 0, i32 2
  %482 = call i32 @ext2fs_free_mem(i8** %481)
  %483 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %483, i32 0, i32 2
  store i8* null, i8** %484, align 8
  br label %485

485:                                              ; preds = %479, %476
  %486 = load i8*, i8** %10, align 8
  %487 = icmp ne i8* %486, null
  br i1 %487, label %488, label %490

488:                                              ; preds = %485
  %489 = call i32 @ext2fs_free_mem(i8** %10)
  br label %490

490:                                              ; preds = %488, %485
  %491 = load i8*, i8** %9, align 8
  %492 = icmp ne i8* %491, null
  br i1 %492, label %493, label %495

493:                                              ; preds = %490
  %494 = call i32 @ext2fs_free_mem(i8** %9)
  br label %495

495:                                              ; preds = %493, %490
  %496 = load i8*, i8** %11, align 8
  %497 = icmp ne i8* %496, null
  br i1 %497, label %498, label %500

498:                                              ; preds = %495
  %499 = call i32 @ext2fs_free_mem(i8** %11)
  br label %500

500:                                              ; preds = %498, %495
  %501 = load i64, i64* %12, align 8
  store i64 %501, i64* %4, align 8
  br label %502

502:                                              ; preds = %500, %466, %69, %53
  %503 = load i64, i64* %4, align 8
  ret i64 %503
}

declare dso_local i32 @EXT2_CLUSTERS_PER_GROUP(%struct.TYPE_19__*) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(%struct.TYPE_19__*) #1

declare dso_local i32 @EXT2FS_B2C(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ext2fs_has_group_desc_csum(%struct.TYPE_21__*) #1

declare dso_local i64 @ext2fs_get_mem(i64, i8**) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @ext2fs_free_block_bitmap(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local i64 @ext2fs_allocate_block_bitmap(%struct.TYPE_21__*, i8*, i8**) #1

declare dso_local i64 @io_channel_alloc_buf(i32, i32, i8**) #1

declare dso_local i32 @ext2fs_free_inode_bitmap(i8*) #1

declare dso_local i64 @ext2fs_allocate_inode_bitmap(%struct.TYPE_21__*, i8*, i8**) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

declare dso_local i32 @ext2fs_le32_to_cpu(i32) #1

declare dso_local i64 @io_channel_read_blk64(i32, i32, i32, i8*) #1

declare dso_local i64 @ext2fs_set_inode_bitmap_range2(i8*, i32, i32, i8*) #1

declare dso_local i32 @EXT2_GROUPS_TO_CLUSTERS(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @ext2fs_set_block_bitmap_range2(i8*, i32, i32, i8*) #1

declare dso_local i32 @ext2fs_block_bitmap_loc(%struct.TYPE_21__*, i64) #1

declare dso_local i64 @ext2fs_bg_flags_test(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i64 @ext2fs_group_desc_csum_verify(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @ext2fs_block_bitmap_csum_verify(%struct.TYPE_21__*, i64, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ext2fs_inode_bitmap_loc(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @ext2fs_inode_bitmap_csum_verify(%struct.TYPE_21__*, i64, i8*, i32) #1

declare dso_local i64 @mark_uninit_bg_group_blocks(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
