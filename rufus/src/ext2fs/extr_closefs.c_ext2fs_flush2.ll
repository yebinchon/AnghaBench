; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_flush2.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_closefs.c_ext2fs_flush2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64, i32, %struct.opaque_ext2_group_desc*, i32, %struct.TYPE_15__*, %struct.opaque_ext2_group_desc*, i64 (%struct.TYPE_16__*)*, i64 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*)*, i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i64)*, i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)* }
%struct.ext2fs_numeric_progress_struct = type { i32 }
%struct.opaque_ext2_group_desc = type { i64, i32, i32, i64, i64 }
%struct.ext2_super_block = type { i64, i32, i32, i64, i64 }

@EXT2_ET_MAGIC_EXT2FS_FILSYS = common dso_local global i32 0, align 4
@EXT2_VALID_FS = common dso_local global i64 0, align 8
@EXT2_FLAG_MASTER_SB_ONLY = common dso_local global i32 0, align 4
@EXT2_FLAG_SUPER_ONLY = common dso_local global i32 0, align 4
@EXT2_FLAG_FLUSH_NO_SYNC = common dso_local global i32 0, align 4
@EXT2_FLAG_DIRTY = common dso_local global i32 0, align 4
@EXT2_ET_NO_MEMORY = common dso_local global i64 0, align 8
@SUPERBLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_flush2(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext2_super_block*, align 8
  %11 = alloca %struct.opaque_ext2_group_desc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext2fs_numeric_progress_struct, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ext2_super_block* null, %struct.ext2_super_block** %10, align 8
  store %struct.opaque_ext2_group_desc* null, %struct.opaque_ext2_group_desc** %11, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = load i32, i32* @EXT2_ET_MAGIC_EXT2FS_FILSYS, align 4
  %21 = call i32 @EXT2_CHECK_MAGIC(%struct.TYPE_16__* %19, i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 4
  %24 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %23, align 8
  %25 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 4
  %29 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %28, align 8
  %30 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  br label %42

40:                                               ; preds = %2
  %41 = call i64 @time(i32* null)
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i64 [ %39, %36 ], [ %41, %40 ]
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %45, align 8
  %47 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %46, i32 0, i32 4
  store i64 %43, i64* %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 4
  %50 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %49, align 8
  %51 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 8
  %54 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %53, align 8
  %55 = icmp ne i64 (%struct.TYPE_16__*)* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %42
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 8
  %59 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %58, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = call i64 %59(%struct.TYPE_16__* %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %353

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i64, i64* @EXT2_VALID_FS, align 8
  %68 = xor i64 %67, -1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 4
  %71 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %70, align 8
  %72 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %73, %68
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 4
  %77 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %76, align 8
  %78 = call i32 @ext2fs_clear_feature_journal_needs_recovery(%struct.opaque_ext2_group_desc* %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 4
  %81 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %80, align 8
  %82 = bitcast %struct.opaque_ext2_group_desc* %81 to %struct.ext2_super_block*
  store %struct.ext2_super_block* %82, %struct.ext2_super_block** %10, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 7
  %85 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %84, align 8
  store %struct.opaque_ext2_group_desc* %85, %struct.opaque_ext2_group_desc** %11, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  %88 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %87, align 8
  %89 = call i64 @ext2fs_has_feature_journal_dev(%struct.opaque_ext2_group_desc* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %66
  br label %287

92:                                               ; preds = %66
  %93 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %11, align 8
  %94 = bitcast %struct.opaque_ext2_group_desc* %93 to i8*
  store i8* %94, i8** %12, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  %97 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %96, align 8
  %98 = call i64 @ext2fs_has_feature_meta_bg(%struct.opaque_ext2_group_desc* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %92
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 4
  %103 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %102, align 8
  %104 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %107, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %100
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %112, %100
  br label %123

118:                                              ; preds = %92
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %118, %117
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 6
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = icmp ne %struct.TYPE_15__* %126, null
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 6
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)*, i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)** %132, align 8
  %134 = icmp ne i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %128
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = load i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)*, i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*, i64)** %139, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 %140(%struct.TYPE_16__* %141, %struct.ext2fs_numeric_progress_struct* %14, i32* null, i64 %144)
  br label %146

146:                                              ; preds = %135, %128, %123
  store i64 0, i64* %6, align 8
  br label %147

147:                                              ; preds = %263, %146
  %148 = load i64, i64* %6, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %153, label %266

153:                                              ; preds = %147
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 6
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = icmp ne %struct.TYPE_15__* %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %153
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i64)*, i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i64)** %162, align 8
  %164 = icmp ne i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i64)* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 6
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i64)*, i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i64)** %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = load i64, i64* %6, align 8
  %173 = call i32 %170(%struct.TYPE_16__* %171, %struct.ext2fs_numeric_progress_struct* %14, i64 %172)
  br label %174

174:                                              ; preds = %165, %158, %153
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %176 = load i64, i64* %6, align 8
  %177 = call i32 @ext2fs_super_and_bgd_loc2(%struct.TYPE_16__* %175, i64 %176, i32* %15, i32* %16, i32* %17, i32 0)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @EXT2_FLAG_MASTER_SB_ONLY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %201, label %184

184:                                              ; preds = %174
  %185 = load i64, i64* %6, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %184
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %187
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %192 = load i64, i64* %6, align 8
  %193 = load i32, i32* %15, align 4
  %194 = load %struct.ext2_super_block*, %struct.ext2_super_block** %10, align 8
  %195 = bitcast %struct.ext2_super_block* %194 to %struct.opaque_ext2_group_desc*
  %196 = call i64 @write_backup_super(%struct.TYPE_16__* %191, i64 %192, i32 %193, %struct.opaque_ext2_group_desc* %195)
  store i64 %196, i64* %7, align 8
  %197 = load i64, i64* %7, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %353

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200, %187, %184, %174
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @EXT2_FLAG_SUPER_ONLY, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %263

209:                                              ; preds = %201
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %234

212:                                              ; preds = %209
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @EXT2_FLAG_MASTER_SB_ONLY, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %212
  %220 = load i64, i64* %6, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %219, %212
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %13, align 4
  %228 = load i8*, i8** %12, align 8
  %229 = call i64 @io_channel_write_blk64(i32 %225, i32 %226, i32 %227, i8* %228)
  store i64 %229, i64* %7, align 8
  %230 = load i64, i64* %7, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %222
  br label %353

233:                                              ; preds = %222
  br label %234

234:                                              ; preds = %233, %219, %209
  %235 = load i32, i32* %17, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %262

237:                                              ; preds = %234
  %238 = load i64, i64* %6, align 8
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 4
  %241 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %240, align 8
  %242 = call i64 @EXT2_DESC_PER_BLOCK(%struct.opaque_ext2_group_desc* %241)
  %243 = sdiv i64 %238, %242
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %18, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %17, align 4
  %249 = load i8*, i8** %12, align 8
  %250 = load i32, i32* %18, align 4
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = mul nsw i32 %250, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %249, i64 %255
  %257 = call i64 @io_channel_write_blk64(i32 %247, i32 %248, i32 1, i8* %256)
  store i64 %257, i64* %7, align 8
  %258 = load i64, i64* %7, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %237
  br label %353

261:                                              ; preds = %237
  br label %262

262:                                              ; preds = %261, %234
  br label %263

263:                                              ; preds = %262, %208
  %264 = load i64, i64* %6, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %6, align 8
  br label %147

266:                                              ; preds = %147
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %268, align 8
  %270 = icmp ne %struct.TYPE_15__* %269, null
  br i1 %270, label %271, label %286

271:                                              ; preds = %266
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 6
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 0
  %276 = load i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*)*, i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*)** %275, align 8
  %277 = icmp ne i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*)* %276, null
  br i1 %277, label %278, label %286

278:                                              ; preds = %271
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 6
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = load i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*)*, i32 (%struct.TYPE_16__*, %struct.ext2fs_numeric_progress_struct*, i32*)** %282, align 8
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %285 = call i32 %283(%struct.TYPE_16__* %284, %struct.ext2fs_numeric_progress_struct* %14, i32* null)
  br label %286

286:                                              ; preds = %278, %271, %266
  br label %287

287:                                              ; preds = %286, %91
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 4
  %290 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %289, align 8
  %291 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %290, i32 0, i32 3
  store i64 0, i64* %291, align 8
  %292 = load i64, i64* %8, align 8
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 4
  %295 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %294, align 8
  %296 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %295, i32 0, i32 0
  store i64 %292, i64* %296, align 8
  %297 = load i32, i32* %9, align 4
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 4
  %300 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %299, align 8
  %301 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %300, i32 0, i32 2
  store i32 %297, i32* %301, align 4
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %303 = load %struct.ext2_super_block*, %struct.ext2_super_block** %10, align 8
  %304 = bitcast %struct.ext2_super_block* %303 to %struct.opaque_ext2_group_desc*
  %305 = call i64 @ext2fs_superblock_csum_set(%struct.TYPE_16__* %302, %struct.opaque_ext2_group_desc* %304)
  store i64 %305, i64* %7, align 8
  %306 = load i64, i64* %7, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %287
  %309 = load i64, i64* %7, align 8
  store i64 %309, i64* %3, align 8
  br label %360

310:                                              ; preds = %287
  %311 = load i32, i32* %5, align 4
  %312 = load i32, i32* @EXT2_FLAG_FLUSH_NO_SYNC, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %324, label %315

315:                                              ; preds = %310
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = call i64 @io_channel_flush(i32 %318)
  store i64 %319, i64* %7, align 8
  %320 = load i64, i64* %7, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %315
  br label %353

323:                                              ; preds = %315
  br label %324

324:                                              ; preds = %323, %310
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %326 = load %struct.ext2_super_block*, %struct.ext2_super_block** %10, align 8
  %327 = bitcast %struct.ext2_super_block* %326 to %struct.opaque_ext2_group_desc*
  %328 = call i64 @write_primary_superblock(%struct.TYPE_16__* %325, %struct.opaque_ext2_group_desc* %327)
  store i64 %328, i64* %7, align 8
  %329 = load i64, i64* %7, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %324
  br label %353

332:                                              ; preds = %324
  %333 = load i32, i32* @EXT2_FLAG_DIRTY, align 4
  %334 = xor i32 %333, -1
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load i32, i32* %5, align 4
  %340 = load i32, i32* @EXT2_FLAG_FLUSH_NO_SYNC, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %352, label %343

343:                                              ; preds = %332
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 8
  %347 = call i64 @io_channel_flush(i32 %346)
  store i64 %347, i64* %7, align 8
  %348 = load i64, i64* %7, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %343
  br label %353

351:                                              ; preds = %343
  br label %352

352:                                              ; preds = %351, %332
  br label %353

353:                                              ; preds = %352, %350, %331, %322, %260, %232, %199, %64
  %354 = load i64, i64* %8, align 8
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %355, i32 0, i32 4
  %357 = load %struct.opaque_ext2_group_desc*, %struct.opaque_ext2_group_desc** %356, align 8
  %358 = getelementptr inbounds %struct.opaque_ext2_group_desc, %struct.opaque_ext2_group_desc* %357, i32 0, i32 0
  store i64 %354, i64* %358, align 8
  %359 = load i64, i64* %7, align 8
  store i64 %359, i64* %3, align 8
  br label %360

360:                                              ; preds = %353, %308
  %361 = load i64, i64* %3, align 8
  ret i64 %361
}

declare dso_local i32 @EXT2_CHECK_MAGIC(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @ext2fs_clear_feature_journal_needs_recovery(%struct.opaque_ext2_group_desc*) #1

declare dso_local i64 @ext2fs_has_feature_journal_dev(%struct.opaque_ext2_group_desc*) #1

declare dso_local i64 @ext2fs_has_feature_meta_bg(%struct.opaque_ext2_group_desc*) #1

declare dso_local i32 @ext2fs_super_and_bgd_loc2(%struct.TYPE_16__*, i64, i32*, i32*, i32*, i32) #1

declare dso_local i64 @write_backup_super(%struct.TYPE_16__*, i64, i32, %struct.opaque_ext2_group_desc*) #1

declare dso_local i64 @io_channel_write_blk64(i32, i32, i32, i8*) #1

declare dso_local i64 @EXT2_DESC_PER_BLOCK(%struct.opaque_ext2_group_desc*) #1

declare dso_local i64 @ext2fs_superblock_csum_set(%struct.TYPE_16__*, %struct.opaque_ext2_group_desc*) #1

declare dso_local i64 @io_channel_flush(i32) #1

declare dso_local i64 @write_primary_superblock(%struct.TYPE_16__*, %struct.opaque_ext2_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
