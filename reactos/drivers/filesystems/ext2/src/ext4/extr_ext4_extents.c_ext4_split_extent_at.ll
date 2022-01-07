; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_split_extent_at.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/ext4/extr_ext4_extents.c_ext4_split_extent_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, %struct.ext4_extent* }
%struct.ext4_extent = type { i8*, i32 }

@EXT4_EXT_MARK_UNWRIT2 = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_PRE_IO = common dso_local global i32 0, align 4
@EXT4_EXT_MARK_UNWRIT1 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EXT4_EXT_MAY_ZEROOUT = common dso_local global i32 0, align 4
@EXT4_EXT_DATA_VALID1 = common dso_local global i32 0, align 4
@EXT4_EXT_DATA_VALID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.inode*, %struct.ext4_ext_path**, i64, i32, i32)* @ext4_split_extent_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_split_extent_at(i8* %0, i32* %1, %struct.inode* %2, %struct.ext4_ext_path** %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ext4_ext_path**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext4_ext_path*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ext4_extent*, align 8
  %20 = alloca %struct.ext4_extent, align 8
  %21 = alloca %struct.ext4_extent, align 8
  %22 = alloca %struct.ext4_extent, align 8
  %23 = alloca %struct.ext4_extent*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.inode* %2, %struct.inode** %11, align 8
  store %struct.ext4_ext_path** %3, %struct.ext4_ext_path*** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %27 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %12, align 8
  %28 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %27, align 8
  store %struct.ext4_ext_path* %28, %struct.ext4_ext_path** %16, align 8
  store %struct.ext4_extent* null, %struct.ext4_extent** %23, align 8
  store i32 0, i32* %26, align 4
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %31 = call i32 @ext4_ext_show_leaf(%struct.inode* %29, %struct.ext4_ext_path* %30)
  %32 = load %struct.inode*, %struct.inode** %11, align 8
  %33 = call i32 @ext_depth(%struct.inode* %32)
  store i32 %33, i32* %25, align 4
  %34 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %35 = load i32, i32* %25, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %34, i64 %36
  %38 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %37, i32 0, i32 1
  %39 = load %struct.ext4_extent*, %struct.ext4_extent** %38, align 8
  store %struct.ext4_extent* %39, %struct.ext4_extent** %19, align 8
  %40 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %41 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @le32_to_cpu(i32 %42)
  store i64 %43, i64* %18, align 8
  %44 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %45 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %44)
  store i32 %45, i32* %24, align 4
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %18, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %50 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %49)
  %51 = add nsw i64 %48, %50
  store i64 %51, i64* %17, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %18, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %7
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %18, align 8
  %58 = load i32, i32* %24, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = icmp sge i64 %56, %60
  br label %62

62:                                               ; preds = %55, %7
  %63 = phi i1 [ true, %7 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load i8*, i8** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %70 = load i32, i32* %25, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %69, i64 %71
  %73 = call i32 @ext4_ext_get_access(i8* %66, i32* %67, %struct.inode* %68, %struct.ext4_ext_path* %72)
  store i32 %73, i32* %26, align 4
  %74 = load i32, i32* %26, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %274

77:                                               ; preds = %62
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %18, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %115

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %88 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %87)
  br label %92

89:                                               ; preds = %81
  %90 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %91 = call i32 @ext4_ext_mark_initialized(%struct.ext4_extent* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @EXT4_GET_BLOCKS_PRE_IO, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %9, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load %struct.inode*, %struct.inode** %11, align 8
  %101 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %102 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %103 = call i32 @ext4_ext_try_to_merge(i8* %98, i32* %99, %struct.inode* %100, %struct.ext4_ext_path* %101, %struct.ext4_extent* %102)
  br label %104

104:                                              ; preds = %97, %92
  %105 = load i8*, i8** %9, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.inode*, %struct.inode** %11, align 8
  %108 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %109 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %110 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %108, i64 %112
  %114 = call i32 @ext4_ext_dirty(i8* %105, i32* %106, %struct.inode* %107, %struct.ext4_ext_path* %113)
  store i32 %114, i32* %26, align 4
  br label %274

115:                                              ; preds = %77
  %116 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %117 = call i32 @memcpy(%struct.ext4_extent* %21, %struct.ext4_extent* %116, i32 16)
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %18, align 8
  %120 = sub nsw i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = call i8* @cpu_to_le16(i32 %121)
  %123 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %124 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @EXT4_EXT_MARK_UNWRIT1, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %115
  %130 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %131 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %130)
  br label %132

132:                                              ; preds = %129, %115
  %133 = load i8*, i8** %9, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load %struct.inode*, %struct.inode** %11, align 8
  %136 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %137 = load i32, i32* %25, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %136, i64 %138
  %140 = call i32 @ext4_ext_dirty(i8* %133, i32* %134, %struct.inode* %135, %struct.ext4_ext_path* %139)
  store i32 %140, i32* %26, align 4
  %141 = load i32, i32* %26, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %279

144:                                              ; preds = %132
  store %struct.ext4_extent* %20, %struct.ext4_extent** %23, align 8
  %145 = load i64, i64* %13, align 8
  %146 = call i32 @cpu_to_le32(i64 %145)
  %147 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %148 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %24, align 4
  %150 = zext i32 %149 to i64
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* %18, align 8
  %153 = sub nsw i64 %151, %152
  %154 = sub nsw i64 %150, %153
  %155 = trunc i64 %154 to i32
  %156 = call i8* @cpu_to_le16(i32 %155)
  %157 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %158 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %160 = load i64, i64* %17, align 8
  %161 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %159, i64 %160)
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @EXT4_EXT_MARK_UNWRIT2, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %144
  %167 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %168 = call i32 @ext4_ext_mark_unwritten(%struct.ext4_extent* %167)
  br label %169

169:                                              ; preds = %166, %144
  %170 = load i8*, i8** %9, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load %struct.inode*, %struct.inode** %11, align 8
  %173 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %12, align 8
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @ext4_ext_insert_extent(i8* %170, i32* %171, %struct.inode* %172, %struct.ext4_ext_path** %173, %struct.ext4_extent* %20, i32 %174)
  store i32 %175, i32* %26, align 4
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* @ENOSPC, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %268

180:                                              ; preds = %169
  %181 = load i32, i32* @EXT4_EXT_MAY_ZEROOUT, align 4
  %182 = load i32, i32* %14, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %268

185:                                              ; preds = %180
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @EXT4_EXT_DATA_VALID1, align 4
  %188 = load i32, i32* @EXT4_EXT_DATA_VALID2, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %186, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %228

192:                                              ; preds = %185
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @EXT4_EXT_DATA_VALID1, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = load %struct.inode*, %struct.inode** %11, align 8
  %199 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %200 = call i32 @ext4_ext_zeroout(%struct.inode* %198, %struct.ext4_extent* %199)
  store i32 %200, i32* %26, align 4
  %201 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %202 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %22, i32 0, i32 1
  store i32 %203, i32* %204, align 8
  %205 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %206 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %205)
  %207 = call i8* @cpu_to_le16(i32 %206)
  %208 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %22, i32 0, i32 0
  store i8* %207, i8** %208, align 8
  %209 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  %210 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %209)
  %211 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %22, i64 %210)
  br label %227

212:                                              ; preds = %192
  %213 = load %struct.inode*, %struct.inode** %11, align 8
  %214 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %215 = call i32 @ext4_ext_zeroout(%struct.inode* %213, %struct.ext4_extent* %214)
  store i32 %215, i32* %26, align 4
  %216 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %217 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %22, i32 0, i32 1
  store i32 %218, i32* %219, align 8
  %220 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %221 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %220)
  %222 = call i8* @cpu_to_le16(i32 %221)
  %223 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %22, i32 0, i32 0
  store i8* %222, i8** %223, align 8
  %224 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %225 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %224)
  %226 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %22, i64 %225)
  br label %227

227:                                              ; preds = %212, %197
  br label %239

228:                                              ; preds = %185
  %229 = load %struct.inode*, %struct.inode** %11, align 8
  %230 = call i32 @ext4_ext_zeroout(%struct.inode* %229, %struct.ext4_extent* %21)
  store i32 %230, i32* %26, align 4
  %231 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %21, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %22, i32 0, i32 1
  store i32 %232, i32* %233, align 8
  %234 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %21)
  %235 = call i8* @cpu_to_le16(i32 %234)
  %236 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %22, i32 0, i32 0
  store i8* %235, i8** %236, align 8
  %237 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %21)
  %238 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %22, i64 %237)
  br label %239

239:                                              ; preds = %228, %227
  %240 = load i32, i32* %26, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  br label %279

243:                                              ; preds = %239
  %244 = load i32, i32* %24, align 4
  %245 = call i8* @cpu_to_le16(i32 %244)
  %246 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %247 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %246, i32 0, i32 0
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** %9, align 8
  %249 = load i32*, i32** %10, align 8
  %250 = load %struct.inode*, %struct.inode** %11, align 8
  %251 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %252 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %253 = call i32 @ext4_ext_try_to_merge(i8* %248, i32* %249, %struct.inode* %250, %struct.ext4_ext_path* %251, %struct.ext4_extent* %252)
  %254 = load i8*, i8** %9, align 8
  %255 = load i32*, i32** %10, align 8
  %256 = load %struct.inode*, %struct.inode** %11, align 8
  %257 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %258 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %259 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %257, i64 %261
  %263 = call i32 @ext4_ext_dirty(i8* %254, i32* %255, %struct.inode* %256, %struct.ext4_ext_path* %262)
  store i32 %263, i32* %26, align 4
  %264 = load i32, i32* %26, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %243
  br label %279

267:                                              ; preds = %243
  br label %274

268:                                              ; preds = %180, %169
  %269 = load i32, i32* %26, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  br label %279

272:                                              ; preds = %268
  br label %273

273:                                              ; preds = %272
  br label %274

274:                                              ; preds = %273, %267, %104, %76
  %275 = load %struct.inode*, %struct.inode** %11, align 8
  %276 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %277 = call i32 @ext4_ext_show_leaf(%struct.inode* %275, %struct.ext4_ext_path* %276)
  %278 = load i32, i32* %26, align 4
  store i32 %278, i32* %8, align 4
  br label %295

279:                                              ; preds = %271, %266, %242, %143
  %280 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %21, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.ext4_extent*, %struct.ext4_extent** %19, align 8
  %283 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %282, i32 0, i32 0
  store i8* %281, i8** %283, align 8
  %284 = load i8*, i8** %9, align 8
  %285 = load i32*, i32** %10, align 8
  %286 = load %struct.inode*, %struct.inode** %11, align 8
  %287 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %288 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %16, align 8
  %289 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %287, i64 %291
  %293 = call i32 @ext4_ext_dirty(i8* %284, i32* %285, %struct.inode* %286, %struct.ext4_ext_path* %292)
  %294 = load i32, i32* %26, align 4
  store i32 %294, i32* %8, align 4
  br label %295

295:                                              ; preds = %279, %274
  %296 = load i32, i32* %8, align 4
  ret i32 %296
}

declare dso_local i32 @ext4_ext_show_leaf(%struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_ext_get_access(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_mark_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_mark_initialized(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_try_to_merge(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_dirty(i8*, i32*, %struct.inode*, %struct.ext4_ext_path*) #1

declare dso_local i32 @memcpy(%struct.ext4_extent*, %struct.ext4_extent*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i64) #1

declare dso_local i32 @ext4_ext_insert_extent(i8*, i32*, %struct.inode*, %struct.ext4_ext_path**, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_zeroout(%struct.inode*, %struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
