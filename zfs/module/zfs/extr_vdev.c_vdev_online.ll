; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_online.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32*, i32, i32*, i64, i32, %struct.TYPE_18__**, %struct.TYPE_18__*, %struct.TYPE_20__*, i32, i8*, i8*, %struct.TYPE_18__* }

@SCL_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZFS_ONLINE_CHECKREMOVE = common dso_local global i32 0, align 4
@ZFS_ONLINE_FORCEFAULT = common dso_local global i32 0, align 4
@ZFS_ONLINE_EXPAND = common dso_local global i32 0, align 4
@ZFS_ONLINE_UNSPARE = common dso_local global i32 0, align 4
@vdev_spare_ops = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@SPA_ASYNC_CONFIG_UPDATE = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_ACTIVE = common dso_local global i64 0, align 8
@VDEV_TRIM_ACTIVE = common dso_local global i64 0, align 8
@VDEV_STATE_DEGRADED = common dso_local global i64 0, align 8
@ESC_ZFS_VDEV_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_online(%struct.TYPE_19__* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %13, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = load i32, i32* @SCL_NONE, align 4
  %21 = call i32 @spa_vdev_state_enter(%struct.TYPE_19__* %19, i32 %20)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @B_TRUE, align 4
  %25 = call %struct.TYPE_18__* @spa_lookup_by_guid(%struct.TYPE_19__* %22, i32 %23, i32 %24)
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %10, align 8
  %26 = icmp eq %struct.TYPE_18__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = load i32, i32* @ENODEV, align 4
  %30 = call i32 @spa_vdev_state_exit(%struct.TYPE_19__* %28, %struct.TYPE_18__* null, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %295

31:                                               ; preds = %4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 17
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = load i32, i32* @ENOTSUP, align 4
  %41 = call i32 @spa_vdev_state_exit(%struct.TYPE_19__* %39, %struct.TYPE_18__* null, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %295

42:                                               ; preds = %31
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 20
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 19
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ true, %42 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %15, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 21
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %11, align 8
  %61 = load i8*, i8** @B_FALSE, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 20
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @B_FALSE, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 19
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @ZFS_ONLINE_CHECKREMOVE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @ZFS_ONLINE_FORCEFAULT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 13
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %120, label %89

89:                                               ; preds = %52
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %12, align 8
  br label %91

91:                                               ; preds = %112, %89
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %94 = icmp ne %struct.TYPE_18__* %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @ZFS_ONLINE_EXPAND, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %100, %95
  %106 = phi i1 [ true, %95 ], [ %104, %100 ]
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %105
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 16
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  store %struct.TYPE_18__* %115, %struct.TYPE_18__** %12, align 8
  br label %91

116:                                              ; preds = %91
  %117 = call i32 (...) @gethrestime_sec()
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 18
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %52
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %122 = call i32 @vdev_reopen(%struct.TYPE_18__* %121)
  %123 = load i8*, i8** @B_FALSE, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 13
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %120
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %134, %struct.TYPE_18__** %12, align 8
  br label %135

135:                                              ; preds = %144, %133
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %138 = icmp ne %struct.TYPE_18__* %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = load i8*, i8** @B_FALSE, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 16
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %12, align 8
  br label %135

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %120
  %150 = load i64*, i64** %9, align 8
  %151 = icmp ne i64* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** %9, align 8
  store i64 %155, i64* %156, align 8
  br label %157

157:                                              ; preds = %152, %149
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @ZFS_ONLINE_UNSPARE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %192

162:                                              ; preds = %157
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %164 = call i32 @vdev_is_dead(%struct.TYPE_18__* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %192, label %166

166:                                              ; preds = %162
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 16
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = icmp ne %struct.TYPE_18__* %169, null
  br i1 %170, label %171, label %192

171:                                              ; preds = %166
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 16
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 17
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = icmp eq %struct.TYPE_20__* %176, @vdev_spare_ops
  br i1 %177, label %178, label %192

178:                                              ; preds = %171
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 16
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 15
  %183 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %183, i64 0
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %187 = icmp eq %struct.TYPE_18__* %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %178
  %189 = load i32, i32* @B_TRUE, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 14
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %188, %178, %171, %166, %162, %157
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* @ZFS_ONLINE_EXPAND, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %192
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %197, %192
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 13
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %210 = load i32, i32* @ENOTSUP, align 4
  %211 = call i32 @spa_vdev_state_exit(%struct.TYPE_19__* %208, %struct.TYPE_18__* %209, i32 %210)
  store i32 %211, i32* %5, align 4
  br label %295

212:                                              ; preds = %202
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %214 = load i32, i32* @SPA_ASYNC_CONFIG_UPDATE, align 4
  %215 = call i32 @spa_async_request(%struct.TYPE_19__* %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %197
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 11
  %219 = call i32 @mutex_enter(i32* %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %221 = call i64 @vdev_writeable(%struct.TYPE_18__* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %216
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 12
  %226 = load i32*, i32** %225, align 8
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @VDEV_INITIALIZE_ACTIVE, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %236 = call i32 @vdev_initialize(%struct.TYPE_18__* %235)
  br label %237

237:                                              ; preds = %234, %228, %223, %216
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 11
  %240 = call i32 @mutex_exit(i32* %239)
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 6
  %243 = call i32 @mutex_enter(i32* %242)
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %245 = call i64 @vdev_writeable(%struct.TYPE_18__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %237
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 10
  %250 = load i32*, i32** %249, align 8
  %251 = icmp eq i32* %250, null
  br i1 %251, label %252, label %270

252:                                              ; preds = %247
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 5
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @VDEV_TRIM_ACTIVE, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %252
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 8
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @vdev_trim(%struct.TYPE_18__* %259, i32 %262, i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %258, %252, %247, %237
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 6
  %273 = call i32 @mutex_exit(i32* %272)
  %274 = load i32, i32* %14, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %286, label %276

276:                                              ; preds = %270
  %277 = load i64, i64* %15, align 8
  %278 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %279 = icmp slt i64 %277, %278
  br i1 %279, label %280, label %291

280:                                              ; preds = %276
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %285 = icmp sge i64 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %280, %270
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %289 = load i32, i32* @ESC_ZFS_VDEV_ONLINE, align 4
  %290 = call i32 @spa_event_notify(%struct.TYPE_19__* %287, %struct.TYPE_18__* %288, i32* null, i32 %289)
  br label %291

291:                                              ; preds = %286, %280, %276
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %294 = call i32 @spa_vdev_state_exit(%struct.TYPE_19__* %292, %struct.TYPE_18__* %293, i32 0)
  store i32 %294, i32* %5, align 4
  br label %295

295:                                              ; preds = %291, %207, %38, %27
  %296 = load i32, i32* %5, align 4
  ret i32 %296
}

declare dso_local i32 @spa_vdev_state_enter(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_18__* @spa_lookup_by_guid(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @spa_vdev_state_exit(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @gethrestime_sec(...) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_18__*) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_18__*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_18__*) #1

declare dso_local i32 @vdev_initialize(%struct.TYPE_18__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @vdev_trim(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_19__*, %struct.TYPE_18__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
