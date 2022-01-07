; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_remove_space.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_ext_remove_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext4_ext_path = type { i32, %struct.TYPE_4__*, %struct.buffer_head*, i8*, i64 }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.buffer_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_remove_space(i8* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i32 @ext_depth(%struct.inode* %18)
  store i32 %19, i32* %9, align 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = mul i64 40, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ext4_ext_path* @kmalloc(i32 %24, i32 %25)
  store %struct.ext4_ext_path* %26, %struct.ext4_ext_path** %10, align 8
  %27 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %28 = icmp eq %struct.ext4_ext_path* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @ext4_journal_stop(i8* %30, i32* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %300

35:                                               ; preds = %3
  %36 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 40, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(%struct.ext4_ext_path* %36, i32 0, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call %struct.TYPE_4__* @ext_inode_hdr(%struct.inode* %43)
  %45 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %46 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %45, i64 0
  %47 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %46, i32 0, i32 1
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %47, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i64 @ext4_ext_check_inode(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %287

54:                                               ; preds = %35
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %57 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %56, i64 0
  %58 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %254, %71, %54
  %60 = load i32, i32* %12, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i1 [ false, %59 ], [ %64, %62 ]
  br i1 %66, label %67, label %255

67:                                               ; preds = %65
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @ext4_ext_rm_leaf(i8* %72, i32* %73, %struct.inode* %74, %struct.ext4_ext_path* %75, i64 %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %78, i64 %80
  %82 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %81, i32 0, i32 2
  %83 = load %struct.buffer_head*, %struct.buffer_head** %82, align 8
  %84 = call i32 @extents_brelse(%struct.buffer_head* %83)
  %85 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %85, i64 %87
  %89 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %12, align 4
  br label %59

92:                                               ; preds = %67
  %93 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %93, i64 %95
  %97 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = icmp ne %struct.TYPE_4__* %98, null
  br i1 %99, label %113, label %100

100:                                              ; preds = %92
  %101 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %101, i64 %103
  %105 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %104, i32 0, i32 2
  %106 = load %struct.buffer_head*, %struct.buffer_head** %105, align 8
  %107 = call %struct.TYPE_4__* @ext_block_hdr(%struct.buffer_head* %106)
  %108 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %108, i64 %110
  %112 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %111, i32 0, i32 1
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %112, align 8
  br label %113

113:                                              ; preds = %100, %92
  %114 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %114, i64 %116
  %118 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %149, label %121

121:                                              ; preds = %113
  %122 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %122, i64 %124
  %126 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = call i64 @EXT_LAST_INDEX(%struct.TYPE_4__* %127)
  %129 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %129, i64 %131
  %133 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %132, i32 0, i32 4
  store i64 %128, i64* %133, align 8
  %134 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %134, i64 %136
  %138 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i8* @le16_to_cpu(i64 %141)
  %143 = getelementptr i8, i8* %142, i64 1
  %144 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %144, i64 %146
  %148 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %147, i32 0, i32 3
  store i8* %143, i8** %148, align 8
  br label %157

149:                                              ; preds = %113
  %150 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %150, i64 %152
  %154 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %155, -1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %149, %121
  %158 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %158, i64 %160
  %162 = call i64 @ext4_ext_more_to_rm(%struct.ext4_ext_path* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %217

164:                                              ; preds = %157
  %165 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %165, i64 %167
  %169 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %168, i64 1
  %170 = call i32 @memset(%struct.ext4_ext_path* %169, i32 0, i32 40)
  %171 = load %struct.inode*, %struct.inode** %6, align 8
  %172 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %172, i64 %174
  %176 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @ext4_idx_pblock(i64 %177)
  %179 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %180 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %179, i64 0
  %181 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  %185 = sub nsw i32 %182, %184
  %186 = call %struct.buffer_head* @read_extent_tree_block(%struct.inode* %171, i32 %178, i32 %185, i32 0)
  store %struct.buffer_head* %186, %struct.buffer_head** %14, align 8
  %187 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %188 = call i64 @IS_ERR(%struct.buffer_head* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %164
  %191 = load i32, i32* @EIO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %13, align 4
  br label %255

193:                                              ; preds = %164
  %194 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %195 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %195, i64 %198
  %200 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %199, i32 0, i32 2
  store %struct.buffer_head* %194, %struct.buffer_head** %200, align 8
  %201 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %202 = load i32, i32* %12, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %201, i64 %203
  %205 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i8* @le16_to_cpu(i64 %208)
  %210 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %210, i64 %212
  %214 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %213, i32 0, i32 3
  store i8* %209, i8** %214, align 8
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %254

217:                                              ; preds = %157
  %218 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %218, i64 %220
  %222 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %221, i32 0, i32 1
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %217
  %228 = load i32, i32* %12, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load i8*, i8** %5, align 8
  %232 = load i32*, i32** %11, align 8
  %233 = load %struct.inode*, %struct.inode** %6, align 8
  %234 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %234, i64 %236
  %238 = call i32 @ext4_ext_rm_idx(i8* %231, i32* %232, %struct.inode* %233, %struct.ext4_ext_path* %237)
  store i32 %238, i32* %13, align 4
  br label %239

239:                                              ; preds = %230, %227, %217
  %240 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %240, i64 %242
  %244 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %243, i32 0, i32 2
  %245 = load %struct.buffer_head*, %struct.buffer_head** %244, align 8
  %246 = call i32 @extents_brelse(%struct.buffer_head* %245)
  %247 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %247, i64 %249
  %251 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %250, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %251, align 8
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %12, align 4
  br label %254

254:                                              ; preds = %239, %193
  br label %59

255:                                              ; preds = %190, %65
  %256 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %257 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %256, i32 0, i32 1
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %286

262:                                              ; preds = %255
  %263 = load i8*, i8** %5, align 8
  %264 = load i32*, i32** %11, align 8
  %265 = load %struct.inode*, %struct.inode** %6, align 8
  %266 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %267 = call i32 @ext4_ext_get_access(i8* %263, i32* %264, %struct.inode* %265, %struct.ext4_ext_path* %266)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %13, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %262
  %271 = load %struct.inode*, %struct.inode** %6, align 8
  %272 = call %struct.TYPE_4__* @ext_inode_hdr(%struct.inode* %271)
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 2
  store i64 0, i64* %273, align 8
  %274 = load %struct.inode*, %struct.inode** %6, align 8
  %275 = call i32 @ext4_ext_space_root(%struct.inode* %274, i32 0)
  %276 = call i32 @cpu_to_le16(i32 %275)
  %277 = load %struct.inode*, %struct.inode** %6, align 8
  %278 = call %struct.TYPE_4__* @ext_inode_hdr(%struct.inode* %277)
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 1
  store i32 %276, i32* %279, align 8
  %280 = load i8*, i8** %5, align 8
  %281 = load i32*, i32** %11, align 8
  %282 = load %struct.inode*, %struct.inode** %6, align 8
  %283 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %284 = call i32 @ext4_ext_dirty(i8* %280, i32* %281, %struct.inode* %282, %struct.ext4_ext_path* %283)
  store i32 %284, i32* %13, align 4
  br label %285

285:                                              ; preds = %270, %262
  br label %286

286:                                              ; preds = %285, %255
  br label %287

287:                                              ; preds = %286, %51
  %288 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %289 = icmp ne %struct.ext4_ext_path* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %287
  %291 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %292 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %291)
  %293 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %294 = call i32 @kfree(%struct.ext4_ext_path* %293)
  br label %295

295:                                              ; preds = %290, %287
  %296 = load i8*, i8** %5, align 8
  %297 = load i32*, i32** %11, align 8
  %298 = call i32 @ext4_journal_stop(i8* %296, i32* %297)
  %299 = load i32, i32* %13, align 4
  store i32 %299, i32* %4, align 4
  br label %300

300:                                              ; preds = %295, %29
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local %struct.ext4_ext_path* @kmalloc(i32, i32) #1

declare dso_local i32 @ext4_journal_stop(i8*, i32*) #1

declare dso_local i32 @memset(%struct.ext4_ext_path*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @ext_inode_hdr(%struct.inode*) #1

declare dso_local i64 @ext4_ext_check_inode(%struct.inode*) #1

declare dso_local i32 @ext4_ext_rm_leaf(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*, i64) #1

declare dso_local i32 @extents_brelse(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_4__* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i64 @EXT_LAST_INDEX(%struct.TYPE_4__*) #1

declare dso_local i8* @le16_to_cpu(i64) #1

declare dso_local i64 @ext4_ext_more_to_rm(%struct.ext4_ext_path*) #1

declare dso_local %struct.buffer_head* @read_extent_tree_block(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext4_idx_pblock(i64) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_ext_rm_idx(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_get_access(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_ext_space_root(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_dirty(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
