; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkdir.c_ext2fs_mkdir.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkdir.c_ext2fs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.ext2_inode = type { i32, i32, i32, i32*, i32, i64, i64 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@LINUX_S_IFDIR = common dso_local global i32 0, align 4
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@EXT4_EXTENTS_FL = common dso_local global i32 0, align 4
@EXT2_ET_DIR_EXISTS = common dso_local global i64 0, align 8
@EXT2_ET_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@EXT2_FT_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_mkdir(%struct.TYPE_20__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ext2_inode, align 8
  %12 = alloca %struct.ext2_inode, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %13, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %21 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_20__* %19, i32 %20)
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @EXT2_FIRST_INO(i32 %28)
  %30 = icmp sge i64 %25, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24, %4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ext2fs_has_feature_inline_data(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %17, align 4
  br label %38

38:                                               ; preds = %37, %31, %24
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @LINUX_S_IFDIR, align 4
  %45 = or i32 %44, 493
  %46 = call i64 @ext2fs_new_inode(%struct.TYPE_20__* %42, i64 %43, i32 %45, i32 0, i64* %13)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %252

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %38
  %52 = call i32 @memset(%struct.ext2_inode* %12, i32 0, i32 48)
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @ext2fs_find_inode_goal(%struct.TYPE_20__* %57, i64 %58, %struct.ext2_inode* %12, i32 0)
  %60 = call i64 @ext2fs_new_block2(%struct.TYPE_20__* %56, i32 %59, i32* null, i32* %15)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %252

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %51
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @ext2fs_new_dir_inline_data(%struct.TYPE_20__* %69, i64 %70, i64 %71, i32* %73)
  store i64 %74, i64* %10, align 8
  br label %80

75:                                               ; preds = %65
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @ext2fs_new_dir_block(%struct.TYPE_20__* %76, i64 %77, i64 %78, i8** %16)
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %252

84:                                               ; preds = %80
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %13, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @ext2fs_read_inode(%struct.TYPE_20__* %89, i64 %90, %struct.ext2_inode* %11)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %252

95:                                               ; preds = %88
  br label %98

96:                                               ; preds = %84
  %97 = call i32 @memset(%struct.ext2_inode* %11, i32 0, i32 48)
  br label %98

98:                                               ; preds = %96, %95
  %99 = load i32, i32* @LINUX_S_IFDIR, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 511, %103
  %105 = or i32 %99, %104
  %106 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 0
  store i32 %105, i32* %106, align 8
  %107 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 5
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 6
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %98
  %112 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %113 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %117 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 2
  store i32 %116, i32* %117, align 8
  br label %141

118:                                              ; preds = %98
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @ext2fs_has_feature_extents(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %118
  %125 = load i32, i32* @EXT4_EXTENTS_FL, align 4
  %126 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %125
  store i32 %128, i32* %126, align 8
  br label %134

129:                                              ; preds = %118
  %130 = load i32, i32* %15, align 4
  %131 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %130, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 2
  store i32 %137, i32* %138, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %140 = call i32 @ext2fs_iblk_set(%struct.TYPE_20__* %139, %struct.ext2_inode* %12, i32 1)
  br label %141

141:                                              ; preds = %134, %111
  %142 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %12, i32 0, i32 1
  store i32 2, i32* %142, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = load i64, i64* %13, align 8
  %145 = call i64 @ext2fs_write_new_inode(%struct.TYPE_20__* %143, i64 %144, %struct.ext2_inode* %12)
  store i64 %145, i64* %10, align 8
  %146 = load i64, i64* %10, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %252

149:                                              ; preds = %141
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i64 @ext2fs_inline_data_init(%struct.TYPE_20__* %153, i64 %154)
  store i64 %155, i64* %10, align 8
  br label %189

156:                                              ; preds = %149
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %158 = load i32, i32* %15, align 4
  %159 = load i8*, i8** %16, align 8
  %160 = load i64, i64* %13, align 8
  %161 = call i64 @ext2fs_write_dir_block4(%struct.TYPE_20__* %157, i32 %158, i8* %159, i32 0, i64 %160)
  store i64 %161, i64* %10, align 8
  %162 = load i64, i64* %10, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %252

165:                                              ; preds = %156
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @ext2fs_has_feature_extents(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %165
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i64 @ext2fs_extent_open2(%struct.TYPE_20__* %172, i64 %173, %struct.ext2_inode* %12, i32* %9)
  store i64 %174, i64* %10, align 8
  %175 = load i64, i64* %10, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %252

178:                                              ; preds = %171
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %15, align 4
  %181 = call i64 @ext2fs_extent_set_bmap(i32 %179, i32 0, i32 %180, i32 0)
  store i64 %181, i64* %10, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @ext2fs_extent_free(i32 %182)
  %184 = load i64, i64* %10, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %252

187:                                              ; preds = %178
  br label %188

188:                                              ; preds = %187, %165
  br label %189

189:                                              ; preds = %188, %152
  %190 = load i8*, i8** %8, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %219

192:                                              ; preds = %189
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %194 = load i64, i64* %6, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = load i8*, i8** %8, align 8
  %197 = call i32 @strlen(i8* %196)
  %198 = call i64 @ext2fs_lookup(%struct.TYPE_20__* %193, i64 %194, i8* %195, i32 %197, i32 0, i64* %14)
  store i64 %198, i64* %10, align 8
  %199 = load i64, i64* %10, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %192
  %202 = load i64, i64* @EXT2_ET_DIR_EXISTS, align 8
  store i64 %202, i64* %10, align 8
  store i8* null, i8** %8, align 8
  br label %252

203:                                              ; preds = %192
  %204 = load i64, i64* %10, align 8
  %205 = load i64, i64* @EXT2_ET_FILE_NOT_FOUND, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %252

208:                                              ; preds = %203
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %210 = load i64, i64* %6, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = load i64, i64* %13, align 8
  %213 = load i32, i32* @EXT2_FT_DIR, align 4
  %214 = call i64 @ext2fs_link(%struct.TYPE_20__* %209, i64 %210, i8* %211, i64 %212, i32 %213)
  store i64 %214, i64* %10, align 8
  %215 = load i64, i64* %10, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  br label %252

218:                                              ; preds = %208
  br label %219

219:                                              ; preds = %218, %189
  %220 = load i64, i64* %6, align 8
  %221 = load i64, i64* %13, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %241

223:                                              ; preds = %219
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %225 = load i64, i64* %6, align 8
  %226 = call i64 @ext2fs_read_inode(%struct.TYPE_20__* %224, i64 %225, %struct.ext2_inode* %11)
  store i64 %226, i64* %10, align 8
  %227 = load i64, i64* %10, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %252

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %11, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %235 = load i64, i64* %6, align 8
  %236 = call i64 @ext2fs_write_inode(%struct.TYPE_20__* %234, i64 %235, %struct.ext2_inode* %11)
  store i64 %236, i64* %10, align 8
  %237 = load i64, i64* %10, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %230
  br label %252

240:                                              ; preds = %230
  br label %241

241:                                              ; preds = %240, %219
  %242 = load i32, i32* %17, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %241
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %246 = load i32, i32* %15, align 4
  %247 = call i32 @ext2fs_block_alloc_stats2(%struct.TYPE_20__* %245, i32 %246, i32 1)
  br label %248

248:                                              ; preds = %244, %241
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %250 = load i64, i64* %13, align 8
  %251 = call i32 @ext2fs_inode_alloc_stats2(%struct.TYPE_20__* %249, i64 %250, i32 1, i32 1)
  br label %252

252:                                              ; preds = %248, %239, %229, %217, %207, %201, %186, %177, %164, %148, %94, %83, %63, %49
  %253 = load i8*, i8** %16, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = call i32 @ext2fs_free_mem(i8** %16)
  br label %257

257:                                              ; preds = %255, %252
  %258 = load i64, i64* %10, align 8
  ret i64 %258
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @EXT2_FIRST_INO(i32) #1

declare dso_local i64 @ext2fs_has_feature_inline_data(i32) #1

declare dso_local i64 @ext2fs_new_inode(%struct.TYPE_20__*, i64, i32, i32, i64*) #1

declare dso_local i32 @memset(%struct.ext2_inode*, i32, i32) #1

declare dso_local i64 @ext2fs_new_block2(%struct.TYPE_20__*, i32, i32*, i32*) #1

declare dso_local i32 @ext2fs_find_inode_goal(%struct.TYPE_20__*, i64, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_new_dir_inline_data(%struct.TYPE_20__*, i64, i64, i32*) #1

declare dso_local i64 @ext2fs_new_dir_block(%struct.TYPE_20__*, i64, i64, i8**) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_20__*, i64, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_has_feature_extents(i32) #1

declare dso_local i32 @ext2fs_iblk_set(%struct.TYPE_20__*, %struct.ext2_inode*, i32) #1

declare dso_local i64 @ext2fs_write_new_inode(%struct.TYPE_20__*, i64, %struct.ext2_inode*) #1

declare dso_local i64 @ext2fs_inline_data_init(%struct.TYPE_20__*, i64) #1

declare dso_local i64 @ext2fs_write_dir_block4(%struct.TYPE_20__*, i32, i8*, i32, i64) #1

declare dso_local i64 @ext2fs_extent_open2(%struct.TYPE_20__*, i64, %struct.ext2_inode*, i32*) #1

declare dso_local i64 @ext2fs_extent_set_bmap(i32, i32, i32, i32) #1

declare dso_local i32 @ext2fs_extent_free(i32) #1

declare dso_local i64 @ext2fs_lookup(%struct.TYPE_20__*, i64, i8*, i32, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ext2fs_link(%struct.TYPE_20__*, i64, i8*, i64, i32) #1

declare dso_local i64 @ext2fs_write_inode(%struct.TYPE_20__*, i64, %struct.ext2_inode*) #1

declare dso_local i32 @ext2fs_block_alloc_stats2(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ext2fs_inode_alloc_stats2(%struct.TYPE_20__*, i64, i32, i32) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
