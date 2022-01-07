; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_Manage.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_Manage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__**, %struct.TYPE_13__**, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32*, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, %struct.TYPE_14__** }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@VLM_STOP_MEDIA_INSTANCE = common dso_local global i32 0, align 4
@VLM_START_MEDIA_BROADCAST_INSTANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Manage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Manage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %3, align 8
  store i64 0, i64* %6, align 8
  %25 = call i32 @time(i64* %4)
  br label %26

26:                                               ; preds = %411, %1
  store i8** null, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 6
  %29 = call i32 @vlc_mutex_lock(i32* %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  %32 = call i32 @mutex_cleanup_push(i32* %31)
  br label %33

33:                                               ; preds = %62, %26
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i1 [ false, %33 ], [ %41, %38 ]
  br i1 %43, label %44, label %63

44:                                               ; preds = %42
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 6
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @vlc_cond_timedwait_daytime(i32* %49, i32* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %9, align 4
  br label %62

56:                                               ; preds = %44
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  %61 = call i32 @vlc_cond_wait(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %56, %47
  br label %33

63:                                               ; preds = %42
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = call i32 (...) @vlc_cleanup_pop()
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 6
  %69 = call i32 @vlc_mutex_unlock(i32* %68)
  %70 = call i32 (...) @vlc_savecancel()
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = call i32 @vlc_mutex_lock(i32* %72)
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %186, %63
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %189

80:                                               ; preds = %74
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %83, i64 %85
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %184, %80
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %185

94:                                               ; preds = %88
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %97, i64 %99
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %14, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @vlc_player_Lock(i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @vlc_player_IsStarted(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %177, label %111

111:                                              ; preds = %94
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @vlc_player_Unlock(i32 %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %111
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %125
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %133, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %139, %132, %125, %111
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %15, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sge i32 %147, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %146, %140
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %155 = load i32, i32* @VLM_STOP_MEDIA_INSTANCE, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (%struct.TYPE_12__*, i32, i32, i32, ...) @vlm_ControlInternal(%struct.TYPE_12__* %154, i32 %155, i32 %159, i32 %162)
  br label %176

164:                                              ; preds = %146
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %166 = load i32, i32* @VLM_START_MEDIA_BROADCAST_INSTANCE, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %15, align 4
  %175 = call i32 (%struct.TYPE_12__*, i32, i32, i32, ...) @vlm_ControlInternal(%struct.TYPE_12__* %165, i32 %166, i32 %170, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %164, %153
  store i32 0, i32* %13, align 4
  br label %184

177:                                              ; preds = %94
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @vlc_player_Unlock(i32 %180)
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %184

184:                                              ; preds = %177, %176
  br label %88

185:                                              ; preds = %88
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %74

189:                                              ; preds = %74
  %190 = call i32 @time(i64* %5)
  store i64 0, i64* %6, align 8
  store i32 0, i32* %16, align 4
  br label %191

191:                                              ; preds = %389, %189
  %192 = load i32, i32* %16, align 4
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %392

197:                                              ; preds = %191
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %200, i64 %202
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %17, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 4
  %209 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %208, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %209, i64 %211
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %388

217:                                              ; preds = %197
  store i32 0, i32* %18, align 4
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %219, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %220, i64 %222
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %217
  %229 = load i64, i64* %5, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 4
  %232 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %232, i64 %234
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  store i64 %229, i64* %237, align 8
  %238 = load i64, i64* %5, align 8
  store i64 %238, i64* %17, align 8
  store i32 1, i32* %18, align 4
  br label %330

239:                                              ; preds = %217
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 4
  %242 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %241, align 8
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %242, i64 %244
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %329

250:                                              ; preds = %239
  store i32 0, i32* %19, align 4
  br label %251

251:                                              ; preds = %303, %250
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %253, align 8
  %255 = load i32, i32* %16, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %254, i64 %256
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* %19, align 4
  %262 = sext i32 %261 to i64
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %264, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %265, i64 %267
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = mul nsw i64 %262, %271
  %273 = add nsw i64 %260, %272
  %274 = load i64, i64* %4, align 8
  %275 = icmp sle i64 %273, %274
  br i1 %275, label %276, label %301

276:                                              ; preds = %251
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %278, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %279, i64 %281
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %19, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %299, label %288

288:                                              ; preds = %276
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 4
  %291 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %290, align 8
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %291, i64 %293
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = icmp slt i32 %297, 0
  br label %299

299:                                              ; preds = %288, %276
  %300 = phi i1 [ true, %276 ], [ %298, %288 ]
  br label %301

301:                                              ; preds = %299, %251
  %302 = phi i1 [ false, %251 ], [ %300, %299 ]
  br i1 %302, label %303, label %306

303:                                              ; preds = %301
  %304 = load i32, i32* %19, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %19, align 4
  br label %251

306:                                              ; preds = %301
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 4
  %309 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %308, align 8
  %310 = load i32, i32* %16, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %309, i64 %311
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i32, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 4
  %320 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %319, align 8
  %321 = load i32, i32* %16, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %320, i64 %322
  %324 = load %struct.TYPE_11__*, %struct.TYPE_11__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = mul nsw i64 %317, %326
  %328 = add nsw i64 %315, %327
  store i64 %328, i64* %17, align 8
  br label %329

329:                                              ; preds = %306, %239
  br label %330

330:                                              ; preds = %329, %228
  %331 = load i64, i64* %17, align 8
  %332 = load i64, i64* %5, align 8
  %333 = icmp sle i64 %331, %332
  br i1 %333, label %334, label %377

334:                                              ; preds = %330
  %335 = load i64, i64* %17, align 8
  %336 = load i64, i64* %4, align 8
  %337 = icmp sgt i64 %335, %336
  br i1 %337, label %341, label %338

338:                                              ; preds = %334
  %339 = load i32, i32* %18, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %376

341:                                              ; preds = %338, %334
  store i32 0, i32* %20, align 4
  br label %342

342:                                              ; preds = %372, %341
  %343 = load i32, i32* %20, align 4
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %345, align 8
  %347 = load i32, i32* %16, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %346, i64 %348
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = icmp slt i32 %343, %352
  br i1 %353, label %354, label %375

354:                                              ; preds = %342
  %355 = load i32, i32* %8, align 4
  %356 = load i8**, i8*** %7, align 8
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 4
  %359 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %358, align 8
  %360 = load i32, i32* %16, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %359, i64 %361
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 4
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %20, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = call i32 @strdup(i32 %369)
  %371 = call i32 @TAB_APPEND(i32 %355, i8** %356, i32 %370)
  br label %372

372:                                              ; preds = %354
  %373 = load i32, i32* %20, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %20, align 4
  br label %342

375:                                              ; preds = %342
  br label %376

376:                                              ; preds = %375, %338
  br label %387

377:                                              ; preds = %330
  %378 = load i64, i64* %6, align 8
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %384, label %380

380:                                              ; preds = %377
  %381 = load i64, i64* %17, align 8
  %382 = load i64, i64* %6, align 8
  %383 = icmp slt i64 %381, %382
  br i1 %383, label %384, label %386

384:                                              ; preds = %380, %377
  %385 = load i64, i64* %17, align 8
  store i64 %385, i64* %6, align 8
  br label %386

386:                                              ; preds = %384, %380
  br label %387

387:                                              ; preds = %386, %376
  br label %388

388:                                              ; preds = %387, %197
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %16, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %16, align 4
  br label %191

392:                                              ; preds = %191
  br label %393

393:                                              ; preds = %396, %392
  %394 = load i32, i32* %8, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %411

396:                                              ; preds = %393
  store i32* null, i32** %21, align 8
  %397 = load i8**, i8*** %7, align 8
  %398 = getelementptr inbounds i8*, i8** %397, i64 0
  %399 = load i8*, i8** %398, align 8
  store i8* %399, i8** %22, align 8
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %401 = load i8*, i8** %22, align 8
  %402 = call i32 @ExecuteCommand(%struct.TYPE_12__* %400, i8* %401, i32** %21)
  %403 = load i32*, i32** %21, align 8
  %404 = call i32 @vlm_MessageDelete(i32* %403)
  %405 = load i32, i32* %8, align 4
  %406 = load i8**, i8*** %7, align 8
  %407 = load i8*, i8** %22, align 8
  %408 = call i32 @TAB_REMOVE(i32 %405, i8** %406, i8* %407)
  %409 = load i8*, i8** %22, align 8
  %410 = call i32 @free(i8* %409)
  br label %393

411:                                              ; preds = %393
  %412 = load i64, i64* %5, align 8
  store i64 %412, i64* %4, align 8
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 3
  %415 = call i32 @vlc_mutex_unlock(i32* %414)
  %416 = load i32, i32* %10, align 4
  %417 = call i32 @vlc_restorecancel(i32 %416)
  br label %26
}

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @mutex_cleanup_push(i32*) #1

declare dso_local i64 @vlc_cond_timedwait_daytime(i32*, i32*, i64) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_player_Lock(i32) #1

declare dso_local i32 @vlc_player_IsStarted(i32) #1

declare dso_local i32 @vlc_player_Unlock(i32) #1

declare dso_local i32 @vlm_ControlInternal(%struct.TYPE_12__*, i32, i32, i32, ...) #1

declare dso_local i32 @TAB_APPEND(i32, i8**, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @ExecuteCommand(%struct.TYPE_12__*, i8*, i32**) #1

declare dso_local i32 @vlm_MessageDelete(i32*) #1

declare dso_local i32 @TAB_REMOVE(i32, i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
