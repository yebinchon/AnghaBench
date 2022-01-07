; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_write_inode2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_ext2fs_write_inode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 (%struct.TYPE_20__*, i32, i8*)*, i32, i32, i64, %struct.TYPE_19__*, i32, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32, i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.ext2_inode = type opaque
%struct.ext2_inode_large = type opaque

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_ET_CALLBACK_NOTHANDLED = common dso_local global i64 0, align 8
@EXT2_ET_BAD_INODE_NUM = common dso_local global i64 0, align 8
@READ_INODE_NOCSUM = common dso_local global i32 0, align 4
@EXT2_FLAG_RW = common dso_local global i32 0, align 4
@EXT2_ET_RO_FILSYS = common dso_local global i64 0, align 8
@WRITE_INODE_NOCSUM = common dso_local global i32 0, align 4
@EXT2_ET_MISSING_INODE_TABLE = common dso_local global i64 0, align 8
@EXT2_ET_GDESC_BAD_INODE_TABLE = common dso_local global i64 0, align 8
@EXT2_FLAG_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_write_inode2(%struct.TYPE_20__* %0, i32 %1, %struct.ext2_inode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext2_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ext2_inode_large*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ext2_inode* %2, %struct.ext2_inode** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %16, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = call i32 @EXT2_INODE_SIZE(%struct.TYPE_17__* %24)
  store i32 %25, i32* %21, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %27 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %28 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_20__* %26, i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64 (%struct.TYPE_20__*, i32, i8*)*, i64 (%struct.TYPE_20__*, i32, i8*)** %30, align 8
  %32 = icmp ne i64 (%struct.TYPE_20__*, i32, i8*)* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %5
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64 (%struct.TYPE_20__*, i32, i8*)*, i64 (%struct.TYPE_20__*, i32, i8*)** %35, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %40 = bitcast %struct.ext2_inode* %39 to i8*
  %41 = call i64 %36(%struct.TYPE_20__* %37, i32 %38, i8* %40)
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* @EXT2_ET_CALLBACK_NOTHANDLED, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i64, i64* %16, align 8
  store i64 %46, i64* %6, align 8
  br label %353

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %5
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %52, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51, %48
  %60 = load i64, i64* @EXT2_ET_BAD_INODE_NUM, align 8
  store i64 %60, i64* %6, align 8
  br label %353

61:                                               ; preds = %51
  %62 = load i32, i32* %21, align 4
  %63 = bitcast %struct.ext2_inode_large** %17 to i8**
  %64 = call i64 @ext2fs_get_mem(i32 %62, i8** %63)
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i64, i64* %16, align 8
  store i64 %68, i64* %6, align 8
  br label %353

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %17, align 8
  %77 = bitcast %struct.ext2_inode_large* %76 to %struct.ext2_inode*
  %78 = bitcast %struct.ext2_inode* %77 to i8*
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* @READ_INODE_NOCSUM, align 4
  %81 = call i64 @ext2fs_read_inode2(%struct.TYPE_20__* %74, i32 %75, i8* %78, i32 %79, i32 %80)
  store i64 %81, i64* %16, align 8
  %82 = load i64, i64* %16, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %349

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %69
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = icmp ne %struct.TYPE_19__* %89, null
  br i1 %90, label %91, label %141

91:                                               ; preds = %86
  store i32 0, i32* %19, align 4
  br label %92

92:                                               ; preds = %137, %91
  %93 = load i32, i32* %19, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ult i32 %93, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %92
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = load i32, i32* %19, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %100
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = load i32, i32* %19, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %125 = bitcast %struct.ext2_inode* %124 to i8*
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %21, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %113
  %130 = load i32, i32* %21, align 4
  br label %133

131:                                              ; preds = %113
  %132 = load i32, i32* %10, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = call i32 @memcpy(i8* %123, i8* %125, i32 %134)
  br label %140

136:                                              ; preds = %100
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %19, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %19, align 4
  br label %92

140:                                              ; preds = %133, %92
  br label %148

141:                                              ; preds = %86
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %143 = call i64 @ext2fs_create_inode_cache(%struct.TYPE_20__* %142, i32 4)
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %16, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %349

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147, %140
  %149 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %17, align 8
  %150 = bitcast %struct.ext2_inode_large* %149 to i8*
  %151 = load %struct.ext2_inode*, %struct.ext2_inode** %9, align 8
  %152 = bitcast %struct.ext2_inode* %151 to i8*
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %21, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* %21, align 4
  br label %160

158:                                              ; preds = %148
  %159 = load i32, i32* %10, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = call i32 @memcpy(i8* %150, i8* %152, i32 %161)
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @EXT2_FLAG_RW, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %160
  %170 = load i64, i64* @EXT2_ET_RO_FILSYS, align 8
  store i64 %170, i64* %16, align 8
  br label %349

171:                                              ; preds = %160
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @WRITE_INODE_NOCSUM, align 4
  %174 = and i32 %172, %173
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %17, align 8
  %180 = bitcast %struct.ext2_inode_large* %179 to i8*
  %181 = call i64 @ext2fs_inode_csum_set(%struct.TYPE_20__* %177, i32 %178, i8* %180)
  store i64 %181, i64* %16, align 8
  %182 = load i64, i64* %16, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %349

185:                                              ; preds = %176
  br label %186

186:                                              ; preds = %185, %171
  %187 = load i32, i32* %8, align 4
  %188 = sub nsw i32 %187, 1
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 6
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  %192 = call i32 @EXT2_INODES_PER_GROUP(%struct.TYPE_17__* %191)
  %193 = sdiv i32 %188, %192
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %8, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %197, align 8
  %199 = call i32 @EXT2_INODES_PER_GROUP(%struct.TYPE_17__* %198)
  %200 = srem i32 %195, %199
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 6
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  %204 = call i32 @EXT2_INODE_SIZE(%struct.TYPE_17__* %203)
  %205 = mul nsw i32 %200, %204
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %15, align 8
  %207 = load i64, i64* %15, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 6
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = call i64 @EXT2_BLOCK_SIZE_BITS(%struct.TYPE_17__* %210)
  %212 = lshr i64 %207, %211
  store i64 %212, i64* %14, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @ext2fs_inode_table_loc(%struct.TYPE_20__* %213, i32 %214)
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %186
  %219 = load i64, i64* @EXT2_ET_MISSING_INODE_TABLE, align 8
  store i64 %219, i64* %16, align 8
  br label %349

220:                                              ; preds = %186
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 6
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %221, %226
  br i1 %227, label %240, label %228

228:                                              ; preds = %220
  %229 = load i32, i32* %12, align 4
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %229, %232
  %234 = sub nsw i32 %233, 1
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 6
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %236, align 8
  %238 = call i32 @ext2fs_blocks_count(%struct.TYPE_17__* %237)
  %239 = icmp sge i32 %234, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %228, %220
  %241 = load i64, i64* @EXT2_ET_GDESC_BAD_INODE_TABLE, align 8
  store i64 %241, i64* %16, align 8
  br label %349

242:                                              ; preds = %228
  %243 = load i64, i64* %14, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = add i64 %245, %243
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %12, align 4
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 6
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = call i32 @EXT2_BLOCK_SIZE(%struct.TYPE_17__* %250)
  %252 = sub nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* %15, align 8
  %255 = and i64 %254, %253
  store i64 %255, i64* %15, align 8
  %256 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %17, align 8
  %257 = bitcast %struct.ext2_inode_large* %256 to i8*
  store i8* %257, i8** %18, align 8
  br label %258

258:                                              ; preds = %333, %242
  %259 = load i32, i32* %21, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %343

261:                                              ; preds = %258
  %262 = load i32, i32* %21, align 4
  store i32 %262, i32* %20, align 4
  %263 = load i64, i64* %15, align 8
  %264 = load i32, i32* %21, align 4
  %265 = sext i32 %264 to i64
  %266 = add i64 %263, %265
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = icmp ugt i64 %266, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %261
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* %15, align 8
  %276 = sub i64 %274, %275
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %20, align 4
  br label %278

278:                                              ; preds = %271, %261
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 4
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %12, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %306

286:                                              ; preds = %278
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %12, align 4
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = call i64 @io_channel_read_blk64(i32 %289, i32 %290, i32 1, i64 %295)
  store i64 %296, i64* %16, align 8
  %297 = load i64, i64* %16, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %286
  br label %349

300:                                              ; preds = %286
  %301 = load i32, i32* %12, align 4
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 4
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 1
  store i32 %301, i32* %305, align 4
  br label %306

306:                                              ; preds = %300, %278
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 4
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = inttoptr i64 %311 to i8*
  %313 = load i64, i64* %15, align 8
  %314 = trunc i64 %313 to i32
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %312, i64 %315
  %317 = load i8*, i8** %18, align 8
  %318 = load i32, i32* %20, align 4
  %319 = call i32 @memcpy(i8* %316, i8* %317, i32 %318)
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* %12, align 4
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 4
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = call i64 @io_channel_write_blk64(i32 %322, i32 %323, i32 1, i64 %328)
  store i64 %329, i64* %16, align 8
  %330 = load i64, i64* %16, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %306
  br label %349

333:                                              ; preds = %306
  store i64 0, i64* %15, align 8
  %334 = load i32, i32* %20, align 4
  %335 = load i8*, i8** %18, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i8, i8* %335, i64 %336
  store i8* %337, i8** %18, align 8
  %338 = load i32, i32* %20, align 4
  %339 = load i32, i32* %21, align 4
  %340 = sub nsw i32 %339, %338
  store i32 %340, i32* %21, align 4
  %341 = load i32, i32* %12, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %12, align 4
  br label %258

343:                                              ; preds = %258
  %344 = load i32, i32* @EXT2_FLAG_CHANGED, align 4
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = or i32 %347, %344
  store i32 %348, i32* %346, align 8
  br label %349

349:                                              ; preds = %343, %332, %299, %240, %218, %184, %169, %146, %84
  %350 = bitcast %struct.ext2_inode_large** %17 to i8**
  %351 = call i32 @ext2fs_free_mem(i8** %350)
  %352 = load i64, i64* %16, align 8
  store i64 %352, i64* %6, align 8
  br label %353

353:                                              ; preds = %349, %67, %59, %45
  %354 = load i64, i64* %6, align 8
  ret i64 %354
}

declare dso_local i32 @EXT2_INODE_SIZE(%struct.TYPE_17__*) #1

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ext2fs_get_mem(i32, i8**) #1

declare dso_local i64 @ext2fs_read_inode2(%struct.TYPE_20__*, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ext2fs_create_inode_cache(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ext2fs_inode_csum_set(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(%struct.TYPE_17__*) #1

declare dso_local i64 @EXT2_BLOCK_SIZE_BITS(%struct.TYPE_17__*) #1

declare dso_local i32 @ext2fs_inode_table_loc(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ext2fs_blocks_count(%struct.TYPE_17__*) #1

declare dso_local i32 @EXT2_BLOCK_SIZE(%struct.TYPE_17__*) #1

declare dso_local i64 @io_channel_read_blk64(i32, i32, i32, i64) #1

declare dso_local i64 @io_channel_write_blk64(i32, i32, i32, i64) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
