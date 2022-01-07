; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_set_list.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_set_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zfs_prop_set_list.zc = private unnamed_addr constant %struct.TYPE_18__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 0, i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot set property for '%s'\00", align 1
@ZFS_PROP_ZONED = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@ZFS_PROP_VOLSIZE = common dso_local global i64 0, align 8
@ZFS_PROP_CANMOUNT = common dso_local global i64 0, align 8
@ZFS_CANMOUNT_OFF = common dso_local global i64 0, align 8
@ZFS_PROP_MOUNTPOINT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"child dataset with inherited mountpoint is used in a non-global zone\00", align 1
@EZFS_ZONED = common dso_local global i32 0, align 4
@ZFS_IOC_SET_PROP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@MNTOPT_REMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_set_list(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = bitcast %struct.TYPE_18__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_18__* @__const.zfs_prop_set_list.zc to i8*), i64 24, i1 false)
  store i32 -1, i32* %6, align 4
  store i32** null, i32*** %7, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %25 = load i32, i32* @TEXT_DOMAIN, align 4
  %26 = call i8* @dgettext(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @snprintf(i8* %24, i32 1024, i8* %26, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = load i64, i64* @ZFS_PROP_ZONED, align 8
  %38 = call i32 @zfs_prop_get_int(%struct.TYPE_17__* %36, i64 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* @B_FALSE, align 8
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %45 = call i32* @zfs_valid_proplist(i32* %31, i32 %34, i32* %35, i32 %38, %struct.TYPE_17__* %39, i32 %42, i64 %43, i8* %44)
  store i32* %45, i32** %11, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  br label %334

48:                                               ; preds = %2
  %49 = load i32*, i32** %11, align 8
  %50 = call i32* @nvlist_next_nvpair(i32* %49, i32* null)
  store i32* %50, i32** %15, align 8
  br label %51

51:                                               ; preds = %67, %48
  %52 = load i32*, i32** %15, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @nvpair_name(i32* %55)
  %57 = call i64 @zfs_name_to_prop(i32 %56)
  %58 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @zfs_add_synthetic_resv(%struct.TYPE_17__* %61, i32* %62)
  store i32 %63, i32* %13, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %334

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = call i32* @nvlist_next_nvpair(i32* %68, i32* %69)
  store i32* %70, i32** %15, align 8
  br label %51

71:                                               ; preds = %51
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @zfs_fix_auto_resv(%struct.TYPE_17__* %75, i32* %76)
  store i32 %77, i32* %13, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %334

80:                                               ; preds = %74, %71
  %81 = load i32*, i32** %11, align 8
  %82 = call i32* @nvlist_next_nvpair(i32* %81, i32* null)
  store i32* %82, i32** %15, align 8
  br label %83

83:                                               ; preds = %89, %80
  %84 = load i32*, i32** %15, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = call i32* @nvlist_next_nvpair(i32* %90, i32* %91)
  store i32* %92, i32** %15, align 8
  br label %83

93:                                               ; preds = %83
  %94 = load i32, i32* %12, align 4
  %95 = call i32** @calloc(i32 %94, i32 8)
  store i32** %95, i32*** %7, align 8
  %96 = icmp eq i32** %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %334

98:                                               ; preds = %93
  store i32 0, i32* %8, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = call i32* @nvlist_next_nvpair(i32* %99, i32* null)
  store i32* %100, i32** %15, align 8
  br label %101

101:                                              ; preds = %181, %98
  %102 = load i32*, i32** %15, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %185

104:                                              ; preds = %101
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @nvpair_name(i32* %105)
  %107 = call i64 @zfs_name_to_prop(i32 %106)
  store i64 %107, i64* %14, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* @ZFS_PROP_CANMOUNT, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %125, label %116

116:                                              ; preds = %104
  %117 = load i32*, i32** %15, align 8
  %118 = call i64 @fnvpair_value_uint64(i32* %117)
  %119 = load i64, i64* @ZFS_CANMOUNT_OFF, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %116
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %123 = call i64 @zfs_is_mounted(%struct.TYPE_17__* %122, i32* null)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %121, %104
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %127 = load i64, i64* %14, align 8
  %128 = call i32* @changelist_gather(%struct.TYPE_17__* %126, i64 %127, i32 0, i32 0)
  %129 = load i32**, i32*** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* %128, i32** %132, align 8
  %133 = load i32**, i32*** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  br label %334

140:                                              ; preds = %125
  br label %141

141:                                              ; preds = %140, %121, %116
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* @ZFS_PROP_MOUNTPOINT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %141
  %146 = load i32**, i32*** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i64 @changelist_haszonedchild(i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %145
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* @TEXT_DOMAIN, align 4
  %156 = call i8* @dgettext(i32 %155, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %157 = call i32 @zfs_error_aux(i32* %154, i8* %156)
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* @EZFS_ZONED, align 4
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %161 = call i32 @zfs_error(i32* %158, i32 %159, i8* %160)
  store i32 %161, i32* %6, align 4
  br label %334

162:                                              ; preds = %145, %141
  %163 = load i32**, i32*** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %162
  %170 = load i32**, i32*** %7, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @changelist_prefix(i32* %174)
  store i32 %175, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  br label %334

178:                                              ; preds = %169, %162
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %178
  %182 = load i32*, i32** %11, align 8
  %183 = load i32*, i32** %15, align 8
  %184 = call i32* @nvlist_next_nvpair(i32* %182, i32* %183)
  store i32* %184, i32** %15, align 8
  br label %101

185:                                              ; preds = %101
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @strlcpy(i32 %192, i32 %195, i32 4)
  %197 = load i32*, i32** %10, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = call i64 @zcmd_write_src_nvlist(i32* %197, %struct.TYPE_18__* %5, i32* %198)
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %185
  %203 = load i32*, i32** %10, align 8
  %204 = call i32 @zcmd_alloc_dst_nvlist(i32* %203, %struct.TYPE_18__* %5, i32 0)
  store i32 %204, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %202, %185
  br label %334

207:                                              ; preds = %202
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* @ZFS_IOC_SET_PROP, align 4
  %210 = call i32 @zfs_ioctl(i32* %208, i32 %209, %struct.TYPE_18__* %5)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %286

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @B_FALSE, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load i32*, i32** %10, align 8
  %220 = load i64, i64* @errno, align 8
  %221 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %222 = call i32 @zfs_standard_error(i32* %219, i64 %220, i8* %221)
  br label %334

223:                                              ; preds = %213
  store i32* null, i32** %16, align 8
  %224 = load i32*, i32** %10, align 8
  %225 = call i64 @zcmd_read_dst_nvlist(i32* %224, %struct.TYPE_18__* %5, i32** %16)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  br label %334

228:                                              ; preds = %223
  %229 = load i32*, i32** %16, align 8
  %230 = call i32* @nvlist_next_nvpair(i32* %229, i32* null)
  store i32* %230, i32** %17, align 8
  br label %231

231:                                              ; preds = %243, %228
  %232 = load i32*, i32** %17, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %247

234:                                              ; preds = %231
  %235 = load i32*, i32** %17, align 8
  %236 = call i32 @nvpair_name(i32* %235)
  %237 = call i64 @zfs_name_to_prop(i32 %236)
  store i64 %237, i64* %14, align 8
  %238 = load i32*, i32** %10, align 8
  %239 = load i64, i64* %14, align 8
  %240 = load i64, i64* @errno, align 8
  %241 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %242 = call i32 @zfs_setprop_error(i32* %238, i64 %239, i64 %240, i8* %241)
  br label %243

243:                                              ; preds = %234
  %244 = load i32*, i32** %16, align 8
  %245 = load i32*, i32** %17, align 8
  %246 = call i32* @nvlist_next_nvpair(i32* %244, i32* %245)
  store i32* %246, i32** %17, align 8
  br label %231

247:                                              ; preds = %231
  %248 = load i32*, i32** %16, align 8
  %249 = call i32 @nvlist_free(i32* %248)
  %250 = load i32, i32* %13, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %285

252:                                              ; preds = %247
  %253 = load i64, i64* @errno, align 8
  %254 = load i64, i64* @ENOSPC, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %285

256:                                              ; preds = %252
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %258 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %259 = call i32 @zfs_prop_get_int(%struct.TYPE_17__* %257, i64 %258)
  store i32 %259, i32* %18, align 4
  %260 = load i32*, i32** %11, align 8
  %261 = call i32 @nvlist_free(i32* %260)
  store i32* null, i32** %11, align 8
  %262 = call i32 @zcmd_free_nvlists(%struct.TYPE_18__* %5)
  %263 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %264 = call i64 @nvlist_alloc(i32** %11, i32 %263, i32 0)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %256
  br label %334

267:                                              ; preds = %256
  %268 = load i32*, i32** %11, align 8
  %269 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %270 = call i32 @zfs_prop_to_name(i64 %269)
  %271 = load i32, i32* %18, align 4
  %272 = call i64 @nvlist_add_uint64(i32* %268, i32 %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %267
  br label %334

275:                                              ; preds = %267
  %276 = load i32*, i32** %10, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = call i64 @zcmd_write_src_nvlist(i32* %276, %struct.TYPE_18__* %5, i32* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275
  br label %334

281:                                              ; preds = %275
  %282 = load i32*, i32** %10, align 8
  %283 = load i32, i32* @ZFS_IOC_SET_PROP, align 4
  %284 = call i32 @zfs_ioctl(i32* %282, i32 %283, %struct.TYPE_18__* %5)
  br label %285

285:                                              ; preds = %281, %252, %247
  br label %333

286:                                              ; preds = %207
  store i32 0, i32* %8, align 4
  br label %287

287:                                              ; preds = %311, %286
  %288 = load i32, i32* %8, align 4
  %289 = load i32, i32* %12, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %314

291:                                              ; preds = %287
  %292 = load i32**, i32*** %7, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32*, i32** %292, i64 %294
  %296 = load i32*, i32** %295, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %310

298:                                              ; preds = %291
  %299 = load i32**, i32*** %7, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32*, i32** %299, i64 %301
  %303 = load i32*, i32** %302, align 8
  %304 = call i32 @changelist_postfix(i32* %303)
  store i32 %304, i32* %19, align 4
  %305 = load i32, i32* %19, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %298
  %308 = load i32, i32* %19, align 4
  store i32 %308, i32* %6, align 4
  br label %309

309:                                              ; preds = %307, %298
  br label %310

310:                                              ; preds = %309, %291
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %8, align 4
  br label %287

314:                                              ; preds = %287
  %315 = load i32, i32* %6, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %314
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %319 = call i32 @get_stats(%struct.TYPE_17__* %318)
  %320 = load i64, i64* %14, align 8
  %321 = call i64 @zfs_is_namespace_prop(i64 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %317
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %325 = call i64 @zfs_is_mounted(%struct.TYPE_17__* %324, i32* null)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %323
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %329 = load i32, i32* @MNTOPT_REMOUNT, align 4
  %330 = call i32 @zfs_mount(%struct.TYPE_17__* %328, i32 %329, i32 0)
  store i32 %330, i32* %6, align 4
  br label %331

331:                                              ; preds = %327, %323, %317
  br label %332

332:                                              ; preds = %331, %314
  br label %333

333:                                              ; preds = %332, %285
  br label %334

334:                                              ; preds = %333, %280, %274, %266, %227, %218, %206, %177, %153, %139, %97, %79, %65, %47
  %335 = load i32*, i32** %11, align 8
  %336 = call i32 @nvlist_free(i32* %335)
  %337 = call i32 @zcmd_free_nvlists(%struct.TYPE_18__* %5)
  %338 = load i32**, i32*** %7, align 8
  %339 = icmp ne i32** %338, null
  br i1 %339, label %340, label %366

340:                                              ; preds = %334
  store i32 0, i32* %8, align 4
  br label %341

341:                                              ; preds = %360, %340
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* %12, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %363

345:                                              ; preds = %341
  %346 = load i32**, i32*** %7, align 8
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32*, i32** %346, i64 %348
  %350 = load i32*, i32** %349, align 8
  %351 = icmp ne i32* %350, null
  br i1 %351, label %352, label %359

352:                                              ; preds = %345
  %353 = load i32**, i32*** %7, align 8
  %354 = load i32, i32* %8, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32*, i32** %353, i64 %355
  %357 = load i32*, i32** %356, align 8
  %358 = call i32 @changelist_free(i32* %357)
  br label %359

359:                                              ; preds = %352, %345
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %8, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %8, align 4
  br label %341

363:                                              ; preds = %341
  %364 = load i32**, i32*** %7, align 8
  %365 = call i32 @free(i32** %364)
  br label %366

366:                                              ; preds = %363, %334
  %367 = load i32, i32* %6, align 4
  ret i32 %367
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32* @zfs_valid_proplist(i32*, i32, i32*, i32, %struct.TYPE_17__*, i32, i64, i8*) #2

declare dso_local i32 @zfs_prop_get_int(%struct.TYPE_17__*, i64) #2

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i64 @zfs_name_to_prop(i32) #2

declare dso_local i32 @nvpair_name(i32*) #2

declare dso_local i32 @zfs_add_synthetic_resv(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @zfs_fix_auto_resv(%struct.TYPE_17__*, i32*) #2

declare dso_local i32** @calloc(i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @fnvpair_value_uint64(i32*) #2

declare dso_local i64 @zfs_is_mounted(%struct.TYPE_17__*, i32*) #2

declare dso_local i32* @changelist_gather(%struct.TYPE_17__*, i64, i32, i32) #2

declare dso_local i64 @changelist_haszonedchild(i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @changelist_prefix(i32*) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_18__*, i32*) #2

declare dso_local i32 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_18__*) #2

declare dso_local i32 @zfs_standard_error(i32*, i64, i8*) #2

declare dso_local i64 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_18__*, i32**) #2

declare dso_local i32 @zfs_setprop_error(i32*, i64, i64, i8*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_18__*) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #2

declare dso_local i32 @zfs_prop_to_name(i64) #2

declare dso_local i32 @changelist_postfix(i32*) #2

declare dso_local i32 @get_stats(%struct.TYPE_17__*) #2

declare dso_local i64 @zfs_is_namespace_prop(i64) #2

declare dso_local i32 @zfs_mount(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @changelist_free(i32*) #2

declare dso_local i32 @free(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
