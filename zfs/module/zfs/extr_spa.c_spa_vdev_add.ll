; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_add.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_25__, %struct.TYPE_25__, i32*, %struct.TYPE_26__, %struct.TYPE_27__*, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64, i32, %struct.TYPE_27__**, %struct.TYPE_29__* }

@VDEV_ALLOC_ADD = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@vdev_raidz_ops = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@vdev_mirror_ops = common dso_local global %struct.TYPE_29__ zeroinitializer, align 4
@B_TRUE = common dso_local global i8* null, align 8
@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_CONFIG_UPDATE_POOL = common dso_local global i32 0, align 4
@ESC_ZFS_VDEV_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_vdev_add(%struct.TYPE_28__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %8, align 8
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %23 = call i32 @spa_writeable(%struct.TYPE_28__* %22)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %26 = call i64 @spa_vdev_enter(%struct.TYPE_28__* %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @VDEV_ALLOC_ADD, align 4
  %30 = call i32 @spa_config_parse(%struct.TYPE_28__* %27, %struct.TYPE_27__** %9, i32* %28, i32* null, i32 0, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @spa_vdev_exit(%struct.TYPE_28__* %33, %struct.TYPE_27__* null, i64 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %274

37:                                               ; preds = %2
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 5
  store %struct.TYPE_27__* %38, %struct.TYPE_27__** %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %43 = call i64 @nvlist_lookup_nvlist_array(i32* %41, i32 %42, i32*** %11, i64* %13)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i64 0, i64* %13, align 8
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %49 = call i64 @nvlist_lookup_nvlist_array(i32* %47, i32 %48, i32*** %12, i64* %14)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i64 0, i64* %14, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i64, i64* %13, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i64, i64* %14, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* @EINVAL, align 4
  %68 = call i32 @spa_vdev_exit(%struct.TYPE_28__* %64, %struct.TYPE_27__* %65, i64 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %274

69:                                               ; preds = %60, %57, %52
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* @B_FALSE, align 4
  %78 = call i32 @vdev_create(%struct.TYPE_27__* %75, i64 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @spa_vdev_exit(%struct.TYPE_28__* %81, %struct.TYPE_27__* %82, i64 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %274

86:                                               ; preds = %74, %69
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i32, i32* @VDEV_ALLOC_ADD, align 4
  %91 = call i32 @spa_validate_aux(%struct.TYPE_28__* %87, i32* %88, i64 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @spa_vdev_exit(%struct.TYPE_28__* %94, %struct.TYPE_27__* %95, i64 %96, i32 %97)
  store i32 %98, i32* %3, align 4
  br label %274

99:                                               ; preds = %86
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %196

110:                                              ; preds = %104, %99
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %192, %110
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %113, %116
  br i1 %117, label %118, label %195

118:                                              ; preds = %111
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %121, i64 %123
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %124, align 8
  store %struct.TYPE_27__* %125, %struct.TYPE_27__** %10, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %144

130:                                              ; preds = %118
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %130
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i32, i32* @EINVAL, align 4
  %143 = call i32 @spa_vdev_exit(%struct.TYPE_28__* %139, %struct.TYPE_27__* %140, i64 %141, i32 %142)
  store i32 %143, i32* %3, align 4
  br label %274

144:                                              ; preds = %130, %118
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %146, align 8
  %148 = icmp eq %struct.TYPE_29__* %147, @vdev_raidz_ops
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %152 = load i64, i64* %6, align 8
  %153 = load i32, i32* @EINVAL, align 4
  %154 = call i32 @spa_vdev_exit(%struct.TYPE_28__* %150, %struct.TYPE_27__* %151, i64 %152, i32 %153)
  store i32 %154, i32* %3, align 4
  br label %274

155:                                              ; preds = %144
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %157, align 8
  %159 = icmp eq %struct.TYPE_29__* %158, @vdev_mirror_ops
  br i1 %159, label %160, label %191

160:                                              ; preds = %155
  store i64 0, i64* %16, align 8
  br label %161

161:                                              ; preds = %187, %160
  %162 = load i64, i64* %16, align 8
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ult i64 %162, %165
  br i1 %166, label %167, label %190

167:                                              ; preds = %161
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %169, align 8
  %171 = load i64, i64* %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %170, i64 %171
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %172, align 8
  store %struct.TYPE_27__* %173, %struct.TYPE_27__** %17, align 8
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %167
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %183 = load i64, i64* %6, align 8
  %184 = load i32, i32* @EINVAL, align 4
  %185 = call i32 @spa_vdev_exit(%struct.TYPE_28__* %181, %struct.TYPE_27__* %182, i64 %183, i32 %184)
  store i32 %185, i32* %3, align 4
  br label %274

186:                                              ; preds = %167
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %16, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %16, align 8
  br label %161

190:                                              ; preds = %161
  br label %191

191:                                              ; preds = %190, %155
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %15, align 4
  br label %111

195:                                              ; preds = %111
  br label %196

196:                                              ; preds = %195, %104
  store i32 0, i32* %18, align 4
  br label %197

197:                                              ; preds = %226, %196
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp slt i64 %199, %202
  br i1 %203, label %204, label %229

204:                                              ; preds = %197
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %206, align 8
  %208 = load i32, i32* %18, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %207, i64 %209
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %210, align 8
  store %struct.TYPE_27__* %211, %struct.TYPE_27__** %10, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %214 = call i32 @vdev_remove_child(%struct.TYPE_27__* %212, %struct.TYPE_27__* %213)
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %223 = call i32 @vdev_add_child(%struct.TYPE_27__* %221, %struct.TYPE_27__* %222)
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %225 = call i32 @vdev_config_dirty(%struct.TYPE_27__* %224)
  br label %226

226:                                              ; preds = %204
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %18, align 4
  br label %197

229:                                              ; preds = %197
  %230 = load i64, i64* %13, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %229
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 2
  %235 = load i32**, i32*** %11, align 8
  %236 = load i64, i64* %13, align 8
  %237 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %238 = call i32 @spa_set_aux_vdevs(%struct.TYPE_25__* %234, i32** %235, i64 %236, i32 %237)
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %240 = call i32 @spa_load_spares(%struct.TYPE_28__* %239)
  %241 = load i8*, i8** @B_TRUE, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  store i8* %241, i8** %244, align 8
  br label %245

245:                                              ; preds = %232, %229
  %246 = load i64, i64* %14, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i32 0, i32 1
  %251 = load i32**, i32*** %12, align 8
  %252 = load i64, i64* %14, align 8
  %253 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %254 = call i32 @spa_set_aux_vdevs(%struct.TYPE_25__* %250, i32** %251, i64 %252, i32 %253)
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %256 = call i32 @spa_load_l2cache(%struct.TYPE_28__* %255)
  %257 = load i8*, i8** @B_TRUE, align 8
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 0
  store i8* %257, i8** %260, align 8
  br label %261

261:                                              ; preds = %248, %245
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %264 = load i64, i64* %6, align 8
  %265 = call i32 @spa_vdev_exit(%struct.TYPE_28__* %262, %struct.TYPE_27__* %263, i64 %264, i32 0)
  %266 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %268 = load i32, i32* @SPA_CONFIG_UPDATE_POOL, align 4
  %269 = call i32 @spa_config_update(%struct.TYPE_28__* %267, i32 %268)
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %271 = load i32, i32* @ESC_ZFS_VDEV_ADD, align 4
  %272 = call i32 @spa_event_notify(%struct.TYPE_28__* %270, i32* null, i32* null, i32 %271)
  %273 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %261, %180, %149, %138, %93, %80, %63, %32
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_28__*) #1

declare dso_local i64 @spa_vdev_enter(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_config_parse(%struct.TYPE_28__*, %struct.TYPE_27__**, i32*, i32*, i32, i32) #1

declare dso_local i32 @spa_vdev_exit(%struct.TYPE_28__*, %struct.TYPE_27__*, i64, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @vdev_create(%struct.TYPE_27__*, i64, i32) #1

declare dso_local i32 @spa_validate_aux(%struct.TYPE_28__*, i32*, i64, i32) #1

declare dso_local i32 @vdev_remove_child(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @vdev_add_child(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_27__*) #1

declare dso_local i32 @spa_set_aux_vdevs(%struct.TYPE_25__*, i32**, i64, i32) #1

declare dso_local i32 @spa_load_spares(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_load_l2cache(%struct.TYPE_28__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_config_update(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_28__*, i32*, i32*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
