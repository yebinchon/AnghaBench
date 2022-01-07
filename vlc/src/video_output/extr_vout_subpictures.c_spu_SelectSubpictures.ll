; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_SelectSubpictures.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_SelectSubpictures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.spu_channel* }
%struct.spu_channel = type { i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_17__* }

@VOUT_SPU_CHANNEL_OSD_COUNT = common dso_local global i64 0, align 8
@INT64_MIN = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (%struct.TYPE_16__*, i64, i64, i32, i64*)* @spu_SelectSubpictures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @spu_SelectSubpictures(%struct.TYPE_16__* %0, i64 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.spu_channel*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca %struct.TYPE_15__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_17__*, align 8
  %33 = alloca %struct.TYPE_15__*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %12, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VOUT_SPU_CHANNEL_OSD_COUNT, align 8
  %47 = icmp sge i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i64*, i64** %11, align 8
  store i64 0, i64* %50, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %51

51:                                               ; preds = %70, %5
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.spu_channel*, %struct.spu_channel** %61, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %62, i64 %63
  %65 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %13, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %58
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %14, align 8
  br label %51

73:                                               ; preds = %51
  %74 = load i64, i64* %13, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  br label %393

77:                                               ; preds = %73
  %78 = load i64, i64* %13, align 8
  %79 = call %struct.TYPE_17__* @vlc_alloc(i64 %78, i32 32)
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %15, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %81 = icmp ne %struct.TYPE_17__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  br label %393

83:                                               ; preds = %77
  store i64 0, i64* %16, align 8
  br label %84

84:                                               ; preds = %385, %83
  %85 = load i64, i64* %16, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %85, %89
  br i1 %90, label %91, label %388

91:                                               ; preds = %84
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load %struct.spu_channel*, %struct.spu_channel** %94, align 8
  %96 = load i64, i64* %16, align 8
  %97 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %95, i64 %96
  store %struct.spu_channel* %97, %struct.spu_channel** %17, align 8
  %98 = load i64, i64* %9, align 8
  store i64 %98, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %99 = load i64, i64* @INT64_MIN, align 8
  store i64 %99, i64* %21, align 8
  %100 = load i64, i64* @INT64_MIN, align 8
  store i64 %100, i64* %22, align 8
  %101 = load %struct.spu_channel*, %struct.spu_channel** %17, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @spu_channel_UpdateDates(%struct.spu_channel* %101, i64 %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  br label %385

106:                                              ; preds = %91
  store i64 0, i64* %23, align 8
  br label %107

107:                                              ; preds = %231, %106
  %108 = load i64, i64* %23, align 8
  %109 = load %struct.spu_channel*, %struct.spu_channel** %17, align 8
  %110 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %108, %112
  br i1 %113, label %114, label %234

114:                                              ; preds = %107
  %115 = load %struct.spu_channel*, %struct.spu_channel** %17, align 8
  %116 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = load i64, i64* %23, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i64 %119
  store %struct.TYPE_17__* %120, %struct.TYPE_17__** %24, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  store %struct.TYPE_15__* %123, %struct.TYPE_15__** %25, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %125 = load %struct.spu_channel*, %struct.spu_channel** %17, align 8
  %126 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @spu_render_entry_IsSelected(%struct.TYPE_17__* %124, i32 %127, i64 %128, i64 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %114
  br label %231

134:                                              ; preds = %114
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i64, i64* %9, align 8
  br label %143

141:                                              ; preds = %134
  %142 = load i64, i64* %8, align 8
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i64 [ %140, %139 ], [ %142, %141 ]
  store i64 %144, i64* %28, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %151

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %149
  %152 = phi i64* [ %19, %149 ], [ %20, %150 ]
  store i64* %152, i64** %29, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %159

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %157
  %160 = phi i64* [ %21, %157 ], [ %22, %158 ]
  store i64* %160, i64** %30, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %29, align 8
  %165 = load i64, i64* %164, align 8
  %166 = icmp sge i64 %163, %165
  br i1 %166, label %167, label %184

167:                                              ; preds = %159
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** %29, align 8
  store i64 %170, i64* %171, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64*, i64** %30, align 8
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %174, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %167
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64*, i64** %30, align 8
  store i64 %181, i64* %182, align 8
  br label %183

183:                                              ; preds = %178, %167
  br label %184

184:                                              ; preds = %183, %159
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp sgt i64 %192, %195
  br label %197

197:                                              ; preds = %189, %184
  %198 = phi i1 [ true, %184 ], [ %196, %189 ]
  %199 = zext i1 %198 to i32
  store i32 %199, i32* %26, align 4
  %200 = load i32, i32* %26, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %28, align 8
  %207 = icmp sle i64 %205, %206
  br label %208

208:                                              ; preds = %202, %197
  %209 = phi i1 [ false, %197 ], [ %207, %202 ]
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %27, align 4
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %208
  %216 = load i32, i32* %27, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %215
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %218
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %18, align 8
  br label %227

227:                                              ; preds = %223, %218, %215, %208
  %228 = load i32, i32* %27, align 4
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %227, %133
  %232 = load i64, i64* %23, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %23, align 8
  br label %107

234:                                              ; preds = %107
  %235 = load i64, i64* %18, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp slt i64 %235, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %234
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %18, align 8
  br label %244

244:                                              ; preds = %240, %234
  %245 = load i64, i64* %18, align 8
  %246 = icmp sle i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = load i64, i64* @INT64_MAX, align 8
  store i64 %248, i64* %18, align 8
  br label %249

249:                                              ; preds = %247, %244
  store i64 0, i64* %31, align 8
  br label %250

250:                                              ; preds = %383, %279, %249
  %251 = load i64, i64* %31, align 8
  %252 = load %struct.spu_channel*, %struct.spu_channel** %17, align 8
  %253 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp ult i64 %251, %255
  br i1 %256, label %257, label %384

257:                                              ; preds = %250
  %258 = load %struct.spu_channel*, %struct.spu_channel** %17, align 8
  %259 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %260, align 8
  %262 = load i64, i64* %31, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i64 %262
  store %struct.TYPE_17__* %263, %struct.TYPE_17__** %32, align 8
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 4
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %265, align 8
  store %struct.TYPE_15__* %266, %struct.TYPE_15__** %33, align 8
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  store i32 %269, i32* %34, align 4
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %271 = load %struct.spu_channel*, %struct.spu_channel** %17, align 8
  %272 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i64, i64* %8, align 8
  %275 = load i64, i64* %9, align 8
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @spu_render_entry_IsSelected(%struct.TYPE_17__* %270, i32 %273, i64 %274, i64 %275, i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %257
  %280 = load i64, i64* %31, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %31, align 8
  br label %250

282:                                              ; preds = %257
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %282
  %288 = load i64, i64* %18, align 8
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = call i64 @__MAX(i64 %288, i64 %291)
  br label %295

293:                                              ; preds = %282
  %294 = load i64, i64* %8, align 8
  br label %295

295:                                              ; preds = %293, %287
  %296 = phi i64 [ %292, %287 ], [ %294, %293 ]
  store i64 %296, i64* %35, align 8
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %295
  %302 = load i64, i64* %19, align 8
  br label %305

303:                                              ; preds = %295
  %304 = load i64, i64* %20, align 8
  br label %305

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %302, %301 ], [ %304, %303 ]
  store i64 %306, i64* %36, align 8
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %305
  %312 = load i64, i64* %21, align 8
  br label %315

313:                                              ; preds = %305
  %314 = load i64, i64* %22, align 8
  br label %315

315:                                              ; preds = %313, %311
  %316 = phi i64 [ %312, %311 ], [ %314, %313 ]
  store i64 %316, i64* %37, align 8
  %317 = load i32, i32* %34, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %315
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* %35, align 8
  %324 = icmp sle i64 %322, %323
  br label %325

325:                                              ; preds = %319, %315
  %326 = phi i1 [ false, %315 ], [ %324, %319 ]
  %327 = zext i1 %326 to i32
  store i32 %327, i32* %38, align 4
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %354

332:                                              ; preds = %325
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* %36, align 8
  %337 = icmp slt i64 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %332
  store i32 1, i32* %38, align 4
  br label %353

339:                                              ; preds = %332
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* %36, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %352

345:                                              ; preds = %339
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* %37, align 8
  %350 = icmp slt i64 %348, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  store i32 1, i32* %38, align 4
  br label %352

352:                                              ; preds = %351, %345, %339
  br label %353

353:                                              ; preds = %352, %338
  br label %354

354:                                              ; preds = %353, %325
  %355 = load i32, i32* %38, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %367

357:                                              ; preds = %354
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %359 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %360 = call i32 @spu_PrerenderCancel(%struct.TYPE_18__* %358, %struct.TYPE_15__* %359)
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %362 = call i32 @subpicture_Delete(%struct.TYPE_15__* %361)
  %363 = load %struct.spu_channel*, %struct.spu_channel** %17, align 8
  %364 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %363, i32 0, i32 1
  %365 = load i64, i64* %31, align 8
  %366 = call i32 @vlc_vector_remove(%struct.TYPE_19__* %364, i64 %365)
  br label %383

367:                                              ; preds = %354
  %368 = load %struct.spu_channel*, %struct.spu_channel** %17, align 8
  %369 = getelementptr inbounds %struct.spu_channel, %struct.spu_channel* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 3
  store i32 %370, i32* %372, align 4
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %374 = load i64*, i64** %11, align 8
  %375 = load i64, i64* %374, align 8
  %376 = add i64 %375, 1
  store i64 %376, i64* %374, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i64 %375
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %379 = bitcast %struct.TYPE_17__* %377 to i8*
  %380 = bitcast %struct.TYPE_17__* %378 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %379, i8* align 8 %380, i64 32, i1 false)
  %381 = load i64, i64* %31, align 8
  %382 = add i64 %381, 1
  store i64 %382, i64* %31, align 8
  br label %383

383:                                              ; preds = %367, %357
  br label %250

384:                                              ; preds = %250
  br label %385

385:                                              ; preds = %384, %105
  %386 = load i64, i64* %16, align 8
  %387 = add i64 %386, 1
  store i64 %387, i64* %16, align 8
  br label %84

388:                                              ; preds = %84
  %389 = load i64, i64* %9, align 8
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 0
  store i64 %389, i64* %391, align 8
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %392, %struct.TYPE_17__** %6, align 8
  br label %393

393:                                              ; preds = %388, %82, %76
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  ret %struct.TYPE_17__* %394
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_17__* @vlc_alloc(i64, i32) #1

declare dso_local i64 @spu_channel_UpdateDates(%struct.spu_channel*, i64) #1

declare dso_local i32 @spu_render_entry_IsSelected(%struct.TYPE_17__*, i32, i64, i64, i32) #1

declare dso_local i64 @__MAX(i64, i64) #1

declare dso_local i32 @spu_PrerenderCancel(%struct.TYPE_18__*, %struct.TYPE_15__*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_15__*) #1

declare dso_local i32 @vlc_vector_remove(%struct.TYPE_19__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
