; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_alloc_dva.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_metaslab_alloc_dva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i32, %struct.TYPE_14__, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, i32, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@metaslab_force_ganging = common dso_local global i64 0, align 8
@TRACE_FORCE_GANG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@METASLAB_HINTBP_AVOID = common dso_local global i32 0, align 4
@METASLAB_FASTWRITE = common dso_local global i32 0, align 4
@SCL_ZIO = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@TRACE_NOT_ALLOCATABLE = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@TRACE_VDEV_ERROR = common dso_local global i32 0, align 4
@metaslab_bias_enabled = common dso_local global i64 0, align 8
@METASLAB_GANG_HEADER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@TRACE_ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metaslab_alloc_dva(i32* %0, %struct.TYPE_16__* %1, i64 %2, i32* %3, i32 %4, i32* %5, i64 %6, i32 %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca %struct.TYPE_15__*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_14__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  %34 = load i64, i64* @B_FALSE, align 8
  store i64 %34, i64* %26, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @DVA_IS_VALID(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* @metaslab_force_ganging, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %10
  %48 = call i32 @spa_get_random(i32 100)
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32*, i32** %20, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @TRACE_FORCE_GANG, align 4
  %55 = load i32, i32* %21, align 4
  %56 = call i32 @metaslab_trace_add(i32* %51, %struct.TYPE_15__* null, i32* null, i64 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = call i32 @SET_ERROR(i32 %57)
  store i32 %58, i32* %11, align 4
  br label %460

59:                                               ; preds = %47, %10
  %60 = load i32*, i32** %17, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %100

62:                                               ; preds = %59
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @DVA_GET_VDEV(i32* %67)
  %69 = call %struct.TYPE_13__* @vdev_lookup_top(i32* %63, i32 %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %25, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %62
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = icmp ne %struct.TYPE_15__* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 6
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %22, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @METASLAB_HINTBP_AVOID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = icmp ne %struct.TYPE_15__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %22, align 8
  br label %94

94:                                               ; preds = %90, %85, %77
  br label %99

95:                                               ; preds = %72, %62
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %22, align 8
  br label %99

99:                                               ; preds = %95, %94
  br label %162

100:                                              ; preds = %59
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = call i32 @DVA_GET_VDEV(i32* %109)
  %111 = call %struct.TYPE_13__* @vdev_lookup_top(i32* %104, i32 %110)
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %25, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %22, align 8
  br label %161

117:                                              ; preds = %100
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* @METASLAB_FASTWRITE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %117
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %22, align 8
  br label %126

126:                                              ; preds = %141, %122
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 6
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 6
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %131, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %22, align 8
  br label %140

140:                                              ; preds = %138, %126
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  store %struct.TYPE_15__* %144, %struct.TYPE_15__** %23, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = icmp ne %struct.TYPE_15__* %144, %147
  br i1 %148, label %126, label %149

149:                                              ; preds = %141
  br label %160

150:                                              ; preds = %117
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = icmp ne %struct.TYPE_15__* %153, null
  %155 = zext i1 %154 to i32
  %156 = call i32 @ASSERT(i32 %155)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  store %struct.TYPE_15__* %159, %struct.TYPE_15__** %22, align 8
  br label %160

160:                                              ; preds = %150, %149
  br label %161

161:                                              ; preds = %160, %103
  br label %162

162:                                              ; preds = %161, %99
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %167 = icmp ne %struct.TYPE_16__* %165, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %162
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sle i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168, %162
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  store %struct.TYPE_15__* %176, %struct.TYPE_15__** %22, align 8
  br label %177

177:                                              ; preds = %173, %168
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %178, %struct.TYPE_15__** %24, align 8
  br label %179

179:                                              ; preds = %443, %177
  br label %180

180:                                              ; preds = %434, %179
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 1
  %185 = zext i1 %184 to i32
  %186 = call i32 @ASSERT(i32 %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 6
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  store %struct.TYPE_13__* %189, %struct.TYPE_13__** %25, align 8
  %190 = load i64, i64* %26, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %180
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* @SCL_ZIO, align 4
  %195 = load i32, i32* @FTAG, align 4
  %196 = load i32, i32* @RW_READER, align 4
  %197 = call i32 @spa_config_enter(i32* %193, i32 %194, i32 %195, i32 %196)
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %199 = call i64 @vdev_allocatable(%struct.TYPE_13__* %198)
  store i64 %199, i64* %27, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = load i32, i32* @SCL_ZIO, align 4
  %202 = load i32, i32* @FTAG, align 4
  %203 = call i32 @spa_config_exit(i32* %200, i32 %201, i32 %202)
  br label %207

204:                                              ; preds = %180
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %206 = call i64 @vdev_allocatable(%struct.TYPE_13__* %205)
  store i64 %206, i64* %27, align 8
  br label %207

207:                                              ; preds = %204, %192
  %208 = load i64, i64* %27, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %207
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @GANG_ALLOCATION(i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %210
  %215 = load i64, i64* %26, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %214
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %220 = load i64, i64* %14, align 8
  %221 = load i32, i32* %21, align 4
  %222 = load i32, i32* %16, align 4
  %223 = call i64 @metaslab_group_allocatable(%struct.TYPE_15__* %218, %struct.TYPE_15__* %219, i64 %220, i32 %221, i32 %222)
  store i64 %223, i64* %27, align 8
  br label %224

224:                                              ; preds = %217, %214, %210, %207
  %225 = load i64, i64* %27, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %235, label %227

227:                                              ; preds = %224
  %228 = load i32*, i32** %20, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %230 = load i64, i64* %14, align 8
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* @TRACE_NOT_ALLOCATABLE, align 4
  %233 = load i32, i32* %21, align 4
  %234 = call i32 @metaslab_trace_add(i32* %228, %struct.TYPE_15__* %229, i32* null, i64 %230, i32 %231, i32 %232, i32 %233)
  br label %426

235:                                              ; preds = %224
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @ASSERT(i32 %238)
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp sgt i64 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %235
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %250 = icmp slt i64 %248, %249
  br i1 %250, label %251, label %270

251:                                              ; preds = %245, %235
  %252 = load i32, i32* %16, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %270

254:                                              ; preds = %251
  %255 = load i64, i64* %26, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %270, label %257

257:                                              ; preds = %254
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %257
  %263 = load i32*, i32** %20, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %265 = load i64, i64* %14, align 8
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* @TRACE_VDEV_ERROR, align 4
  %268 = load i32, i32* %21, align 4
  %269 = call i32 @metaslab_trace_add(i32* %263, %struct.TYPE_15__* %264, i32* null, i64 %265, i32 %266, i32 %267, i32 %268)
  br label %426

270:                                              ; preds = %257, %254, %251, %245
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 5
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %272, align 8
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %275 = icmp eq %struct.TYPE_16__* %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @ASSERT(i32 %276)
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %279 = load i64, i64* %14, align 8
  %280 = call i64 @vdev_psize_to_asize(%struct.TYPE_13__* %278, i64 %279)
  store i64 %280, i64* %28, align 8
  %281 = load i64, i64* %28, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = shl i64 1, %284
  %286 = call i64 @P2PHASE(i64 %281, i64 %285)
  %287 = icmp eq i64 %286, 0
  %288 = zext i1 %287 to i32
  %289 = call i32 @ASSERT(i32 %288)
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %291 = load i32*, i32** %20, align 8
  %292 = load i64, i64* %28, align 8
  %293 = load i64, i64* %18, align 8
  %294 = load i64, i64* %26, align 8
  %295 = icmp ne i64 %294, 0
  %296 = xor i1 %295, true
  %297 = zext i1 %296 to i32
  %298 = load i32*, i32** %15, align 8
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* %21, align 4
  %301 = load i64, i64* %26, align 8
  %302 = call i64 @metaslab_group_alloc(%struct.TYPE_15__* %290, i32* %291, i64 %292, i64 %293, i32 %297, i32* %298, i32 %299, i32 %300, i64 %301)
  store i64 %302, i64* %29, align 8
  %303 = load i64, i64* %29, align 8
  %304 = icmp ne i64 %303, -1
  br i1 %304, label %305, label %425

305:                                              ; preds = %270
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %349

310:                                              ; preds = %305
  %311 = load i64, i64* @metaslab_bias_enabled, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %349

313:                                              ; preds = %310
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 5
  store %struct.TYPE_14__* %315, %struct.TYPE_14__** %30, align 8
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = sub nsw i32 %318, %321
  store i32 %322, i32* %31, align 4
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %325, %328
  store i32 %329, i32* %32, align 4
  %330 = load i32, i32* %31, align 4
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = mul nsw i32 %330, %333
  %335 = mul nsw i32 %334, 100
  %336 = load i32, i32* %32, align 4
  %337 = add nsw i32 %336, 1
  %338 = sdiv i32 %335, %337
  store i32 %338, i32* %33, align 4
  %339 = load i32, i32* %33, align 4
  %340 = sub nsw i32 %339, 100
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = trunc i64 %343 to i32
  %345 = mul nsw i32 %340, %344
  %346 = sdiv i32 %345, 100
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 2
  store i32 %346, i32* %348, align 8
  br label %356

349:                                              ; preds = %310, %305
  %350 = load i64, i64* @metaslab_bias_enabled, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 2
  store i32 0, i32* %354, align 8
  br label %355

355:                                              ; preds = %352, %349
  br label %356

356:                                              ; preds = %355, %313
  %357 = load i32, i32* %19, align 4
  %358 = load i32, i32* @METASLAB_FASTWRITE, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %375, label %361

361:                                              ; preds = %356
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 0
  %364 = load i64, i64* %28, align 8
  %365 = call i64 @atomic_add_64_nv(i64* %363, i64 %364)
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = sext i32 %371 to i64
  %373 = add nsw i64 %368, %372
  %374 = icmp sge i64 %365, %373
  br i1 %374, label %375, label %383

375:                                              ; preds = %361, %356
  %376 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 4
  %378 = load %struct.TYPE_15__*, %struct.TYPE_15__** %377, align 8
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 4
  store %struct.TYPE_15__* %378, %struct.TYPE_15__** %380, align 8
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 0
  store i64 0, i64* %382, align 8
  br label %383

383:                                              ; preds = %375, %361
  %384 = load i32*, i32** %15, align 8
  %385 = load i32, i32* %16, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @DVA_SET_VDEV(i32* %387, i32 %390)
  %392 = load i32*, i32** %15, align 8
  %393 = load i32, i32* %16, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i64, i64* %29, align 8
  %397 = call i32 @DVA_SET_OFFSET(i32* %395, i64 %396)
  %398 = load i32*, i32** %15, align 8
  %399 = load i32, i32* %16, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %19, align 4
  %403 = load i32, i32* @METASLAB_GANG_HEADER, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  %406 = zext i1 %405 to i64
  %407 = select i1 %405, i32 1, i32 0
  %408 = call i32 @DVA_SET_GANG(i32* %401, i32 %407)
  %409 = load i32*, i32** %15, align 8
  %410 = load i32, i32* %16, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i64, i64* %28, align 8
  %414 = call i32 @DVA_SET_ASIZE(i32* %412, i64 %413)
  %415 = load i32, i32* %19, align 4
  %416 = load i32, i32* @METASLAB_FASTWRITE, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %383
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 0
  %422 = load i64, i64* %14, align 8
  %423 = call i32 @atomic_add_64(i64* %421, i64 %422)
  br label %424

424:                                              ; preds = %419, %383
  store i32 0, i32* %11, align 4
  br label %460

425:                                              ; preds = %270
  br label %426

426:                                              ; preds = %425, %262, %227
  %427 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 4
  %429 = load %struct.TYPE_15__*, %struct.TYPE_15__** %428, align 8
  %430 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %431 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %430, i32 0, i32 4
  store %struct.TYPE_15__* %429, %struct.TYPE_15__** %431, align 8
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %433 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %432, i32 0, i32 0
  store i64 0, i64* %433, align 8
  br label %434

434:                                              ; preds = %426
  %435 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %435, i32 0, i32 4
  %437 = load %struct.TYPE_15__*, %struct.TYPE_15__** %436, align 8
  store %struct.TYPE_15__* %437, %struct.TYPE_15__** %22, align 8
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %439 = icmp ne %struct.TYPE_15__* %437, %438
  br i1 %439, label %180, label %440

440:                                              ; preds = %434
  %441 = load i64, i64* %26, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %445, label %443

443:                                              ; preds = %440
  %444 = load i64, i64* @B_TRUE, align 8
  store i64 %444, i64* %26, align 8
  br label %179

445:                                              ; preds = %440
  %446 = load i32*, i32** %15, align 8
  %447 = load i32, i32* %16, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = call i32 @bzero(i32* %449, i32 4)
  %451 = load i32*, i32** %20, align 8
  %452 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %453 = load i64, i64* %14, align 8
  %454 = load i32, i32* %16, align 4
  %455 = load i32, i32* @TRACE_ENOSPC, align 4
  %456 = load i32, i32* %21, align 4
  %457 = call i32 @metaslab_trace_add(i32* %451, %struct.TYPE_15__* %452, i32* null, i64 %453, i32 %454, i32 %455, i32 %456)
  %458 = load i32, i32* @ENOSPC, align 4
  %459 = call i32 @SET_ERROR(i32 %458)
  store i32 %459, i32* %11, align 4
  br label %460

460:                                              ; preds = %445, %424, %50
  %461 = load i32, i32* %11, align 4
  ret i32 %461
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DVA_IS_VALID(i32*) #1

declare dso_local i32 @spa_get_random(i32) #1

declare dso_local i32 @metaslab_trace_add(i32*, %struct.TYPE_15__*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_13__* @vdev_lookup_top(i32*, i32) #1

declare dso_local i32 @DVA_GET_VDEV(i32*) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i64 @vdev_allocatable(%struct.TYPE_13__*) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32 @GANG_ALLOCATION(i32) #1

declare dso_local i64 @metaslab_group_allocatable(%struct.TYPE_15__*, %struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i64 @vdev_psize_to_asize(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @P2PHASE(i64, i64) #1

declare dso_local i64 @metaslab_group_alloc(%struct.TYPE_15__*, i32*, i64, i64, i32, i32*, i32, i32, i64) #1

declare dso_local i64 @atomic_add_64_nv(i64*, i64) #1

declare dso_local i32 @DVA_SET_VDEV(i32*, i32) #1

declare dso_local i32 @DVA_SET_OFFSET(i32*, i64) #1

declare dso_local i32 @DVA_SET_GANG(i32*, i32) #1

declare dso_local i32 @DVA_SET_ASIZE(i32*, i64) #1

declare dso_local i32 @atomic_add_64(i64*, i64) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
