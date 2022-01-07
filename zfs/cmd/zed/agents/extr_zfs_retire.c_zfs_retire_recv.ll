; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_zfs_retire_recv.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_retire.c_zfs_retire_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"zfs_retire_recv: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"resource.fs.zfs.removed\00", align 1
@FM_EREPORT_PAYLOAD_ZFS_POOL_GUID = common dso_local global i32 0, align 4
@FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE = common dso_local global i32 0, align 4
@VDEV_TYPE_L2CACHE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"zpool_vdev_offline '%s'\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"spare_on_remove\00", align 1
@FM_LIST_RESOLVED_CLASS = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"resource.fs.zfs.statechange\00", align 1
@FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"sysevent.fs.zfs.vdev_remove\00", align 1
@FM_LIST_REPAIRED_CLASS = common dso_local global i8* null, align 8
@FM_SUSPECT_FAULT_LIST = common dso_local global i32 0, align 4
@FM_SUSPECT_RETIRE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"fault.fs.zfs.vdev.io\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"fault.fs.zfs.vdev.checksum\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"fault.fs.zfs.device\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"fault.io.*\00", align 1
@FM_FAULT_RESOURCE = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME = common dso_local global i32 0, align 4
@FM_FMRI_SCHEME_ZFS = common dso_local global i8* null, align 8
@FM_FMRI_ZFS_POOL = common dso_local global i32 0, align 4
@FM_FMRI_ZFS_VDEV = common dso_local global i32 0, align 4
@VDEV_AUX_ERR_EXCEEDED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"zpool_clear of pool '%s'\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"zpool_clear of pool '%s' vdev %llu\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"zpool_vdev_%s: vdev %llu on '%s'\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"degrade\00", align 1
@FM_SUSPECT_UUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i8*)* @zfs_retire_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_retire_recv(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call %struct.TYPE_4__* @fmd_hdl_getspecific(i32* %32)
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %17, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %18, align 8
  store i32* null, i32** %23, align 8
  store i32 0, i32* %25, align 4
  store i64 0, i64* %29, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 (i32*, i8*, i8*, ...) @fmd_hdl_debug(i32* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %108

43:                                               ; preds = %4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_POOL_GUID, align 4
  %46 = call i64 @nvlist_lookup_uint64(i32* %44, i32 %45, i64* %9)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID, align 4
  %51 = call i64 @nvlist_lookup_uint64(i32* %49, i32 %50, i64* %10)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  br label %347

54:                                               ; preds = %48
  %55 = load i32*, i32** %18, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32* @find_by_guid(i32* %55, i64 %56, i64 %57, i32** %23)
  store i32* %58, i32** %11, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %347

61:                                               ; preds = %54
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %23, align 8
  %64 = load i64, i64* @B_FALSE, align 8
  %65 = call i8* @zpool_vdev_name(i32* null, i32* %62, i32* %63, i64 %64)
  store i8* %65, i8** %31, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE, align 4
  %68 = call i64 @nvlist_lookup_string(i32* %66, i32 %67, i8** %30)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %61
  %71 = load i8*, i8** %30, align 8
  %72 = load i8*, i8** @VDEV_TYPE_L2CACHE, align 8
  %73 = call i64 @strcmp(i8* %71, i8* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32*, i32** %5, align 8
  %77 = load i8*, i8** %31, align 8
  %78 = call i32 (i32*, i8*, i8*, ...) @fmd_hdl_debug(i32* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i8*, i8** %31, align 8
  %81 = load i64, i64* @B_TRUE, align 8
  %82 = call i32 @zpool_vdev_offline(i32* %79, i8* %80, i64 %81)
  br label %103

83:                                               ; preds = %70, %61
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @fmd_prop_get_int32(i32* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %23, align 8
  %91 = call i64 @replace_with_spare(i32* %88, i32* %89, i32* %90)
  %92 = load i64, i64* @B_FALSE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %87, %83
  %95 = load i32*, i32** %5, align 8
  %96 = load i8*, i8** %31, align 8
  %97 = call i32 (i32*, i8*, i8*, ...) @fmd_hdl_debug(i32* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  %98 = load i32*, i32** %11, align 8
  %99 = load i8*, i8** %31, align 8
  %100 = load i64, i64* @B_TRUE, align 8
  %101 = call i32 @zpool_vdev_offline(i32* %98, i8* %99, i64 %100)
  br label %102

102:                                              ; preds = %94, %87
  br label %103

103:                                              ; preds = %102, %75
  %104 = load i8*, i8** %31, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @zpool_close(i32* %106)
  br label %347

108:                                              ; preds = %4
  %109 = load i8*, i8** %8, align 8
  %110 = load i8*, i8** @FM_LIST_RESOLVED_CLASS, align 8
  %111 = call i64 @strcmp(i8* %109, i8* %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %347

114:                                              ; preds = %108
  %115 = load i8*, i8** %8, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE, align 4
  %121 = call i64 @nvlist_lookup_uint64(i32* %119, i32 %120, i64* %29)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i64, i64* %29, align 8
  %125 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32*, i32** %5, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @zfs_vdev_repair(i32* %128, i32* %129)
  br label %347

131:                                              ; preds = %123, %118, %114
  %132 = load i8*, i8** %8, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32*, i32** %5, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @zfs_vdev_repair(i32* %136, i32* %137)
  br label %347

139:                                              ; preds = %131
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %142 = call i32 @zfs_retire_clear_data(i32* %140, %struct.TYPE_4__* %141)
  %143 = load i8*, i8** %8, align 8
  %144 = load i8*, i8** @FM_LIST_REPAIRED_CLASS, align 8
  %145 = call i64 @strcmp(i8* %143, i8* %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i64, i64* @B_TRUE, align 8
  store i64 %148, i64* %21, align 8
  br label %151

149:                                              ; preds = %139
  %150 = load i64, i64* @B_FALSE, align 8
  store i64 %150, i64* %21, align 8
  br label %151

151:                                              ; preds = %149, %147
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* @FM_SUSPECT_FAULT_LIST, align 4
  %154 = call i64 @nvlist_lookup_nvlist_array(i32* %152, i32 %153, i32*** %14, i64* %16)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %347

157:                                              ; preds = %151
  store i64 0, i64* %15, align 8
  br label %158

158:                                              ; preds = %327, %157
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* %16, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %330

162:                                              ; preds = %158
  %163 = load i32**, i32*** %14, align 8
  %164 = load i64, i64* %15, align 8
  %165 = getelementptr inbounds i32*, i32** %163, i64 %164
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %13, align 8
  %167 = load i64, i64* @B_FALSE, align 8
  store i64 %167, i64* %19, align 8
  %168 = load i64, i64* @B_FALSE, align 8
  store i64 %168, i64* %20, align 8
  %169 = load i64, i64* @B_FALSE, align 8
  store i64 %169, i64* %27, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* @FM_SUSPECT_RETIRE, align 4
  %172 = call i64 @nvlist_lookup_boolean_value(i32* %170, i32 %171, i64* %26)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %162
  %175 = load i64, i64* %26, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %327

178:                                              ; preds = %174, %162
  %179 = load i32*, i32** %5, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = call i64 @fmd_nvl_class_match(i32* %179, i32* %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i64, i64* @B_TRUE, align 8
  store i64 %184, i64* %19, align 8
  br label %211

185:                                              ; preds = %178
  %186 = load i32*, i32** %5, align 8
  %187 = load i32*, i32** %13, align 8
  %188 = call i64 @fmd_nvl_class_match(i32* %186, i32* %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i64, i64* @B_TRUE, align 8
  store i64 %191, i64* %20, align 8
  br label %210

192:                                              ; preds = %185
  %193 = load i32*, i32** %5, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = call i64 @fmd_nvl_class_match(i32* %193, i32* %194, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i64, i64* @B_FALSE, align 8
  store i64 %198, i64* %19, align 8
  br label %209

199:                                              ; preds = %192
  %200 = load i32*, i32** %5, align 8
  %201 = load i32*, i32** %13, align 8
  %202 = call i64 @fmd_nvl_class_match(i32* %200, i32* %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i64, i64* @B_TRUE, align 8
  store i64 %205, i64* %27, align 8
  %206 = load i64, i64* @B_TRUE, align 8
  store i64 %206, i64* %19, align 8
  br label %208

207:                                              ; preds = %199
  br label %327

208:                                              ; preds = %204
  br label %209

209:                                              ; preds = %208, %197
  br label %210

210:                                              ; preds = %209, %190
  br label %211

211:                                              ; preds = %210, %183
  %212 = load i64, i64* %27, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %327

215:                                              ; preds = %211
  %216 = load i32*, i32** %13, align 8
  %217 = load i32, i32* @FM_FAULT_RESOURCE, align 4
  %218 = call i64 @nvlist_lookup_nvlist(i32* %216, i32 %217, i32** %12)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %215
  %221 = load i32*, i32** %12, align 8
  %222 = load i32, i32* @FM_FMRI_SCHEME, align 4
  %223 = call i64 @nvlist_lookup_string(i32* %221, i32 %222, i8** %22)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220, %215
  br label %327

226:                                              ; preds = %220
  %227 = load i8*, i8** %22, align 8
  %228 = load i8*, i8** @FM_FMRI_SCHEME_ZFS, align 8
  %229 = call i64 @strcmp(i8* %227, i8* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %327

232:                                              ; preds = %226
  %233 = load i32*, i32** %12, align 8
  %234 = load i32, i32* @FM_FMRI_ZFS_POOL, align 4
  %235 = call i64 @nvlist_lookup_uint64(i32* %233, i32 %234, i64* %9)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %232
  br label %327

238:                                              ; preds = %232
  %239 = load i32*, i32** %12, align 8
  %240 = load i32, i32* @FM_FMRI_ZFS_VDEV, align 4
  %241 = call i64 @nvlist_lookup_uint64(i32* %239, i32 %240, i64* %10)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = load i64, i64* %21, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  store i64 0, i64* %10, align 8
  br label %248

247:                                              ; preds = %243
  br label %327

248:                                              ; preds = %246
  br label %249

249:                                              ; preds = %248, %238
  %250 = load i32*, i32** %18, align 8
  %251 = load i64, i64* %9, align 8
  %252 = load i64, i64* %10, align 8
  %253 = call i32* @find_by_guid(i32* %250, i64 %251, i64 %252, i32** %23)
  store i32* %253, i32** %11, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  br label %327

256:                                              ; preds = %249
  %257 = load i32, i32* @VDEV_AUX_ERR_EXCEEDED, align 4
  store i32 %257, i32* %28, align 4
  br label %258

258:                                              ; preds = %256
  %259 = load i64, i64* %10, align 8
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %258
  %262 = load i32*, i32** %5, align 8
  %263 = load i32*, i32** %11, align 8
  %264 = call i32 @zpool_get_name(i32* %263)
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i8*
  %267 = call i32 (i32*, i8*, i8*, ...) @fmd_hdl_debug(i32* %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %266)
  %268 = load i32*, i32** %11, align 8
  %269 = call i32 @zpool_clear(i32* %268, i32* null, i32* null)
  %270 = load i32*, i32** %11, align 8
  %271 = call i32 @zpool_close(i32* %270)
  br label %327

272:                                              ; preds = %258
  %273 = load i64, i64* %21, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %272
  store i32 1, i32* %25, align 4
  %276 = load i32*, i32** %5, align 8
  %277 = load i32*, i32** %11, align 8
  %278 = call i32 @zpool_get_name(i32* %277)
  %279 = sext i32 %278 to i64
  %280 = inttoptr i64 %279 to i8*
  %281 = load i64, i64* %10, align 8
  %282 = call i32 (i32*, i8*, i8*, ...) @fmd_hdl_debug(i32* %276, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %280, i64 %281)
  %283 = load i32*, i32** %11, align 8
  %284 = load i64, i64* %10, align 8
  %285 = call i32 @zpool_vdev_clear(i32* %283, i64 %284)
  %286 = load i32*, i32** %11, align 8
  %287 = call i32 @zpool_close(i32* %286)
  br label %327

288:                                              ; preds = %272
  %289 = load i64, i64* %19, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %288
  %292 = load i32*, i32** %11, align 8
  %293 = load i64, i64* %10, align 8
  %294 = load i32, i32* %28, align 4
  %295 = call i32 @zpool_vdev_fault(i32* %292, i64 %293, i32 %294)
  br label %296

296:                                              ; preds = %291, %288
  %297 = load i64, i64* %20, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %296
  %300 = load i32*, i32** %11, align 8
  %301 = load i64, i64* %10, align 8
  %302 = load i32, i32* %28, align 4
  %303 = call i32 @zpool_vdev_degrade(i32* %300, i64 %301, i32 %302)
  br label %304

304:                                              ; preds = %299, %296
  %305 = load i64, i64* %19, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %304
  %308 = load i64, i64* %20, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %307, %304
  %311 = load i32*, i32** %5, align 8
  %312 = load i64, i64* %19, align 8
  %313 = icmp ne i64 %312, 0
  %314 = zext i1 %313 to i64
  %315 = select i1 %313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)
  %316 = load i64, i64* %10, align 8
  %317 = load i32*, i32** %11, align 8
  %318 = call i32 @zpool_get_name(i32* %317)
  %319 = call i32 (i32*, i8*, i8*, ...) @fmd_hdl_debug(i32* %311, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i8* %315, i64 %316, i32 %318)
  br label %320

320:                                              ; preds = %310, %307
  %321 = load i32*, i32** %5, align 8
  %322 = load i32*, i32** %11, align 8
  %323 = load i32*, i32** %23, align 8
  %324 = call i64 @replace_with_spare(i32* %321, i32* %322, i32* %323)
  %325 = load i32*, i32** %11, align 8
  %326 = call i32 @zpool_close(i32* %325)
  br label %327

327:                                              ; preds = %320, %275, %261, %255, %247, %237, %231, %225, %214, %207, %177
  %328 = load i64, i64* %15, align 8
  %329 = add i64 %328, 1
  store i64 %329, i64* %15, align 8
  br label %158

330:                                              ; preds = %158
  %331 = load i8*, i8** %8, align 8
  %332 = load i8*, i8** @FM_LIST_REPAIRED_CLASS, align 8
  %333 = call i64 @strcmp(i8* %331, i8* %332)
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %347

335:                                              ; preds = %330
  %336 = load i32, i32* %25, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %335
  %339 = load i32*, i32** %7, align 8
  %340 = load i32, i32* @FM_SUSPECT_UUID, align 4
  %341 = call i64 @nvlist_lookup_string(i32* %339, i32 %340, i8** %24)
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %338
  %344 = load i32*, i32** %5, align 8
  %345 = load i8*, i8** %24, align 8
  %346 = call i32 @fmd_case_uuresolved(i32* %344, i8* %345)
  br label %347

347:                                              ; preds = %53, %60, %103, %113, %127, %135, %156, %343, %338, %335, %330
  ret void
}

declare dso_local %struct.TYPE_4__* @fmd_hdl_getspecific(i32*) #1

declare dso_local i32 @fmd_hdl_debug(i32*, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32* @find_by_guid(i32*, i64, i64, i32**) #1

declare dso_local i8* @zpool_vdev_name(i32*, i32*, i32*, i64) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @zpool_vdev_offline(i32*, i8*, i64) #1

declare dso_local i32 @fmd_prop_get_int32(i32*, i8*) #1

declare dso_local i64 @replace_with_spare(i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i32 @zfs_vdev_repair(i32*, i32*) #1

declare dso_local i32 @zfs_retire_clear_data(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_lookup_boolean_value(i32*, i32, i64*) #1

declare dso_local i64 @fmd_nvl_class_match(i32*, i32*, i8*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @zpool_get_name(i32*) #1

declare dso_local i32 @zpool_clear(i32*, i32*, i32*) #1

declare dso_local i32 @zpool_vdev_clear(i32*, i64) #1

declare dso_local i32 @zpool_vdev_fault(i32*, i64, i32) #1

declare dso_local i32 @zpool_vdev_degrade(i32*, i64, i32) #1

declare dso_local i32 @fmd_case_uuresolved(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
