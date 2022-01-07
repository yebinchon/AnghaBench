; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_dir_iterate.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inline_data.c_ext2fs_inline_data_dir_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_context = type { i8*, i32, i32, i8* }
%struct.ext2_inode = type { i32, i32*, i32 }
%struct.ext2_dir_entry = type { i32, i8*, i8* }
%struct.ext2_inline_data = type { i32, i8*, i8*, i32 }

@BLOCK_ABORT = common dso_local global i32 0, align 4
@DIRENT_FLAG_INCLUDE_INLINE_DATA = common dso_local global i32 0, align 4
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EXT2_ET_NO_INLINE_DATA = common dso_local global i8* null, align 8
@EXT2_ET_NO_DIRECTORY = common dso_local global i8* null, align 8
@BLOCK_INLINE_DATA_CHANGED = common dso_local global i32 0, align 4
@EXT4_INLINE_DATA_DOTDOT_SIZE = common dso_local global i32 0, align 4
@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2fs_inline_data_dir_iterate(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dir_context*, align 8
  %8 = alloca %struct.ext2_inode, align 8
  %9 = alloca %struct.ext2_dir_entry, align 8
  %10 = alloca %struct.ext2_inline_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @BLOCK_ABORT, align 4
  store i32 %17, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.dir_context*
  store %struct.dir_context* %19, %struct.dir_context** %7, align 8
  %20 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %21 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %13, align 8
  %23 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %24 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %27 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* @DIRENT_FLAG_INCLUDE_INLINE_DATA, align 4
  %30 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %31 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @ext2fs_read_inode(i32 %34, i8* %35, %struct.ext2_inode* %8)
  %37 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %38 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %40 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %269

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** @EXT2_ET_NO_INLINE_DATA, align 8
  %52 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %53 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  br label %269

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @LINUX_S_ISDIR(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** @EXT2_ET_NO_DIRECTORY, align 8
  %61 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %62 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %269

63:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 2
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @EXT2_DIR_REC_LEN(i32 2)
  %69 = call i32 @ext2fs_set_rec_len(i32 %67, i32 %68, %struct.ext2_dir_entry* %9)
  %70 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 46, i8* %72, align 1
  %73 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 0, i8* %75, align 1
  %76 = bitcast %struct.ext2_dir_entry* %9 to i8*
  %77 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %78 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %81 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %80, i32 0, i32 1
  %82 = call i32 @ext2fs_get_rec_len(i32 %79, %struct.ext2_dir_entry* %9, i32* %81)
  %83 = load i32, i32* %4, align 4
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %12, align 8
  %86 = trunc i64 %84 to i32
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @ext2fs_process_dir_block(i32 %83, i32 0, i32 %86, i32 0, i32 0, i8* %87)
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @BLOCK_ABORT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %63
  br label %269

96:                                               ; preds = %63
  %97 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @ext2fs_le32_to_cpu(i32 %100)
  %102 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 2
  store i8* %101, i8** %102, align 8
  %103 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 0
  store i32 2, i32* %103, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @EXT2_DIR_REC_LEN(i32 3)
  %106 = call i32 @ext2fs_set_rec_len(i32 %104, i32 %105, %struct.ext2_dir_entry* %9)
  %107 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  store i8 46, i8* %109, align 1
  %110 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 46, i8* %112, align 1
  %113 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  store i8 0, i8* %115, align 1
  %116 = bitcast %struct.ext2_dir_entry* %9 to i8*
  %117 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %118 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %121 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %120, i32 0, i32 1
  %122 = call i32 @ext2fs_get_rec_len(i32 %119, %struct.ext2_dir_entry* %9, i32* %121)
  %123 = load i32, i32* %4, align 4
  %124 = load i64, i64* %12, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %12, align 8
  %126 = trunc i64 %124 to i32
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @ext2fs_process_dir_block(i32 %123, i32 0, i32 %126, i32 0, i32 0, i8* %127)
  %129 = load i32, i32* %11, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @BLOCK_INLINE_DATA_CHANGED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %96
  %136 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %9, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @ext2fs_cpu_to_le32(i8* %137)
  %139 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i8*, i8** %5, align 8
  %144 = call i8* @ext2fs_write_inode(i32 %142, i8* %143, %struct.ext2_inode* %8)
  store i8* %144, i8** %16, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  br label %269

148:                                              ; preds = %135
  %149 = load i32, i32* @BLOCK_INLINE_DATA_CHANGED, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %148, %96
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* @BLOCK_ABORT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %269

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %8, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i32, i32* @EXT4_INLINE_DATA_DOTDOT_SIZE, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %167 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %169 = load i32, i32* @EXT4_INLINE_DATA_DOTDOT_SIZE, align 4
  %170 = sub nsw i32 %168, %169
  %171 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %172 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* %4, align 4
  %174 = load i64, i64* %12, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %12, align 8
  %176 = trunc i64 %174 to i32
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @ext2fs_process_dir_block(i32 %173, i32 0, i32 %176, i32 0, i32 0, i8* %177)
  %179 = load i32, i32* %11, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @BLOCK_INLINE_DATA_CHANGED, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %159
  %186 = load i32, i32* %4, align 4
  %187 = load i8*, i8** %5, align 8
  %188 = call i8* @ext2fs_write_inode(i32 %186, i8* %187, %struct.ext2_inode* %8)
  %189 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %190 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %192 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %185
  %196 = load i32, i32* @BLOCK_ABORT, align 4
  %197 = load i32, i32* %11, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %195, %185
  %200 = load i32, i32* @BLOCK_INLINE_DATA_CHANGED, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %11, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %11, align 4
  br label %204

204:                                              ; preds = %199, %159
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @BLOCK_ABORT, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %269

210:                                              ; preds = %204
  %211 = load i32, i32* %4, align 4
  %212 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %10, i32 0, i32 3
  store i32 %211, i32* %212, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %10, i32 0, i32 2
  store i8* %213, i8** %214, align 8
  %215 = call i8* @ext2fs_inline_data_ea_get(%struct.ext2_inline_data* %10)
  %216 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %217 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  %218 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %219 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %210
  %223 = load i32, i32* @BLOCK_ABORT, align 4
  %224 = load i32, i32* %11, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %11, align 4
  br label %269

226:                                              ; preds = %210
  %227 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %10, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp sle i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  br label %266

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %10, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %235 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %234, i32 0, i32 0
  store i8* %233, i8** %235, align 8
  %236 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %10, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %239 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  %240 = load i32, i32* %4, align 4
  %241 = load i64, i64* %12, align 8
  %242 = add nsw i64 %241, 1
  store i64 %242, i64* %12, align 8
  %243 = trunc i64 %241 to i32
  %244 = load i8*, i8** %6, align 8
  %245 = call i32 @ext2fs_process_dir_block(i32 %240, i32 0, i32 %243, i32 0, i32 0, i8* %244)
  %246 = load i32, i32* %11, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @BLOCK_INLINE_DATA_CHANGED, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %231
  %253 = call i8* @ext2fs_inline_data_ea_set(%struct.ext2_inline_data* %10)
  %254 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %255 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %254, i32 0, i32 3
  store i8* %253, i8** %255, align 8
  %256 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %257 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %256, i32 0, i32 3
  %258 = load i8*, i8** %257, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %252
  %261 = load i32, i32* @BLOCK_ABORT, align 4
  %262 = load i32, i32* %11, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %11, align 4
  br label %264

264:                                              ; preds = %260, %252
  br label %265

265:                                              ; preds = %264, %231
  br label %266

266:                                              ; preds = %265, %230
  %267 = getelementptr inbounds %struct.ext2_inline_data, %struct.ext2_inline_data* %10, i32 0, i32 1
  %268 = call i32 @ext2fs_free_mem(i8** %267)
  br label %269

269:                                              ; preds = %266, %222, %209, %158, %147, %95, %59, %50, %43
  %270 = load i8*, i8** %13, align 8
  %271 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %272 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %271, i32 0, i32 0
  store i8* %270, i8** %272, align 8
  %273 = load i32, i32* %14, align 4
  %274 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %275 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 8
  %276 = load i32, i32* %15, align 4
  %277 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %278 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* @BLOCK_ABORT, align 4
  %280 = load i32, i32* @BLOCK_INLINE_DATA_CHANGED, align 4
  %281 = or i32 %279, %280
  %282 = xor i32 %281, -1
  %283 = load i32, i32* %11, align 4
  %284 = and i32 %283, %282
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  ret i32 %285
}

declare dso_local i8* @ext2fs_read_inode(i32, i8*, %struct.ext2_inode*) #1

declare dso_local i32 @LINUX_S_ISDIR(i32) #1

declare dso_local i32 @ext2fs_set_rec_len(i32, i32, %struct.ext2_dir_entry*) #1

declare dso_local i32 @EXT2_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext2fs_get_rec_len(i32, %struct.ext2_dir_entry*, i32*) #1

declare dso_local i32 @ext2fs_process_dir_block(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i8* @ext2fs_le32_to_cpu(i32) #1

declare dso_local i32 @ext2fs_cpu_to_le32(i8*) #1

declare dso_local i8* @ext2fs_write_inode(i32, i8*, %struct.ext2_inode*) #1

declare dso_local i8* @ext2fs_inline_data_ea_get(%struct.ext2_inline_data*) #1

declare dso_local i8* @ext2fs_inline_data_ea_set(%struct.ext2_inline_data*) #1

declare dso_local i32 @ext2fs_free_mem(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
