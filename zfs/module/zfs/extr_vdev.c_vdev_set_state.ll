; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_set_state.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, i64, %struct.TYPE_14__*, i8*, i64, i64, %struct.TYPE_13__, i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i64, i32 (%struct.TYPE_15__*)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }

@VDEV_STATE_OFFLINE = common dso_local global i64 0, align 8
@VDEV_STATE_FAULTED = common dso_local global i64 0, align 8
@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@VDEV_STATE_REMOVED = common dso_local global i64 0, align 8
@VDEV_AUX_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@SPA_LOAD_IMPORT = common dso_local global i64 0, align 8
@SPA_LOAD_RECOVER = common dso_local global i64 0, align 8
@FM_EREPORT_ZFS_DEVICE_OPEN_FAILED = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_CORRUPT_DATA = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_NO_REPLICAS = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_BAD_GUID_SUM = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_TOO_SMALL = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_BAD_LABEL = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_BAD_ASHIFT = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_UNKNOWN = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i8* null, align 8
@VDEV_STATE_UNKNOWN = common dso_local global i64 0, align 8
@VDEV_STATE_CLOSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_set_state(%struct.TYPE_15__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 10
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @VDEV_STATE_OFFLINE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VDEV_STATE_FAULTED, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @zfs_post_state_change(%struct.TYPE_16__* %38, %struct.TYPE_15__* %39, i64 %42)
  br label %44

44:                                               ; preds = %37, %31, %27, %20
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  br label %253

49:                                               ; preds = %4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %49
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = call i64 @vdev_is_dead(%struct.TYPE_15__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = call i32 %80(%struct.TYPE_15__* %81)
  br label %83

83:                                               ; preds = %75, %68, %64, %49
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 129
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95, %92
  %101 = load i64, i64* @VDEV_STATE_REMOVED, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* @VDEV_AUX_NONE, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %201

108:                                              ; preds = %95, %88, %83
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @VDEV_STATE_REMOVED, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i8*, i8** @B_TRUE, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  br label %200

116:                                              ; preds = %108
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %195

120:                                              ; preds = %116
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %122 = call i64 @spa_load_state(%struct.TYPE_16__* %121)
  %123 = load i64, i64* @SPA_LOAD_IMPORT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = call i64 @spa_load_state(%struct.TYPE_16__* %126)
  %128 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %125, %120
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  store i32 1, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %130, %125
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %151, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 7
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %191

151:                                              ; preds = %146, %140
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %191, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %191, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = icmp ne %struct.TYPE_15__* %162, %165
  br i1 %166, label %167, label %191

167:                                              ; preds = %161
  %168 = load i32, i32* %8, align 4
  switch i32 %168, label %183 [
    i32 129, label %169
    i32 131, label %171
    i32 130, label %173
    i32 133, label %175
    i32 128, label %177
    i32 132, label %179
    i32 134, label %181
  ]

169:                                              ; preds = %167
  %170 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_OPEN_FAILED, align 8
  store i8* %170, i8** %11, align 8
  br label %185

171:                                              ; preds = %167
  %172 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_CORRUPT_DATA, align 8
  store i8* %172, i8** %11, align 8
  br label %185

173:                                              ; preds = %167
  %174 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_NO_REPLICAS, align 8
  store i8* %174, i8** %11, align 8
  br label %185

175:                                              ; preds = %167
  %176 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_BAD_GUID_SUM, align 8
  store i8* %176, i8** %11, align 8
  br label %185

177:                                              ; preds = %167
  %178 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_TOO_SMALL, align 8
  store i8* %178, i8** %11, align 8
  br label %185

179:                                              ; preds = %167
  %180 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_BAD_LABEL, align 8
  store i8* %180, i8** %11, align 8
  br label %185

181:                                              ; preds = %167
  %182 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_BAD_ASHIFT, align 8
  store i8* %182, i8** %11, align 8
  br label %185

183:                                              ; preds = %167
  %184 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_UNKNOWN, align 8
  store i8* %184, i8** %11, align 8
  br label %185

185:                                              ; preds = %183, %181, %179, %177, %175, %173, %171, %169
  %186 = load i8*, i8** %11, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %189 = load i64, i64* %9, align 8
  %190 = call i32 @zfs_ereport_post(i8* %186, %struct.TYPE_16__* %187, %struct.TYPE_15__* %188, i32* null, i32* null, i64 %189, i32 0)
  br label %191

191:                                              ; preds = %185, %161, %156, %151, %146
  %192 = load i8*, i8** @B_FALSE, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 5
  store i8* %192, i8** %194, align 8
  br label %199

195:                                              ; preds = %116
  %196 = load i8*, i8** @B_FALSE, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 5
  store i8* %196, i8** %198, align 8
  br label %199

199:                                              ; preds = %195, %191
  br label %200

200:                                              ; preds = %199, %112
  br label %201

201:                                              ; preds = %200, %100
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %240

208:                                              ; preds = %201
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @VDEV_STATE_UNKNOWN, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %230

214:                                              ; preds = %208
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %217, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %214
  %223 = load i64, i64* %9, align 8
  %224 = load i64, i64* @VDEV_STATE_CLOSED, align 8
  %225 = icmp sle i64 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %9, align 8
  br label %230

230:                                              ; preds = %226, %222, %214, %208
  %231 = load i64, i64* %9, align 8
  %232 = load i64, i64* @VDEV_STATE_CLOSED, align 8
  %233 = icmp sgt i64 %231, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %230
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %237 = load i64, i64* %9, align 8
  %238 = call i32 @zfs_post_state_change(%struct.TYPE_16__* %235, %struct.TYPE_15__* %236, i64 %237)
  br label %239

239:                                              ; preds = %234, %230
  br label %240

240:                                              ; preds = %239, %201
  %241 = load i32, i32* %6, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %253, label %243

243:                                              ; preds = %240
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @vdev_propagate_state(i64 %251)
  br label %253

253:                                              ; preds = %44, %248, %243, %240
  ret void
}

declare dso_local i32 @zfs_post_state_change(%struct.TYPE_16__*, %struct.TYPE_15__*, i64) #1

declare dso_local i64 @vdev_is_dead(%struct.TYPE_15__*) #1

declare dso_local i64 @spa_load_state(%struct.TYPE_16__*) #1

declare dso_local i32 @zfs_ereport_post(i8*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32*, i32*, i64, i32) #1

declare dso_local i32 @vdev_propagate_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
