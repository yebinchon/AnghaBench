; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_write.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_fileio.c_ext2fs_file_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_24__, i32, i32, i32, i64, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@EXT2_ET_MAGIC_EXT2_FILE = common dso_local global i32 0, align 4
@EXT2_FILE_WRITE = common dso_local global i32 0, align 4
@EXT2_ET_FILE_RO = common dso_local global i64 0, align 8
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EXT2_ET_INLINE_DATA_NO_SPACE = common dso_local global i64 0, align 8
@EXT2_FILE_BUF_DIRTY = common dso_local global i32 0, align 4
@BMAP_ALLOC = common dso_local global i32 0, align 4
@EXT2_FLAG_SHARE_DUP = common dso_local global i32 0, align 4
@EXT2_ET_NO_MEMORY = common dso_local global i64 0, align 8
@BMAP_SET = common dso_local global i32 0, align 4
@BMAP_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_file_write(%struct.TYPE_22__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %15, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %17, align 8
  store i32 0, i32* %18, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = load i32, i32* @EXT2_ET_MAGIC_EXT2_FILE, align 4
  %23 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_22__* %21, i32 %22)
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %10, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EXT2_FILE_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %4
  %34 = load i64, i64* @EXT2_ET_FILE_RO, align 8
  store i64 %34, i64* %5, align 8
  br label %271

35:                                               ; preds = %4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @ext2fs_file_write_inline_data(%struct.TYPE_22__* %44, i8* %45, i32 %46, i32* %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @EXT2_ET_INLINE_DATA_NO_SPACE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %5, align 8
  br label %271

54:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %224, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %240

59:                                               ; preds = %56
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %61 = call i64 @sync_buffer_position(%struct.TYPE_22__* %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %241

65:                                               ; preds = %59
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = urem i32 %68, %71
  store i32 %72, i32* %12, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sub i32 %75, %76
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %65
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %81, %65
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 @load_buffer(%struct.TYPE_22__* %84, i32 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %241

95:                                               ; preds = %83
  %96 = load i32, i32* @EXT2_FILE_BUF_DIRTY, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load i8*, i8** %15, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @memcpy(i64 %106, i8* %107, i32 %108)
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %224, label %114

114:                                              ; preds = %95
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @BMAP_ALLOC, align 4
  br label %122

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i32 [ %120, %119 ], [ 0, %121 ]
  store i32 %123, i32* %18, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @EXT2_FLAG_SHARE_DUP, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %122
  %131 = call %struct.TYPE_23__* @calloc(i32 1, i32 8)
  store %struct.TYPE_23__* %131, %struct.TYPE_23__** %16, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %133 = icmp ne %struct.TYPE_23__* %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* @EXT2_ET_NO_MEMORY, align 8
  store i64 %135, i64* %11, align 8
  br label %241

136:                                              ; preds = %130
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ext2fs_sha512(i8* %140, i32 %143, i32 %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call %struct.TYPE_23__* @ext2fs_hashmap_lookup(i32 %150, i32 %153, i32 4)
  store %struct.TYPE_23__* %154, %struct.TYPE_23__** %17, align 8
  br label %155

155:                                              ; preds = %136, %122
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %157 = icmp ne %struct.TYPE_23__* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @BMAP_SET, align 4
  %165 = load i32, i32* %18, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %18, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %168 = call i32 @free(%struct.TYPE_23__* %167)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %16, align 8
  br label %169

169:                                              ; preds = %158, %155
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  %176 = load i32, i32* @BMAP_BUFFER, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 4
  %183 = call i64 @ext2fs_bmap2(%struct.TYPE_21__* %170, i32 %173, %struct.TYPE_24__* %175, i32 %176, i32 %177, i32 %180, i32 0, i32* %182)
  store i64 %183, i64* %11, align 8
  %184 = load i64, i64* %11, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %169
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %188 = call i32 @free(%struct.TYPE_23__* %187)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %16, align 8
  br label %241

189:                                              ; preds = %169
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %191 = icmp ne %struct.TYPE_23__* %190, null
  br i1 %191, label %192, label %206

192:                                              ; preds = %189
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ext2fs_hashmap_add(i32 %200, %struct.TYPE_23__* %201, i32 %204, i32 4)
  br label %206

206:                                              ; preds = %192, %189
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* @BMAP_SET, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %206
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 2
  %215 = call i32 @ext2fs_iblk_add_blocks(%struct.TYPE_21__* %212, %struct.TYPE_24__* %214, i32 1)
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 2
  %222 = call i32 @ext2fs_write_inode(%struct.TYPE_21__* %216, i32 %219, %struct.TYPE_24__* %221)
  br label %223

223:                                              ; preds = %211, %206
  br label %224

224:                                              ; preds = %223, %95
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %228, %225
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i8*, i8** %15, align 8
  %232 = zext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  store i8* %233, i8** %15, align 8
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %14, align 4
  %236 = add i32 %235, %234
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %8, align 4
  %239 = sub i32 %238, %237
  store i32 %239, i32* %8, align 4
  br label %56

240:                                              ; preds = %56
  br label %241

241:                                              ; preds = %240, %186, %134, %94, %64
  %242 = load i32, i32* %14, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %263

244:                                              ; preds = %241
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 2
  %247 = call i32 @EXT2_I_SIZE(%struct.TYPE_24__* %246)
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ult i32 %247, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %244
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @ext2fs_file_set_size2(%struct.TYPE_22__* %253, i32 %256)
  store i64 %257, i64* %19, align 8
  %258 = load i64, i64* %11, align 8
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %252
  %261 = load i64, i64* %19, align 8
  store i64 %261, i64* %11, align 8
  br label %262

262:                                              ; preds = %260, %252
  br label %263

263:                                              ; preds = %262, %244, %241
  %264 = load i32*, i32** %9, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* %14, align 4
  %268 = load i32*, i32** %9, align 8
  store i32 %267, i32* %268, align 4
  br label %269

269:                                              ; preds = %266, %263
  %270 = load i64, i64* %11, align 8
  store i64 %270, i64* %5, align 8
  br label %271

271:                                              ; preds = %269, %52, %33
  %272 = load i64, i64* %5, align 8
  ret i64 %272
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ext2fs_file_write_inline_data(%struct.TYPE_22__*, i8*, i32, i32*) #1

declare dso_local i64 @sync_buffer_position(%struct.TYPE_22__*) #1

declare dso_local i64 @load_buffer(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local %struct.TYPE_23__* @calloc(i32, i32) #1

declare dso_local i32 @ext2fs_sha512(i8*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @ext2fs_hashmap_lookup(i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_23__*) #1

declare dso_local i64 @ext2fs_bmap2(%struct.TYPE_21__*, i32, %struct.TYPE_24__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ext2fs_hashmap_add(i32, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ext2fs_iblk_add_blocks(%struct.TYPE_21__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ext2fs_write_inode(%struct.TYPE_21__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @EXT2_I_SIZE(%struct.TYPE_24__*) #1

declare dso_local i64 @ext2fs_file_set_size2(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
