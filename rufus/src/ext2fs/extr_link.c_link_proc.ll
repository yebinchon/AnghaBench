; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_link.c_link_proc.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_link.c_link_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_dir_entry = type { i64, i32, i8* }
%struct.link_struct = type { i32, i64, i32, i64, i32, i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ext2_dir_entry_tail = type { i32 }

@DIRENT_ABORT = common dso_local global i32 0, align 4
@DIRENT_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2_dir_entry*, i32, i32, i8*, i8*)* @link_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_proc(%struct.ext2_dir_entry* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_dir_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.link_struct*, align 8
  %13 = alloca %struct.ext2_dir_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ext2_dir_entry_tail*, align 8
  store %struct.ext2_dir_entry* %0, %struct.ext2_dir_entry** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast i8* %20 to %struct.link_struct*
  store %struct.link_struct* %21, %struct.link_struct** %12, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %23 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @DIRENT_ABORT, align 4
  store i32 %27, i32* %6, align 4
  br label %336

28:                                               ; preds = %5
  %29 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %30 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @EXT2_DIR_REC_LEN(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %34 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %33, i32 0, i32 7
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %37 = call i8* @ext2fs_get_rec_len(%struct.TYPE_4__* %35, %struct.ext2_dir_entry* %36, i32* %16)
  %38 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %39 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %41 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %40, i32 0, i32 6
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @DIRENT_ABORT, align 4
  store i32 %45, i32* %6, align 4
  br label %336

46:                                               ; preds = %28
  %47 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %48 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %47, i32 0, i32 7
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ext2fs_has_feature_metadata_csum(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 4, i32* %18, align 4
  br label %55

55:                                               ; preds = %54, %46
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %16, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = bitcast i8* %62 to %struct.ext2_dir_entry*
  store %struct.ext2_dir_entry* %63, %struct.ext2_dir_entry** %13, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 8, %68
  %70 = sub nsw i32 %67, %69
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %55
  %73 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %13, align 8
  %74 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %13, align 8
  %82 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %80, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %77
  %88 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %13, align 8
  %89 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %16, align 4
  %93 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %94 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %93, i32 0, i32 7
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %98 = call i8* @ext2fs_set_rec_len(%struct.TYPE_4__* %95, i32 %96, %struct.ext2_dir_entry* %97)
  %99 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %100 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %102 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %101, i32 0, i32 6
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %87
  %106 = load i32, i32* @DIRENT_ABORT, align 4
  store i32 %106, i32* %6, align 4
  br label %336

107:                                              ; preds = %87
  %108 = load i32, i32* @DIRENT_CHANGED, align 4
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %107, %77, %72, %55
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %157

112:                                              ; preds = %109
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %115 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %114, i32 0, i32 7
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %113, %118
  br i1 %119, label %120, label %157

120:                                              ; preds = %112
  %121 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %122 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %157, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %16, align 4
  %128 = sub i32 %127, %126
  store i32 %128, i32* %16, align 4
  %129 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %130 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %129, i32 0, i32 7
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %134 = call i8* @ext2fs_set_rec_len(%struct.TYPE_4__* %131, i32 %132, %struct.ext2_dir_entry* %133)
  %135 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %136 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %135, i32 0, i32 6
  store i8* %134, i8** %136, align 8
  %137 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %138 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %137, i32 0, i32 6
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %125
  %142 = load i32, i32* @DIRENT_ABORT, align 4
  store i32 %142, i32* %6, align 4
  br label %336

143:                                              ; preds = %125
  %144 = load i8*, i8** %10, align 8
  %145 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %146 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %145, i32 0, i32 7
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call %struct.ext2_dir_entry_tail* @EXT2_DIRENT_TAIL(i8* %144, i32 %149)
  store %struct.ext2_dir_entry_tail* %150, %struct.ext2_dir_entry_tail** %19, align 8
  %151 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %152 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %151, i32 0, i32 7
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load %struct.ext2_dir_entry_tail*, %struct.ext2_dir_entry_tail** %19, align 8
  %155 = call i32 @ext2fs_initialize_dirent_tail(%struct.TYPE_4__* %153, %struct.ext2_dir_entry_tail* %154)
  %156 = load i32, i32* @DIRENT_CHANGED, align 4
  store i32 %156, i32* %17, align 4
  br label %157

157:                                              ; preds = %143, %120, %112, %109
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %222

160:                                              ; preds = %157
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %163 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %162, i32 0, i32 7
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @EXT2_DIR_REC_LEN(i32 1)
  %168 = sub i32 %166, %167
  %169 = icmp eq i32 %161, %168
  br i1 %169, label %170, label %222

170:                                              ; preds = %160
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @EXT2_DIR_REC_LEN(i32 1)
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %222

174:                                              ; preds = %170
  %175 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %176 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %175, i32 0, i32 2
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 46
  br i1 %181, label %182, label %222

182:                                              ; preds = %174
  %183 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %184 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 46
  br i1 %189, label %190, label %222

190:                                              ; preds = %182
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %16, align 4
  %193 = sub i32 %192, %191
  store i32 %193, i32* %16, align 4
  %194 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %195 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %194, i32 0, i32 7
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %199 = call i8* @ext2fs_set_rec_len(%struct.TYPE_4__* %196, i32 %197, %struct.ext2_dir_entry* %198)
  %200 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %201 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %200, i32 0, i32 6
  store i8* %199, i8** %201, align 8
  %202 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %203 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %202, i32 0, i32 6
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %190
  %207 = load i32, i32* @DIRENT_ABORT, align 4
  store i32 %207, i32* %6, align 4
  br label %336

208:                                              ; preds = %190
  %209 = load i8*, i8** %10, align 8
  %210 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %211 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %210, i32 0, i32 7
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call %struct.ext2_dir_entry_tail* @EXT2_DIRENT_TAIL(i8* %209, i32 %214)
  store %struct.ext2_dir_entry_tail* %215, %struct.ext2_dir_entry_tail** %19, align 8
  %216 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %217 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %216, i32 0, i32 7
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = load %struct.ext2_dir_entry_tail*, %struct.ext2_dir_entry_tail** %19, align 8
  %220 = call i32 @ext2fs_initialize_dirent_tail(%struct.TYPE_4__* %218, %struct.ext2_dir_entry_tail* %219)
  %221 = load i32, i32* @DIRENT_CHANGED, align 4
  store i32 %221, i32* %17, align 4
  br label %222

222:                                              ; preds = %208, %182, %174, %170, %160, %157
  %223 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %224 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %289

227:                                              ; preds = %222
  %228 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %229 = call i32 @ext2fs_dirent_name_len(%struct.ext2_dir_entry* %228)
  %230 = call i32 @EXT2_DIR_REC_LEN(i32 %229)
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %14, align 4
  %234 = add i32 %232, %233
  %235 = icmp ult i32 %231, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* %17, align 4
  store i32 %237, i32* %6, align 4
  br label %336

238:                                              ; preds = %227
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* %15, align 4
  %241 = sub i32 %239, %240
  store i32 %241, i32* %14, align 4
  %242 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %243 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %242, i32 0, i32 7
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %247 = call i8* @ext2fs_set_rec_len(%struct.TYPE_4__* %244, i32 %245, %struct.ext2_dir_entry* %246)
  %248 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %249 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %248, i32 0, i32 6
  store i8* %247, i8** %249, align 8
  %250 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %251 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %250, i32 0, i32 6
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %256

254:                                              ; preds = %238
  %255 = load i32, i32* @DIRENT_ABORT, align 4
  store i32 %255, i32* %6, align 4
  br label %336

256:                                              ; preds = %238
  %257 = load i8*, i8** %10, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %262 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %260, i64 %264
  %266 = bitcast i8* %265 to %struct.ext2_dir_entry*
  store %struct.ext2_dir_entry* %266, %struct.ext2_dir_entry** %13, align 8
  %267 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %13, align 8
  %268 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %267, i32 0, i32 0
  store i64 0, i64* %268, align 8
  %269 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %13, align 8
  %270 = call i32 @ext2fs_dirent_set_name_len(%struct.ext2_dir_entry* %269, i32 0)
  %271 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %13, align 8
  %272 = call i32 @ext2fs_dirent_set_file_type(%struct.ext2_dir_entry* %271, i32 0)
  %273 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %274 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %273, i32 0, i32 7
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = load i32, i32* %14, align 4
  %277 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %13, align 8
  %278 = call i8* @ext2fs_set_rec_len(%struct.TYPE_4__* %275, i32 %276, %struct.ext2_dir_entry* %277)
  %279 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %280 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %279, i32 0, i32 6
  store i8* %278, i8** %280, align 8
  %281 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %282 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %281, i32 0, i32 6
  %283 = load i8*, i8** %282, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %287

285:                                              ; preds = %256
  %286 = load i32, i32* @DIRENT_ABORT, align 4
  store i32 %286, i32* %6, align 4
  br label %336

287:                                              ; preds = %256
  %288 = load i32, i32* @DIRENT_CHANGED, align 4
  store i32 %288, i32* %6, align 4
  br label %336

289:                                              ; preds = %222
  %290 = load i32, i32* %16, align 4
  %291 = load i32, i32* %14, align 4
  %292 = icmp ult i32 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %289
  %294 = load i32, i32* %17, align 4
  store i32 %294, i32* %6, align 4
  br label %336

295:                                              ; preds = %289
  %296 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %297 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %300 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  %301 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %302 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %303 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @ext2fs_dirent_set_name_len(%struct.ext2_dir_entry* %301, i32 %304)
  %306 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %307 = getelementptr inbounds %struct.ext2_dir_entry, %struct.ext2_dir_entry* %306, i32 0, i32 2
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %310 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %313 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @strncpy(i8* %308, i32 %311, i32 %314)
  %316 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %317 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = call i64 @ext2fs_has_feature_filetype(i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %295
  %322 = load %struct.ext2_dir_entry*, %struct.ext2_dir_entry** %7, align 8
  %323 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %324 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = and i32 %325, 7
  %327 = call i32 @ext2fs_dirent_set_file_type(%struct.ext2_dir_entry* %322, i32 %326)
  br label %328

328:                                              ; preds = %321, %295
  %329 = load %struct.link_struct*, %struct.link_struct** %12, align 8
  %330 = getelementptr inbounds %struct.link_struct, %struct.link_struct* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* %330, align 8
  %333 = load i32, i32* @DIRENT_ABORT, align 4
  %334 = load i32, i32* @DIRENT_CHANGED, align 4
  %335 = or i32 %333, %334
  store i32 %335, i32* %6, align 4
  br label %336

336:                                              ; preds = %328, %293, %287, %285, %254, %236, %206, %141, %105, %44, %26
  %337 = load i32, i32* %6, align 4
  ret i32 %337
}

declare dso_local i32 @EXT2_DIR_REC_LEN(i32) #1

declare dso_local i8* @ext2fs_get_rec_len(%struct.TYPE_4__*, %struct.ext2_dir_entry*, i32*) #1

declare dso_local i64 @ext2fs_has_feature_metadata_csum(i32) #1

declare dso_local i8* @ext2fs_set_rec_len(%struct.TYPE_4__*, i32, %struct.ext2_dir_entry*) #1

declare dso_local %struct.ext2_dir_entry_tail* @EXT2_DIRENT_TAIL(i8*, i32) #1

declare dso_local i32 @ext2fs_initialize_dirent_tail(%struct.TYPE_4__*, %struct.ext2_dir_entry_tail*) #1

declare dso_local i32 @ext2fs_dirent_name_len(%struct.ext2_dir_entry*) #1

declare dso_local i32 @ext2fs_dirent_set_name_len(%struct.ext2_dir_entry*, i32) #1

declare dso_local i32 @ext2fs_dirent_set_file_type(%struct.ext2_dir_entry*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @ext2fs_has_feature_filetype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
