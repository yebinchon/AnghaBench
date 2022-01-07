; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_read_xattrs_from_buffer.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_ext_attr.c_read_xattrs_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_xattr_handle = type { i64, i64, i64, %struct.TYPE_4__*, %struct.ext2_xattr* }
%struct.TYPE_4__ = type { i32 }
%struct.ext2_xattr = type { i64, i32, i64, i64 }
%struct.ext2_inode_large = type { i64 }
%struct.ext2_ext_attr_entry = type { i32, i64, i32, i32, i64, i32 }
%struct.ext2_inode = type { i32, i64, i64, i64 }

@EXT2_ET_EA_BAD_NAME_LEN = common dso_local global i64 0, align 8
@EXT2_ET_BAD_EA_BLOCK_NUM = common dso_local global i64 0, align 8
@EXT2_ET_EA_BAD_VALUE_SIZE = common dso_local global i64 0, align 8
@EXT2_ET_EA_BAD_VALUE_OFFSET = common dso_local global i64 0, align 8
@EXT4_INLINE_DATA_FL = common dso_local global i32 0, align 4
@EXT4_EA_INODE_FL = common dso_local global i32 0, align 4
@EXT2_ET_EA_INODE_CORRUPTED = common dso_local global i64 0, align 8
@EXT2_ET_BAD_EA_HASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ext2_xattr_handle*, %struct.ext2_inode_large*, %struct.ext2_ext_attr_entry*, i32, i8*)* @read_xattrs_from_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_xattrs_from_buffer(%struct.ext2_xattr_handle* %0, %struct.ext2_inode_large* %1, %struct.ext2_ext_attr_entry* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext2_xattr_handle*, align 8
  %8 = alloca %struct.ext2_inode_large*, align 8
  %9 = alloca %struct.ext2_ext_attr_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ext2_xattr*, align 8
  %13 = alloca %struct.ext2_ext_attr_entry*, align 8
  %14 = alloca %struct.ext2_ext_attr_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ext2_inode*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.ext2_inode, align 8
  store %struct.ext2_xattr_handle* %0, %struct.ext2_xattr_handle** %7, align 8
  store %struct.ext2_inode_large* %1, %struct.ext2_inode_large** %8, align 8
  store %struct.ext2_ext_attr_entry* %2, %struct.ext2_ext_attr_entry** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %25 = load i32, i32* %10, align 4
  %26 = zext i32 %25 to i64
  %27 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %9, align 8
  %28 = bitcast %struct.ext2_ext_attr_entry* %27 to i8*
  %29 = load i8*, i8** %11, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = add nsw i64 %26, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %19, align 4
  %35 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %9, align 8
  store %struct.ext2_ext_attr_entry* %35, %struct.ext2_ext_attr_entry** %14, align 8
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %16, align 4
  br label %37

37:                                               ; preds = %61, %5
  %38 = load i32, i32* %16, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp uge i64 %39, 40
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %14, align 8
  %43 = call i32 @EXT2_EXT_IS_LAST_ENTRY(%struct.ext2_ext_attr_entry* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i1 [ false, %37 ], [ %45, %41 ]
  br i1 %47, label %48, label %70

48:                                               ; preds = %46
  %49 = load i32, i32* %16, align 4
  %50 = zext i32 %49 to i64
  %51 = sub i64 %50, 40
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %16, align 4
  %53 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %14, align 8
  %54 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @EXT2_EXT_ATTR_SIZE(i32 %55)
  %57 = load i32, i32* %16, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i64, i64* @EXT2_ET_EA_BAD_NAME_LEN, align 8
  store i64 %60, i64* %6, align 8
  br label %431

61:                                               ; preds = %48
  %62 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %14, align 8
  %63 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @EXT2_EXT_ATTR_SIZE(i32 %64)
  %66 = load i32, i32* %16, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %16, align 4
  %68 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %14, align 8
  %69 = call %struct.ext2_ext_attr_entry* @EXT2_EXT_ATTR_NEXT(%struct.ext2_ext_attr_entry* %68)
  store %struct.ext2_ext_attr_entry* %69, %struct.ext2_ext_attr_entry** %14, align 8
  br label %37

70:                                               ; preds = %46
  %71 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %9, align 8
  store %struct.ext2_ext_attr_entry* %71, %struct.ext2_ext_attr_entry** %13, align 8
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %423, %70
  %74 = load i32, i32* %16, align 4
  %75 = zext i32 %74 to i64
  %76 = icmp uge i64 %75, 40
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %79 = call i32 @EXT2_EXT_IS_LAST_ENTRY(%struct.ext2_ext_attr_entry* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %77, %73
  %83 = phi i1 [ false, %73 ], [ %81, %77 ]
  br i1 %83, label %84, label %430

84:                                               ; preds = %82
  %85 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %86 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %89 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %94 = call i64 @ext2fs_xattrs_expand(%struct.ext2_xattr_handle* %93, i32 4)
  store i64 %94, i64* %18, align 8
  %95 = load i64, i64* %18, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i64, i64* %18, align 8
  store i64 %98, i64* %6, align 8
  br label %431

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %84
  %101 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %102 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %101, i32 0, i32 4
  %103 = load %struct.ext2_xattr*, %struct.ext2_xattr** %102, align 8
  %104 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %105 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %103, i64 %106
  store %struct.ext2_xattr* %107, %struct.ext2_xattr** %12, align 8
  %108 = load i32, i32* %16, align 4
  %109 = zext i32 %108 to i64
  %110 = sub i64 %109, 40
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %16, align 4
  %112 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %113 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @EXT2_EXT_ATTR_SIZE(i32 %114)
  %116 = load i32, i32* %16, align 4
  %117 = sub i32 %116, %115
  store i32 %117, i32* %16, align 4
  %118 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %119 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @find_ea_prefix(i32 %120)
  store i8* %121, i8** %15, align 8
  %122 = load i8*, i8** %15, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %100
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @strlen(i8* %125)
  br label %128

127:                                              ; preds = %100
  br label %128

128:                                              ; preds = %127, %124
  %129 = phi i32 [ %126, %124 ], [ 0, %127 ]
  store i32 %129, i32* %17, align 4
  %130 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %131 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %17, align 4
  %134 = add i32 %132, %133
  %135 = add i32 %134, 1
  %136 = load %struct.ext2_xattr*, %struct.ext2_xattr** %12, align 8
  %137 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %136, i32 0, i32 3
  %138 = call i64 @ext2fs_get_memzero(i32 %135, i64* %137)
  store i64 %138, i64* %18, align 8
  %139 = load i64, i64* %18, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i64, i64* %18, align 8
  store i64 %142, i64* %6, align 8
  br label %431

143:                                              ; preds = %128
  %144 = load i8*, i8** %15, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.ext2_xattr*, %struct.ext2_xattr** %12, align 8
  %148 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i8*, i8** %15, align 8
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @memcpy(i64 %149, i8* %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %143
  %154 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %155 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load %struct.ext2_xattr*, %struct.ext2_xattr** %12, align 8
  %160 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %17, align 4
  %163 = zext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %166 = bitcast %struct.ext2_ext_attr_entry* %165 to i8*
  %167 = getelementptr inbounds i8, i8* %166, i64 40
  %168 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %169 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @memcpy(i64 %164, i8* %167, i32 %170)
  br label %172

172:                                              ; preds = %158, %153
  %173 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %174 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %173, i32 0, i32 3
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ext2fs_has_feature_ea_inode(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %172
  %181 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %182 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i64, i64* @EXT2_ET_BAD_EA_BLOCK_NUM, align 8
  store i64 %186, i64* %6, align 8
  br label %431

187:                                              ; preds = %180, %172
  %188 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %189 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %260

192:                                              ; preds = %187
  %193 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %194 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %16, align 4
  %197 = icmp ugt i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load i64, i64* @EXT2_ET_EA_BAD_VALUE_SIZE, align 8
  store i64 %199, i64* %6, align 8
  br label %431

200:                                              ; preds = %192
  %201 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %202 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %205 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = add i32 %203, %206
  %208 = load i32, i32* %19, align 4
  %209 = icmp ugt i32 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %200
  %211 = load i64, i64* @EXT2_ET_EA_BAD_VALUE_OFFSET, align 8
  store i64 %211, i64* %6, align 8
  br label %431

212:                                              ; preds = %200
  %213 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %214 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ugt i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %212
  %218 = load i8*, i8** %11, align 8
  %219 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %220 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %218, i64 %222
  %224 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %14, align 8
  %225 = bitcast %struct.ext2_ext_attr_entry* %224 to i8*
  %226 = getelementptr inbounds i8, i8* %225, i64 8
  %227 = icmp ult i8* %223, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = load i64, i64* @EXT2_ET_EA_BAD_VALUE_OFFSET, align 8
  store i64 %229, i64* %6, align 8
  br label %431

230:                                              ; preds = %217, %212
  %231 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %232 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %16, align 4
  %235 = sub i32 %234, %233
  store i32 %235, i32* %16, align 4
  %236 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %237 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ext2_xattr*, %struct.ext2_xattr** %12, align 8
  %240 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %239, i32 0, i32 2
  %241 = call i64 @ext2fs_get_mem(i32 %238, i64* %240)
  store i64 %241, i64* %18, align 8
  %242 = load i64, i64* %18, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %230
  %245 = load i64, i64* %18, align 8
  store i64 %245, i64* %6, align 8
  br label %431

246:                                              ; preds = %230
  %247 = load %struct.ext2_xattr*, %struct.ext2_xattr** %12, align 8
  %248 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %252 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %250, i64 %254
  %256 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %257 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @memcpy(i64 %249, i8* %255, i32 %258)
  br label %347

260:                                              ; preds = %187
  %261 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %262 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = load i64, i64* @EXT2_ET_EA_BAD_VALUE_OFFSET, align 8
  store i64 %266, i64* %6, align 8
  br label %431

267:                                              ; preds = %260
  %268 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %269 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = icmp ugt i32 %270, 65536
  br i1 %271, label %272, label %274

272:                                              ; preds = %267
  %273 = load i64, i64* @EXT2_ET_EA_BAD_VALUE_SIZE, align 8
  store i64 %273, i64* %6, align 8
  br label %431

274:                                              ; preds = %267
  %275 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %276 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.ext2_xattr*, %struct.ext2_xattr** %12, align 8
  %279 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %278, i32 0, i32 2
  %280 = call i64 @ext2fs_get_mem(i32 %277, i64* %279)
  store i64 %280, i64* %18, align 8
  %281 = load i64, i64* %18, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %274
  %284 = load i64, i64* %18, align 8
  store i64 %284, i64* %6, align 8
  br label %431

285:                                              ; preds = %274
  %286 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %287 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %286, i32 0, i32 3
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %290 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = call i64 @ext2fs_file_open(%struct.TYPE_4__* %288, i64 %291, i32 0, i32* %21)
  store i64 %292, i64* %18, align 8
  %293 = load i64, i64* %18, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %285
  %296 = load i64, i64* %18, align 8
  store i64 %296, i64* %6, align 8
  br label %431

297:                                              ; preds = %285
  %298 = load i32, i32* %21, align 4
  %299 = call %struct.ext2_inode* @ext2fs_file_get_inode(i32 %298)
  store %struct.ext2_inode* %299, %struct.ext2_inode** %20, align 8
  %300 = load %struct.ext2_inode*, %struct.ext2_inode** %20, align 8
  %301 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @EXT4_INLINE_DATA_FL, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %318, label %306

306:                                              ; preds = %297
  %307 = load %struct.ext2_inode*, %struct.ext2_inode** %20, align 8
  %308 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @EXT4_EA_INODE_FL, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %306
  %314 = load %struct.ext2_inode*, %struct.ext2_inode** %20, align 8
  %315 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %313, %306, %297
  %319 = load i64, i64* @EXT2_ET_EA_INODE_CORRUPTED, align 8
  store i64 %319, i64* %18, align 8
  br label %339

320:                                              ; preds = %313
  %321 = load i32, i32* %21, align 4
  %322 = call i32 @ext2fs_file_get_size(i32 %321)
  %323 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %324 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %322, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %320
  %328 = load i64, i64* @EXT2_ET_EA_BAD_VALUE_SIZE, align 8
  store i64 %328, i64* %18, align 8
  br label %338

329:                                              ; preds = %320
  %330 = load i32, i32* %21, align 4
  %331 = load %struct.ext2_xattr*, %struct.ext2_xattr** %12, align 8
  %332 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %335 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = call i64 @ext2fs_file_read(i32 %330, i64 %333, i32 %336, i32 0)
  store i64 %337, i64* %18, align 8
  br label %338

338:                                              ; preds = %329, %327
  br label %339

339:                                              ; preds = %338, %318
  %340 = load i32, i32* %21, align 4
  %341 = call i32 @ext2fs_file_close(i32 %340)
  %342 = load i64, i64* %18, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %339
  %345 = load i64, i64* %18, align 8
  store i64 %345, i64* %6, align 8
  br label %431

346:                                              ; preds = %339
  br label %347

347:                                              ; preds = %346, %246
  %348 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %349 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.ext2_xattr*, %struct.ext2_xattr** %12, align 8
  %352 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %351, i32 0, i32 0
  store i64 %350, i64* %352, align 8
  %353 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %354 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.ext2_xattr*, %struct.ext2_xattr** %12, align 8
  %357 = getelementptr inbounds %struct.ext2_xattr, %struct.ext2_xattr* %356, i32 0, i32 1
  store i32 %355, i32* %357, align 8
  %358 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %359 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %358, i32 0, i32 4
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %423

362:                                              ; preds = %347
  %363 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %364 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %362
  br label %375

368:                                              ; preds = %362
  %369 = load i8*, i8** %11, align 8
  %370 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %371 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %369, i64 %373
  br label %375

375:                                              ; preds = %368, %367
  %376 = phi i8* [ null, %367 ], [ %374, %368 ]
  store i8* %376, i8** %23, align 8
  %377 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %378 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %377, i32 0, i32 3
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %378, align 8
  %380 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %381 = load i8*, i8** %23, align 8
  %382 = call i64 @ext2fs_ext_attr_hash_entry2(%struct.TYPE_4__* %379, %struct.ext2_ext_attr_entry* %380, i8* %381, i64* %22)
  store i64 %382, i64* %18, align 8
  %383 = load i64, i64* %18, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %375
  %386 = load i64, i64* %18, align 8
  store i64 %386, i64* %6, align 8
  br label %431

387:                                              ; preds = %375
  %388 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %389 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %388, i32 0, i32 4
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* %22, align 8
  %392 = icmp ne i64 %390, %391
  br i1 %392, label %393, label %422

393:                                              ; preds = %387
  %394 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %395 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %394, i32 0, i32 3
  %396 = load %struct.TYPE_4__*, %struct.TYPE_4__** %395, align 8
  %397 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %398 = getelementptr inbounds %struct.ext2_ext_attr_entry, %struct.ext2_ext_attr_entry* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = call i64 @ext2fs_read_inode(%struct.TYPE_4__* %396, i64 %399, %struct.ext2_inode* %24)
  store i64 %400, i64* %18, align 8
  %401 = load i64, i64* %18, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %393
  %404 = load i64, i64* %18, align 8
  store i64 %404, i64* %6, align 8
  br label %431

405:                                              ; preds = %393
  %406 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %24, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %409 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %407, %410
  br i1 %411, label %419, label %412

412:                                              ; preds = %405
  %413 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %24, i32 0, i32 3
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.ext2_inode_large*, %struct.ext2_inode_large** %8, align 8
  %416 = getelementptr inbounds %struct.ext2_inode_large, %struct.ext2_inode_large* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %414, %417
  br i1 %418, label %419, label %421

419:                                              ; preds = %412, %405
  %420 = load i64, i64* @EXT2_ET_BAD_EA_HASH, align 8
  store i64 %420, i64* %6, align 8
  br label %431

421:                                              ; preds = %412
  br label %422

422:                                              ; preds = %421, %387
  br label %423

423:                                              ; preds = %422, %347
  %424 = load %struct.ext2_xattr_handle*, %struct.ext2_xattr_handle** %7, align 8
  %425 = getelementptr inbounds %struct.ext2_xattr_handle, %struct.ext2_xattr_handle* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = add nsw i64 %426, 1
  store i64 %427, i64* %425, align 8
  %428 = load %struct.ext2_ext_attr_entry*, %struct.ext2_ext_attr_entry** %13, align 8
  %429 = call %struct.ext2_ext_attr_entry* @EXT2_EXT_ATTR_NEXT(%struct.ext2_ext_attr_entry* %428)
  store %struct.ext2_ext_attr_entry* %429, %struct.ext2_ext_attr_entry** %13, align 8
  br label %73

430:                                              ; preds = %82
  store i64 0, i64* %6, align 8
  br label %431

431:                                              ; preds = %430, %419, %403, %385, %344, %295, %283, %272, %265, %244, %228, %210, %198, %185, %141, %97, %59
  %432 = load i64, i64* %6, align 8
  ret i64 %432
}

declare dso_local i32 @EXT2_EXT_IS_LAST_ENTRY(%struct.ext2_ext_attr_entry*) #1

declare dso_local i32 @EXT2_EXT_ATTR_SIZE(i32) #1

declare dso_local %struct.ext2_ext_attr_entry* @EXT2_EXT_ATTR_NEXT(%struct.ext2_ext_attr_entry*) #1

declare dso_local i64 @ext2fs_xattrs_expand(%struct.ext2_xattr_handle*, i32) #1

declare dso_local i8* @find_ea_prefix(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ext2fs_get_memzero(i32, i64*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @ext2fs_has_feature_ea_inode(i32) #1

declare dso_local i64 @ext2fs_get_mem(i32, i64*) #1

declare dso_local i64 @ext2fs_file_open(%struct.TYPE_4__*, i64, i32, i32*) #1

declare dso_local %struct.ext2_inode* @ext2fs_file_get_inode(i32) #1

declare dso_local i32 @ext2fs_file_get_size(i32) #1

declare dso_local i64 @ext2fs_file_read(i32, i64, i32, i32) #1

declare dso_local i32 @ext2fs_file_close(i32) #1

declare dso_local i64 @ext2fs_ext_attr_hash_entry2(%struct.TYPE_4__*, %struct.ext2_ext_attr_entry*, i8*, i64*) #1

declare dso_local i64 @ext2fs_read_inode(%struct.TYPE_4__*, i64, %struct.ext2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
