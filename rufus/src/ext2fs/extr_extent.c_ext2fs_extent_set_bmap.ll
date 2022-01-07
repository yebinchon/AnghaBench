; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_set_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_extent.c_ext2fs_extent_set_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.extent_path*, %struct.TYPE_13__* }
%struct.extent_path = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.ext2fs_extent = type { i32, i64, i64, i32 }
%struct.ext2_extent_info = type { i32, i32 }

@EXT_INIT_MAX_LEN = common dso_local global i32 0, align 4
@EXT2_ET_MAGIC_EXTENT_HANDLE = common dso_local global i32 0, align 4
@EXT2_FLAG_RW = common dso_local global i32 0, align 4
@EXT2_ET_RO_FILSYS = common dso_local global i64 0, align 8
@EXT2_ET_NO_CURRENT_NODE = common dso_local global i64 0, align 8
@EXT2_EXTENT_SET_BMAP_UNINIT = common dso_local global i32 0, align 4
@EXT_UNINIT_MAX_LEN = common dso_local global i32 0, align 4
@EXT2_EXTENT_FLAGS_LEAF = common dso_local global i32 0, align 4
@EXT2_EXTENT_FLAGS_UNINIT = common dso_local global i32 0, align 4
@EXT2_EXTENT_CURRENT = common dso_local global i32 0, align 4
@EXT2_ET_EXTENT_NOT_FOUND = common dso_local global i64 0, align 8
@EXT2_EXTENT_NEXT_LEAF = common dso_local global i32 0, align 4
@EXT2_ET_EXTENT_NO_NEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"set_bmap: next_extent\00", align 1
@EXT2_EXTENT_PREV_LEAF = common dso_local global i32 0, align 4
@EXT2_ET_EXTENT_NO_PREV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"set_bmap: prev_extent\00", align 1
@EXT2_EXTENT_INSERT_AFTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_extent_set_bmap(%struct.TYPE_14__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.extent_path*, align 8
  %23 = alloca %struct.ext2fs_extent, align 8
  %24 = alloca %struct.ext2fs_extent, align 8
  %25 = alloca %struct.ext2fs_extent, align 8
  %26 = alloca %struct.ext2fs_extent, align 8
  %27 = alloca %struct.ext2_extent_info, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca %struct.ext2fs_extent, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load i32, i32* @EXT_INIT_MAX_LEN, align 4
  store i32 %32, i32* %18, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = load i32, i32* @EXT2_ET_MAGIC_EXTENT_HANDLE, align 4
  %35 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_14__* %33, i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @EXT2_FLAG_RW, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %4
  %45 = load i64, i64* @EXT2_ET_RO_FILSYS, align 8
  store i64 %45, i64* %5, align 8
  br label %720

46:                                               ; preds = %4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = load %struct.extent_path*, %struct.extent_path** %48, align 8
  %50 = icmp ne %struct.extent_path* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* @EXT2_ET_NO_CURRENT_NODE, align 8
  store i64 %52, i64* %5, align 8
  br label %720

53:                                               ; preds = %46
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 3
  %56 = load %struct.extent_path*, %struct.extent_path** %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %56, i64 %60
  store %struct.extent_path* %61, %struct.extent_path** %22, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @EXT2_EXTENT_SET_BMAP_UNINIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  store i32 1, i32* %17, align 4
  %67 = load i32, i32* @EXT_UNINIT_MAX_LEN, align 4
  store i32 %67, i32* %18, align 4
  br label %68

68:                                               ; preds = %66, %53
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %26, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %26, i32 0, i32 1
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %26, i32 0, i32 2
  store i64 %75, i64* %76, align 8
  %77 = load i32, i32* @EXT2_EXTENT_FLAGS_LEAF, align 4
  %78 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %26, i32 0, i32 3
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load i32, i32* @EXT2_EXTENT_FLAGS_UNINIT, align 4
  %83 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %26, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %81, %71
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.extent_path*, %struct.extent_path** %22, align 8
  %94 = getelementptr inbounds %struct.extent_path, %struct.extent_path* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = call i64 @ext2fs_extent_insert(%struct.TYPE_14__* %98, i32 0, %struct.ext2fs_extent* %26)
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  store i64 %100, i64* %5, align 8
  br label %720

101:                                              ; preds = %92, %87
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = load i32, i32* @EXT2_EXTENT_CURRENT, align 4
  %104 = call i64 @ext2fs_extent_get(%struct.TYPE_14__* %102, i32 %103, %struct.ext2fs_extent* %23)
  store i64 %104, i64* %11, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @EXT2_ET_NO_CURRENT_NODE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* %5, align 8
  br label %720

112:                                              ; preds = %106
  %113 = call i32 @memset(%struct.ext2fs_extent* %23, i32 0, i32 32)
  br label %114

114:                                              ; preds = %112, %101
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = call i64 @ext2fs_extent_get_info(%struct.TYPE_14__* %115, %struct.ext2_extent_info* %27)
  store i64 %116, i64* %11, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i64, i64* %11, align 8
  store i64 %119, i64* %5, align 8
  br label %720

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %27, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.ext2_extent_info, %struct.ext2_extent_info* %27, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %122, %124
  store i32 %125, i32* %13, align 4
  %126 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %21, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i64 @ext2fs_extent_goto(%struct.TYPE_14__* %128, i64 %129)
  store i64 %130, i64* %11, align 8
  %131 = load i64, i64* %11, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %120
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* @EXT2_ET_EXTENT_NOT_FOUND, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %138 = load i64, i64* %8, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %704

141:                                              ; preds = %137
  br label %143

142:                                              ; preds = %133
  br label %704

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %143, %120
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %146 = load i32, i32* @EXT2_EXTENT_CURRENT, align 4
  %147 = call i64 @ext2fs_extent_get(%struct.TYPE_14__* %145, i32 %146, %struct.ext2fs_extent* %23)
  store i64 %147, i64* %11, align 8
  %148 = load i64, i64* %11, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %704

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @EXT2_EXTENT_FLAGS_UNINIT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 1, i32* %14, align 4
  br label %158

158:                                              ; preds = %157, %151
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %160 = load i32, i32* @EXT2_EXTENT_NEXT_LEAF, align 4
  %161 = call i64 @ext2fs_extent_get(%struct.TYPE_14__* %159, i32 %160, %struct.ext2fs_extent* %24)
  store i64 %161, i64* %11, align 8
  %162 = load i64, i64* %11, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  store i32 0, i32* %20, align 4
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* @EXT2_ET_EXTENT_NO_NEXT, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %704

169:                                              ; preds = %164
  br label %179

170:                                              ; preds = %158
  %171 = call i32 @dbg_print_extent(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.ext2fs_extent* %24)
  store i32 1, i32* %20, align 4
  %172 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @EXT2_EXTENT_FLAGS_UNINIT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i32 1, i32* %16, align 4
  br label %178

178:                                              ; preds = %177, %170
  br label %179

179:                                              ; preds = %178, %169
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = load i64, i64* %7, align 8
  %182 = call i64 @ext2fs_extent_goto(%struct.TYPE_14__* %180, i64 %181)
  store i64 %182, i64* %11, align 8
  %183 = load i64, i64* %11, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* @EXT2_ET_EXTENT_NOT_FOUND, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %704

190:                                              ; preds = %185, %179
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %192 = load i32, i32* @EXT2_EXTENT_PREV_LEAF, align 4
  %193 = call i64 @ext2fs_extent_get(%struct.TYPE_14__* %191, i32 %192, %struct.ext2fs_extent* %25)
  store i64 %193, i64* %11, align 8
  %194 = load i64, i64* %11, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  store i32 0, i32* %19, align 4
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* @EXT2_ET_EXTENT_NO_PREV, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %704

201:                                              ; preds = %196
  br label %211

202:                                              ; preds = %190
  store i32 1, i32* %19, align 4
  %203 = call i32 @dbg_print_extent(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.ext2fs_extent* %25)
  %204 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %25, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @EXT2_EXTENT_FLAGS_UNINIT, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  store i32 1, i32* %15, align 4
  br label %210

210:                                              ; preds = %209, %202
  br label %211

211:                                              ; preds = %210, %201
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %213 = load i64, i64* %7, align 8
  %214 = call i64 @ext2fs_extent_goto(%struct.TYPE_14__* %212, i64 %213)
  store i64 %214, i64* %11, align 8
  %215 = load i64, i64* %11, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load i64, i64* %11, align 8
  %219 = load i64, i64* @EXT2_ET_EXTENT_NOT_FOUND, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %704

222:                                              ; preds = %217, %211
  %223 = load i32, i32* %12, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %222
  %226 = load i32, i32* %17, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* %7, align 8
  %233 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = sub nsw i64 %232, %234
  %236 = add nsw i64 %231, %235
  %237 = load i64, i64* %8, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %229
  br label %704

240:                                              ; preds = %229, %225, %222
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %381, label %243

243:                                              ; preds = %240
  %244 = load i64, i64* %7, align 8
  %245 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %246, %249
  %251 = icmp eq i64 %244, %250
  br i1 %251, label %252, label %277

252:                                              ; preds = %243
  %253 = load i64, i64* %8, align 8
  %254 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %255, %258
  %260 = icmp eq i64 %253, %259
  br i1 %260, label %261, label %277

261:                                              ; preds = %252
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* %14, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %18, align 4
  %269 = sub nsw i32 %268, 1
  %270 = icmp slt i32 %267, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %276 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %275, i32 0, %struct.ext2fs_extent* %23)
  store i64 %276, i64* %11, align 8
  br label %370

277:                                              ; preds = %265, %261, %252, %243
  %278 = load i64, i64* %7, align 8
  %279 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = sub nsw i64 %280, 1
  %282 = icmp eq i64 %278, %281
  br i1 %282, label %283, label %311

283:                                              ; preds = %277
  %284 = load i64, i64* %8, align 8
  %285 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = sub nsw i64 %286, 1
  %288 = icmp eq i64 %284, %287
  br i1 %288, label %289, label %311

289:                                              ; preds = %283
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* %14, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %311

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %18, align 4
  %297 = sub nsw i32 %296, 1
  %298 = icmp slt i32 %295, %297
  br i1 %298, label %299, label %311

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 8
  %303 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, -1
  store i64 %305, i64* %303, align 8
  %306 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %307, -1
  store i64 %308, i64* %306, align 8
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %310 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %309, i32 0, %struct.ext2fs_extent* %23)
  store i64 %310, i64* %11, align 8
  br label %369

311:                                              ; preds = %293, %289, %283, %277
  %312 = load i32, i32* %20, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %355

314:                                              ; preds = %311
  %315 = load i64, i64* %7, align 8
  %316 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = sub nsw i64 %317, 1
  %319 = icmp eq i64 %315, %318
  br i1 %319, label %320, label %355

320:                                              ; preds = %314
  %321 = load i64, i64* %8, align 8
  %322 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = sub nsw i64 %323, 1
  %325 = icmp eq i64 %321, %324
  br i1 %325, label %326, label %355

326:                                              ; preds = %320
  %327 = load i32, i32* %17, align 4
  %328 = load i32, i32* %16, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %355

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* %18, align 4
  %334 = sub nsw i32 %333, 1
  %335 = icmp slt i32 %332, %334
  br i1 %335, label %336, label %355

336:                                              ; preds = %330
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %338 = load i32, i32* @EXT2_EXTENT_NEXT_LEAF, align 4
  %339 = call i64 @ext2fs_extent_get(%struct.TYPE_14__* %337, i32 %338, %struct.ext2fs_extent* %24)
  store i64 %339, i64* %11, align 8
  %340 = load i64, i64* %11, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %336
  br label %704

343:                                              ; preds = %336
  %344 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 8
  %347 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = add nsw i64 %348, -1
  store i64 %349, i64* %347, align 8
  %350 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = add nsw i64 %351, -1
  store i64 %352, i64* %350, align 8
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %354 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %353, i32 0, %struct.ext2fs_extent* %24)
  store i64 %354, i64* %11, align 8
  br label %368

355:                                              ; preds = %330, %326, %320, %314, %311
  %356 = load i64, i64* %7, align 8
  %357 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = icmp slt i64 %356, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %362 = call i64 @ext2fs_extent_insert(%struct.TYPE_14__* %361, i32 0, %struct.ext2fs_extent* %26)
  store i64 %362, i64* %11, align 8
  br label %367

363:                                              ; preds = %355
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %365 = load i32, i32* @EXT2_EXTENT_INSERT_AFTER, align 4
  %366 = call i64 @ext2fs_extent_insert(%struct.TYPE_14__* %364, i32 %365, %struct.ext2fs_extent* %26)
  store i64 %366, i64* %11, align 8
  br label %367

367:                                              ; preds = %363, %360
  br label %368

368:                                              ; preds = %367, %343
  br label %369

369:                                              ; preds = %368, %299
  br label %370

370:                                              ; preds = %369, %271
  %371 = load i64, i64* %11, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  br label %704

374:                                              ; preds = %370
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %376 = call i64 @ext2fs_extent_fix_parents(%struct.TYPE_14__* %375)
  store i64 %376, i64* %11, align 8
  %377 = load i64, i64* %11, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %374
  br label %704

380:                                              ; preds = %374
  br label %703

381:                                              ; preds = %240
  %382 = load i64, i64* %7, align 8
  %383 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = icmp eq i64 %382, %384
  br i1 %385, label %386, label %416

386:                                              ; preds = %381
  %387 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %390, label %416

390:                                              ; preds = %386
  %391 = load i64, i64* %8, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %395 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %394, i32 0, %struct.ext2fs_extent* %26)
  store i64 %395, i64* %11, align 8
  br label %411

396:                                              ; preds = %390
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %398 = call i64 @ext2fs_extent_delete(%struct.TYPE_14__* %397, i32 0)
  store i64 %398, i64* %11, align 8
  %399 = load i64, i64* %11, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %396
  br label %704

402:                                              ; preds = %396
  %403 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %404 = call i64 @ext2fs_extent_fix_parents(%struct.TYPE_14__* %403)
  store i64 %404, i64* %10, align 8
  %405 = load i64, i64* %10, align 8
  %406 = load i64, i64* @EXT2_ET_NO_CURRENT_NODE, align 8
  %407 = icmp ne i64 %405, %406
  br i1 %407, label %408, label %410

408:                                              ; preds = %402
  %409 = load i64, i64* %10, align 8
  store i64 %409, i64* %11, align 8
  br label %410

410:                                              ; preds = %408, %402
  br label %411

411:                                              ; preds = %410, %393
  %412 = load i64, i64* %11, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  br label %704

415:                                              ; preds = %411
  br label %702

416:                                              ; preds = %386, %381
  %417 = load i64, i64* %7, align 8
  %418 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = sext i32 %421 to i64
  %423 = add nsw i64 %419, %422
  %424 = sub nsw i64 %423, 1
  %425 = icmp eq i64 %417, %424
  br i1 %425, label %426, label %516

426:                                              ; preds = %416
  %427 = load i64, i64* %8, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %506

429:                                              ; preds = %426
  %430 = load i32, i32* %20, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %477

432:                                              ; preds = %429
  %433 = load i64, i64* %7, align 8
  %434 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 2
  %435 = load i64, i64* %434, align 8
  %436 = sub nsw i64 %435, 1
  %437 = icmp eq i64 %433, %436
  br i1 %437, label %438, label %477

438:                                              ; preds = %432
  %439 = load i64, i64* %8, align 8
  %440 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = sub nsw i64 %441, 1
  %443 = icmp eq i64 %439, %442
  br i1 %443, label %444, label %477

444:                                              ; preds = %438
  %445 = load i32, i32* %17, align 4
  %446 = load i32, i32* %16, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %448, label %477

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load i32, i32* %18, align 4
  %452 = sub nsw i32 %451, 1
  %453 = icmp slt i32 %450, %452
  br i1 %453, label %454, label %477

454:                                              ; preds = %448
  %455 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %456 = load i32, i32* @EXT2_EXTENT_NEXT_LEAF, align 4
  %457 = call i64 @ext2fs_extent_get(%struct.TYPE_14__* %455, i32 %456, %struct.ext2fs_extent* %24)
  store i64 %457, i64* %11, align 8
  %458 = load i64, i64* %11, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %454
  br label %704

461:                                              ; preds = %454
  %462 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %462, align 8
  %465 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 2
  %466 = load i64, i64* %465, align 8
  %467 = add nsw i64 %466, -1
  store i64 %467, i64* %465, align 8
  %468 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %24, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = add nsw i64 %469, -1
  store i64 %470, i64* %468, align 8
  %471 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %472 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %471, i32 0, %struct.ext2fs_extent* %24)
  store i64 %472, i64* %11, align 8
  %473 = load i64, i64* %11, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %461
  br label %704

476:                                              ; preds = %461
  br label %481

477:                                              ; preds = %448, %444, %438, %432, %429
  %478 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %479 = load i32, i32* @EXT2_EXTENT_INSERT_AFTER, align 4
  %480 = call i64 @ext2fs_extent_insert(%struct.TYPE_14__* %478, i32 %479, %struct.ext2fs_extent* %26)
  store i64 %480, i64* %11, align 8
  br label %481

481:                                              ; preds = %477, %476
  %482 = load i64, i64* %11, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %481
  br label %704

485:                                              ; preds = %481
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %487 = call i64 @ext2fs_extent_fix_parents(%struct.TYPE_14__* %486)
  store i64 %487, i64* %11, align 8
  %488 = load i64, i64* %11, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %485
  br label %704

491:                                              ; preds = %485
  %492 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %493 = load i64, i64* %7, align 8
  %494 = call i64 @ext2fs_extent_goto(%struct.TYPE_14__* %492, i64 %493)
  store i64 %494, i64* %11, align 8
  %495 = load i64, i64* %11, align 8
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %491
  br label %704

498:                                              ; preds = %491
  %499 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %500 = load i32, i32* @EXT2_EXTENT_CURRENT, align 4
  %501 = call i64 @ext2fs_extent_get(%struct.TYPE_14__* %499, i32 %500, %struct.ext2fs_extent* %23)
  store i64 %501, i64* %11, align 8
  %502 = load i64, i64* %11, align 8
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %505

504:                                              ; preds = %498
  br label %704

505:                                              ; preds = %498
  br label %506

506:                                              ; preds = %505, %426
  %507 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = add nsw i32 %508, -1
  store i32 %509, i32* %507, align 8
  %510 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %511 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %510, i32 0, %struct.ext2fs_extent* %23)
  store i64 %511, i64* %11, align 8
  %512 = load i64, i64* %11, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %506
  br label %704

515:                                              ; preds = %506
  br label %701

516:                                              ; preds = %416
  %517 = load i64, i64* %7, align 8
  %518 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %519 = load i64, i64* %518, align 8
  %520 = icmp eq i64 %517, %519
  br i1 %520, label %521, label %611

521:                                              ; preds = %516
  %522 = load i64, i64* %8, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %589

524:                                              ; preds = %521
  %525 = load i32, i32* %19, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %568

527:                                              ; preds = %524
  %528 = load i64, i64* %7, align 8
  %529 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %25, i32 0, i32 2
  %530 = load i64, i64* %529, align 8
  %531 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %25, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = sext i32 %532 to i64
  %534 = add nsw i64 %530, %533
  %535 = icmp eq i64 %528, %534
  br i1 %535, label %536, label %568

536:                                              ; preds = %527
  %537 = load i64, i64* %8, align 8
  %538 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %25, i32 0, i32 1
  %539 = load i64, i64* %538, align 8
  %540 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %25, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = sext i32 %541 to i64
  %543 = add nsw i64 %539, %542
  %544 = icmp eq i64 %537, %543
  br i1 %544, label %545, label %568

545:                                              ; preds = %536
  %546 = load i32, i32* %17, align 4
  %547 = load i32, i32* %15, align 4
  %548 = icmp eq i32 %546, %547
  br i1 %548, label %549, label %568

549:                                              ; preds = %545
  %550 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %25, i32 0, i32 0
  %551 = load i32, i32* %550, align 8
  %552 = load i32, i32* %18, align 4
  %553 = sub nsw i32 %552, 1
  %554 = icmp slt i32 %551, %553
  br i1 %554, label %555, label %568

555:                                              ; preds = %549
  %556 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %557 = load i32, i32* @EXT2_EXTENT_PREV_LEAF, align 4
  %558 = call i64 @ext2fs_extent_get(%struct.TYPE_14__* %556, i32 %557, %struct.ext2fs_extent* %25)
  store i64 %558, i64* %11, align 8
  %559 = load i64, i64* %11, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %555
  br label %704

562:                                              ; preds = %555
  %563 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %25, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* %563, align 8
  %566 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %567 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %566, i32 0, %struct.ext2fs_extent* %25)
  store i64 %567, i64* %11, align 8
  br label %571

568:                                              ; preds = %549, %545, %536, %527, %524
  %569 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %570 = call i64 @ext2fs_extent_insert(%struct.TYPE_14__* %569, i32 0, %struct.ext2fs_extent* %26)
  store i64 %570, i64* %11, align 8
  br label %571

571:                                              ; preds = %568, %562
  %572 = load i64, i64* %11, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %575

574:                                              ; preds = %571
  br label %704

575:                                              ; preds = %571
  %576 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %577 = call i64 @ext2fs_extent_fix_parents(%struct.TYPE_14__* %576)
  store i64 %577, i64* %11, align 8
  %578 = load i64, i64* %11, align 8
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %581

580:                                              ; preds = %575
  br label %704

581:                                              ; preds = %575
  %582 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %583 = load i32, i32* @EXT2_EXTENT_NEXT_LEAF, align 4
  %584 = call i64 @ext2fs_extent_get(%struct.TYPE_14__* %582, i32 %583, %struct.ext2fs_extent* %23)
  store i64 %584, i64* %11, align 8
  %585 = load i64, i64* %11, align 8
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %588

587:                                              ; preds = %581
  br label %704

588:                                              ; preds = %581
  br label %589

589:                                              ; preds = %588, %521
  %590 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 1
  %591 = load i64, i64* %590, align 8
  %592 = add nsw i64 %591, 1
  store i64 %592, i64* %590, align 8
  %593 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %594 = load i64, i64* %593, align 8
  %595 = add nsw i64 %594, 1
  store i64 %595, i64* %593, align 8
  %596 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = add nsw i32 %597, -1
  store i32 %598, i32* %596, align 8
  %599 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %600 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %599, i32 0, %struct.ext2fs_extent* %23)
  store i64 %600, i64* %11, align 8
  %601 = load i64, i64* %11, align 8
  %602 = icmp ne i64 %601, 0
  br i1 %602, label %603, label %604

603:                                              ; preds = %589
  br label %704

604:                                              ; preds = %589
  %605 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %606 = call i64 @ext2fs_extent_fix_parents(%struct.TYPE_14__* %605)
  store i64 %606, i64* %11, align 8
  %607 = load i64, i64* %11, align 8
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %610

609:                                              ; preds = %604
  br label %704

610:                                              ; preds = %604
  br label %700

611:                                              ; preds = %516
  %612 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* %29, align 8
  %614 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  store i32 %615, i32* %28, align 4
  %616 = bitcast %struct.ext2fs_extent* %30 to i8*
  %617 = bitcast %struct.ext2fs_extent* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %616, i8* align 8 %617, i64 32, i1 false)
  %618 = load i64, i64* %7, align 8
  %619 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %620 = load i64, i64* %619, align 8
  %621 = sub nsw i64 %618, %620
  %622 = trunc i64 %621 to i32
  %623 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  store i32 %622, i32* %623, align 8
  %624 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %625 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %624, i32 0, %struct.ext2fs_extent* %23)
  store i64 %625, i64* %11, align 8
  %626 = load i64, i64* %11, align 8
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %611
  br label %704

629:                                              ; preds = %611
  %630 = load i64, i64* %8, align 8
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %649

632:                                              ; preds = %629
  %633 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %634 = load i32, i32* @EXT2_EXTENT_INSERT_AFTER, align 4
  %635 = call i64 @ext2fs_extent_insert(%struct.TYPE_14__* %633, i32 %634, %struct.ext2fs_extent* %26)
  store i64 %635, i64* %11, align 8
  %636 = load i64, i64* %11, align 8
  %637 = icmp ne i64 %636, 0
  br i1 %637, label %638, label %648

638:                                              ; preds = %632
  %639 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %640 = load i64, i64* %29, align 8
  %641 = call i64 @ext2fs_extent_goto(%struct.TYPE_14__* %639, i64 %640)
  store i64 %641, i64* %31, align 8
  %642 = load i64, i64* %31, align 8
  %643 = icmp eq i64 %642, 0
  br i1 %643, label %644, label %647

644:                                              ; preds = %638
  %645 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %646 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %645, i32 0, %struct.ext2fs_extent* %30)
  br label %647

647:                                              ; preds = %644, %638
  br label %704

648:                                              ; preds = %632
  br label %649

649:                                              ; preds = %648, %629
  %650 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = add nsw i32 %651, 1
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 1
  %655 = load i64, i64* %654, align 8
  %656 = add nsw i64 %655, %653
  store i64 %656, i64* %654, align 8
  %657 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %658 = load i32, i32* %657, align 8
  %659 = add nsw i32 %658, 1
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 2
  %662 = load i64, i64* %661, align 8
  %663 = add nsw i64 %662, %660
  store i64 %663, i64* %661, align 8
  %664 = load i32, i32* %28, align 4
  %665 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = sub nsw i32 %664, %666
  %668 = sub nsw i32 %667, 1
  %669 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %23, i32 0, i32 0
  store i32 %668, i32* %669, align 8
  %670 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %671 = load i32, i32* @EXT2_EXTENT_INSERT_AFTER, align 4
  %672 = call i64 @ext2fs_extent_insert(%struct.TYPE_14__* %670, i32 %671, %struct.ext2fs_extent* %23)
  store i64 %672, i64* %11, align 8
  %673 = load i64, i64* %11, align 8
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %675, label %699

675:                                              ; preds = %649
  %676 = load i64, i64* %8, align 8
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %689

678:                                              ; preds = %675
  %679 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %680 = getelementptr inbounds %struct.ext2fs_extent, %struct.ext2fs_extent* %26, i32 0, i32 2
  %681 = load i64, i64* %680, align 8
  %682 = call i64 @ext2fs_extent_goto(%struct.TYPE_14__* %679, i64 %681)
  store i64 %682, i64* %31, align 8
  %683 = load i64, i64* %31, align 8
  %684 = icmp eq i64 %683, 0
  br i1 %684, label %685, label %688

685:                                              ; preds = %678
  %686 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %687 = call i64 @ext2fs_extent_delete(%struct.TYPE_14__* %686, i32 0)
  br label %688

688:                                              ; preds = %685, %678
  br label %689

689:                                              ; preds = %688, %675
  %690 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %691 = load i64, i64* %29, align 8
  %692 = call i64 @ext2fs_extent_goto(%struct.TYPE_14__* %690, i64 %691)
  store i64 %692, i64* %31, align 8
  %693 = load i64, i64* %31, align 8
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %695, label %698

695:                                              ; preds = %689
  %696 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %697 = call i64 @ext2fs_extent_replace(%struct.TYPE_14__* %696, i32 0, %struct.ext2fs_extent* %30)
  br label %698

698:                                              ; preds = %695, %689
  br label %704

699:                                              ; preds = %649
  br label %700

700:                                              ; preds = %699, %610
  br label %701

701:                                              ; preds = %700, %515
  br label %702

702:                                              ; preds = %701, %415
  br label %703

703:                                              ; preds = %702, %380
  br label %704

704:                                              ; preds = %703, %698, %647, %628, %609, %603, %587, %580, %574, %561, %514, %504, %497, %490, %484, %475, %460, %414, %401, %379, %373, %342, %239, %221, %200, %189, %168, %150, %142, %140
  %705 = load i32, i32* %13, align 4
  %706 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %707 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 8
  %709 = icmp sgt i32 %705, %708
  br i1 %709, label %710, label %714

710:                                              ; preds = %704
  %711 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %712 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %711, i32 0, i32 2
  %713 = load i32, i32* %712, align 8
  store i32 %713, i32* %13, align 4
  br label %714

714:                                              ; preds = %710, %704
  %715 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %716 = load i32, i32* %13, align 4
  %717 = load i64, i64* %21, align 8
  %718 = call i32 @ext2fs_extent_goto2(%struct.TYPE_14__* %715, i32 %716, i64 %717)
  %719 = load i64, i64* %11, align 8
  store i64 %719, i64* %5, align 8
  br label %720

720:                                              ; preds = %714, %118, %110, %97, %51, %44
  %721 = load i64, i64* %5, align 8
  ret i64 %721
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ext2fs_extent_insert(%struct.TYPE_14__*, i32, %struct.ext2fs_extent*) #1

declare dso_local i64 @ext2fs_extent_get(%struct.TYPE_14__*, i32, %struct.ext2fs_extent*) #1

declare dso_local i32 @memset(%struct.ext2fs_extent*, i32, i32) #1

declare dso_local i64 @ext2fs_extent_get_info(%struct.TYPE_14__*, %struct.ext2_extent_info*) #1

declare dso_local i64 @ext2fs_extent_goto(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @dbg_print_extent(i8*, %struct.ext2fs_extent*) #1

declare dso_local i64 @ext2fs_extent_replace(%struct.TYPE_14__*, i32, %struct.ext2fs_extent*) #1

declare dso_local i64 @ext2fs_extent_fix_parents(%struct.TYPE_14__*) #1

declare dso_local i64 @ext2fs_extent_delete(%struct.TYPE_14__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ext2fs_extent_goto2(%struct.TYPE_14__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
