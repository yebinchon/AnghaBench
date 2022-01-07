; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_sa.c_sa_build_layouts.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_sa.c_sa_build_layouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_35__*, i32*, %struct.TYPE_28__*, i32*, %struct.TYPE_28__* }
%struct.TYPE_35__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_34__ = type { i64, i64, i32, i32, i64, i8* }
%struct.TYPE_32__ = type { i64*, i32 }
%struct.TYPE_31__ = type { i32 }

@SA_BONUS = common dso_local global i64 0, align 8
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@DMU_OT_ZNODE = common dso_local global i64 0, align 8
@DMU_OT_SA = common dso_local global i64 0, align 8
@SA_SPILL = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@SA_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32*)* @sa_build_layouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_build_layouts(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_31__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  store %struct.TYPE_30__* %36, %struct.TYPE_30__** %10, align 8
  store i32 0, i32* %22, align 4
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %38, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @dmu_buf_will_dirty(%struct.TYPE_28__* %39, i32* %40)
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %43, align 8
  %45 = call i64 @SA_BONUSTYPE_FROM_DB(%struct.TYPE_28__* %44)
  store i64 %45, i64* %24, align 8
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %47, align 8
  %49 = call i32 @dmu_object_dnsize_from_db(%struct.TYPE_28__* %48, i32* %19)
  %50 = load i32, i32* %19, align 4
  %51 = call i32 @DN_BONUS_SIZE(i32 %50)
  store i32 %51, i32* %28, align 4
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %53 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %56, align 8
  %58 = load i64, i64* @SA_BONUS, align 8
  %59 = load i32, i32* %28, align 4
  %60 = call i32 @sa_find_sizes(%struct.TYPE_30__* %52, %struct.TYPE_34__* %53, i32 %54, %struct.TYPE_28__* %57, i64 %58, i32 %59, i32* %20, i32* %23, i64* %29)
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %23, align 4
  %62 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %4
  %65 = load i32, i32* @EFBIG, align 4
  %66 = call i32 @SET_ERROR(i32 %65)
  store i32 %66, i32* %5, align 4
  br label %482

67:                                               ; preds = %4
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %69, align 8
  %71 = load i64, i64* %29, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i32, i32* %28, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @MIN(i32 %77, i32 %80)
  br label %86

82:                                               ; preds = %67
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %21, align 4
  %85 = add nsw i32 %83, %84
  br label %86

86:                                               ; preds = %82, %73
  %87 = phi i32 [ %81, %73 ], [ %85, %82 ]
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @dmu_set_bonus(%struct.TYPE_28__* %70, i32 %87, i32* %88)
  %90 = call i32 @VERIFY0(i32 %89)
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* @DMU_OT_ZNODE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i64, i64* %29, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94, %86
  %98 = load i64, i64* %24, align 8
  %99 = load i64, i64* @DMU_OT_SA, align 8
  %100 = icmp eq i64 %98, %99
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i1 [ true, %94 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  %105 = load i64, i64* %29, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %173

107:                                              ; preds = %101
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %109, align 8
  %111 = icmp eq %struct.TYPE_28__* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %114, align 8
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 2
  %118 = call i64 @dmu_spill_hold_by_bonus(%struct.TYPE_28__* %115, i32 0, i32* null, %struct.TYPE_28__** %117)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @VERIFY(i32 %120)
  br label %122

122:                                              ; preds = %112, %107
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %124, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @dmu_buf_will_dirty(%struct.TYPE_28__* %125, i32* %126)
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i64 %131
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %20, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %137, align 8
  %139 = load i64, i64* @SA_SPILL, align 8
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @sa_find_sizes(%struct.TYPE_30__* %128, %struct.TYPE_34__* %132, i32 %135, %struct.TYPE_28__* %138, i64 %139, i32 %144, i32* %17, i32* %27, i64* %30)
  store i32 %145, i32* %22, align 4
  %146 = load i32, i32* %27, align 4
  %147 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %122
  %150 = load i32, i32* @EFBIG, align 4
  %151 = call i32 @SET_ERROR(i32 %150)
  store i32 %151, i32* %5, align 4
  br label %482

152:                                              ; preds = %122
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %22, align 4
  %155 = call i32 @BUF_SPACE_NEEDED(i32 %153, i32 %154)
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp sgt i32 %155, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %152
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %164 = load i32, i32* %27, align 4
  %165 = load i32, i32* %22, align 4
  %166 = call i32 @BUF_SPACE_NEEDED(i32 %164, i32 %165)
  %167 = load i32*, i32** %9, align 8
  %168 = call i64 @sa_resize_spill(%struct.TYPE_33__* %163, i32 %166, i32* %167)
  %169 = icmp eq i64 0, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @VERIFY(i32 %170)
  br label %172

172:                                              ; preds = %162, %152
  br label %173

173:                                              ; preds = %172, %101
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %21, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %178, %180
  %182 = inttoptr i64 %181 to i8*
  store i8* %182, i8** %14, align 8
  %183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %188, %struct.TYPE_32__** %13, align 8
  %189 = load i64, i64* @SA_BONUS, align 8
  store i64 %189, i64* %12, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 8, %191
  %193 = trunc i64 %192 to i32
  %194 = load i32, i32* @KM_SLEEP, align 4
  %195 = call i64* @kmem_alloc(i32 %193, i32 %194)
  store i64* %195, i64** %15, align 8
  store i64* %195, i64** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %26, align 4
  store i64 -1, i64* %11, align 8
  br label %196

196:                                              ; preds = %353, %173
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %356

200:                                              ; preds = %196
  %201 = load i8*, i8** %14, align 8
  %202 = call i32 @IS_P2ALIGNED(i8* %201, i32 8)
  %203 = call i32 @ASSERT(i32 %202)
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %15, align 8
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  store i64 %209, i64* %213, align 8
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %215 = load i64*, i64** %15, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @SA_REGISTERED_LEN(%struct.TYPE_30__* %214, i64 %219)
  store i64 %220, i64* %31, align 8
  %221 = load i64, i64* %31, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %200
  %224 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %31, align 8
  br label %230

230:                                              ; preds = %223, %200
  %231 = load i64, i64* %29, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %287

233:                                              ; preds = %230
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %20, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %287

237:                                              ; preds = %233
  %238 = load i64, i64* %24, align 8
  %239 = load i64, i64* @DMU_OT_SA, align 8
  %240 = icmp eq i64 %238, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 @VERIFY(i32 %241)
  %243 = load i64, i64* %12, align 8
  %244 = load i64, i64* @SA_BONUS, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %266

246:                                              ; preds = %237
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %266, label %251

251:                                              ; preds = %246
  %252 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_35__*, %struct.TYPE_35__** %253, align 8
  %255 = load i64, i64* %11, align 8
  %256 = load i64*, i64** %16, align 8
  %257 = load i32, i32* %18, align 4
  %258 = load i32*, i32** %9, align 8
  %259 = call i32 @sa_find_layout(%struct.TYPE_35__* %254, i64 %255, i64* %256, i32 %257, i32* %258, %struct.TYPE_31__** %25)
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %21, align 4
  %265 = call i32 @SA_SET_HDR(%struct.TYPE_32__* %260, i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %251, %246, %237
  %267 = load i64, i64* @SA_SPILL, align 8
  store i64 %267, i64* %12, align 8
  store i64 -1, i64* %11, align 8
  store i32 0, i32* %26, align 4
  %268 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = inttoptr i64 %272 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %273, %struct.TYPE_32__** %13, align 8
  %274 = load i32, i32* @SA_MAGIC, align 4
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 8
  %277 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %278 = ptrtoint %struct.TYPE_32__* %277 to i64
  %279 = load i32, i32* %22, align 4
  %280 = sext i32 %279 to i64
  %281 = add i64 %278, %280
  %282 = inttoptr i64 %281 to i8*
  store i8* %282, i8** %14, align 8
  %283 = load i64*, i64** %15, align 8
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  store i64* %286, i64** %16, align 8
  store i32 0, i32* %18, align 4
  br label %287

287:                                              ; preds = %266, %233, %230
  %288 = load i64*, i64** %15, align 8
  %289 = load i32, i32* %17, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  %292 = load i64, i64* %291, align 8
  %293 = call i64 @SA_ATTR_HASH(i64 %292)
  %294 = load i64, i64* %11, align 8
  %295 = xor i64 %294, %293
  store i64 %295, i64* %11, align 8
  %296 = load i8*, i8** %14, align 8
  %297 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %298 = load i32, i32* %17, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %300, i32 0, i32 5
  store i8* %296, i8** %301, align 8
  %302 = load i64, i64* %31, align 8
  %303 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %304 = load i32, i32* %17, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %306, i32 0, i32 4
  store i64 %302, i64* %307, align 8
  %308 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %309 = load i32, i32* %17, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load i8*, i8** %14, align 8
  %321 = load i64, i64* %31, align 8
  %322 = call i32 @SA_COPY_DATA(i32 %313, i32 %319, i8* %320, i64 %321)
  %323 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %324, align 8
  %326 = load i64*, i64** %15, align 8
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i64, i64* %326, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %287
  %336 = load i64, i64* %31, align 8
  %337 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %337, i32 0, i32 0
  %339 = load i64*, i64** %338, align 8
  %340 = load i32, i32* %26, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %26, align 4
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i64, i64* %339, i64 %342
  store i64 %336, i64* %343, align 8
  br label %344

344:                                              ; preds = %335, %287
  %345 = load i8*, i8** %14, align 8
  %346 = ptrtoint i8* %345 to i64
  %347 = load i64, i64* %31, align 8
  %348 = add i64 %346, %347
  %349 = call i64 @P2ROUNDUP(i64 %348, i32 8)
  %350 = inttoptr i64 %349 to i8*
  store i8* %350, i8** %14, align 8
  %351 = load i32, i32* %18, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %18, align 4
  br label %353

353:                                              ; preds = %344
  %354 = load i32, i32* %17, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %17, align 4
  br label %196

356:                                              ; preds = %196
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_35__*, %struct.TYPE_35__** %358, align 8
  %360 = load i64, i64* %11, align 8
  %361 = load i64*, i64** %16, align 8
  %362 = load i32, i32* %18, align 4
  %363 = load i32*, i32** %9, align 8
  %364 = call i32 @sa_find_layout(%struct.TYPE_35__* %359, i64 %360, i64* %361, i32 %362, i32* %363, %struct.TYPE_31__** %25)
  %365 = load i64, i64* %24, align 8
  %366 = load i64, i64* @DMU_OT_ZNODE, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %373

368:                                              ; preds = %356
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %384, label %373

373:                                              ; preds = %368, %356
  %374 = load i64, i64* %24, align 8
  %375 = load i64, i64* @DMU_OT_SA, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %382

377:                                              ; preds = %373
  %378 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = icmp sgt i32 %380, 1
  br label %382

382:                                              ; preds = %377, %373
  %383 = phi i1 [ false, %373 ], [ %381, %377 ]
  br label %384

384:                                              ; preds = %382, %368
  %385 = phi i1 [ true, %368 ], [ %383, %382 ]
  %386 = zext i1 %385 to i32
  %387 = call i32 @VERIFY(i32 %386)
  %388 = load i64, i64* %24, align 8
  %389 = load i64, i64* @DMU_OT_SA, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %406

391:                                              ; preds = %384
  %392 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %393 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %394 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = load i64, i64* %12, align 8
  %397 = load i64, i64* @SA_BONUS, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %401

399:                                              ; preds = %391
  %400 = load i32, i32* %21, align 4
  br label %403

401:                                              ; preds = %391
  %402 = load i32, i32* %22, align 4
  br label %403

403:                                              ; preds = %401, %399
  %404 = phi i32 [ %400, %399 ], [ %402, %401 ]
  %405 = call i32 @SA_SET_HDR(%struct.TYPE_32__* %392, i32 %395, i32 %404)
  br label %406

406:                                              ; preds = %403, %384
  %407 = load i64*, i64** %15, align 8
  %408 = load i32, i32* %8, align 4
  %409 = sext i32 %408 to i64
  %410 = mul i64 8, %409
  %411 = trunc i64 %410 to i32
  %412 = call i32 @kmem_free(i64* %407, i32 %411)
  %413 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %413, i32 0, i32 3
  %415 = load i32*, i32** %414, align 8
  %416 = icmp ne i32* %415, null
  br i1 %416, label %417, label %427

417:                                              ; preds = %406
  %418 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %418, i32 0, i32 0
  %420 = load %struct.TYPE_35__*, %struct.TYPE_35__** %419, align 8
  %421 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %421, i32 0, i32 3
  %423 = load i32*, i32** %422, align 8
  %424 = call i32 @sa_idx_tab_rele(%struct.TYPE_35__* %420, i32* %423)
  %425 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %425, i32 0, i32 3
  store i32* null, i32** %426, align 8
  br label %427

427:                                              ; preds = %417, %406
  %428 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %439, label %432

432:                                              ; preds = %427
  %433 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %434 = load i64, i64* @SA_BONUS, align 8
  %435 = call i64 @sa_build_index(%struct.TYPE_33__* %433, i64 %434)
  %436 = icmp eq i64 0, %435
  %437 = zext i1 %436 to i32
  %438 = call i32 @VERIFY(i32 %437)
  br label %439

439:                                              ; preds = %432, %427
  %440 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %440, i32 0, i32 2
  %442 = load %struct.TYPE_28__*, %struct.TYPE_28__** %441, align 8
  %443 = icmp ne %struct.TYPE_28__* %442, null
  br i1 %443, label %444, label %481

444:                                              ; preds = %439
  %445 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %445, i32 0, i32 0
  %447 = load %struct.TYPE_35__*, %struct.TYPE_35__** %446, align 8
  %448 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = call i32 @sa_idx_tab_rele(%struct.TYPE_35__* %447, i32* %450)
  %452 = load i64, i64* %29, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %473, label %454

454:                                              ; preds = %444
  %455 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %455, i32 0, i32 2
  %457 = load %struct.TYPE_28__*, %struct.TYPE_28__** %456, align 8
  %458 = call i32 @dmu_buf_rele(%struct.TYPE_28__* %457, i32* null)
  %459 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %459, i32 0, i32 2
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %460, align 8
  %461 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %461, i32 0, i32 1
  store i32* null, i32** %462, align 8
  %463 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %463, i32 0, i32 0
  %465 = load %struct.TYPE_35__*, %struct.TYPE_35__** %464, align 8
  %466 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %467 = call i32 @sa_handle_object(%struct.TYPE_33__* %466)
  %468 = load i32*, i32** %9, align 8
  %469 = call i64 @dmu_rm_spill(%struct.TYPE_35__* %465, i32 %467, i32* %468)
  %470 = icmp eq i64 0, %469
  %471 = zext i1 %470 to i32
  %472 = call i32 @VERIFY(i32 %471)
  br label %480

473:                                              ; preds = %444
  %474 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %475 = load i64, i64* @SA_SPILL, align 8
  %476 = call i64 @sa_build_index(%struct.TYPE_33__* %474, i64 %475)
  %477 = icmp eq i64 0, %476
  %478 = zext i1 %477 to i32
  %479 = call i32 @VERIFY(i32 %478)
  br label %480

480:                                              ; preds = %473, %454
  br label %481

481:                                              ; preds = %480, %439
  store i32 0, i32* %5, align 4
  br label %482

482:                                              ; preds = %481, %149, %64
  %483 = load i32, i32* %5, align 4
  ret i32 %483
}

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @SA_BONUSTYPE_FROM_DB(%struct.TYPE_28__*) #1

declare dso_local i32 @dmu_object_dnsize_from_db(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @DN_BONUS_SIZE(i32) #1

declare dso_local i32 @sa_find_sizes(%struct.TYPE_30__*, %struct.TYPE_34__*, i32, %struct.TYPE_28__*, i64, i32, i32*, i32*, i64*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_set_bonus(%struct.TYPE_28__*, i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @dmu_spill_hold_by_bonus(%struct.TYPE_28__*, i32, i32*, %struct.TYPE_28__**) #1

declare dso_local i32 @BUF_SPACE_NEEDED(i32, i32) #1

declare dso_local i64 @sa_resize_spill(%struct.TYPE_33__*, i32, i32*) #1

declare dso_local i64* @kmem_alloc(i32, i32) #1

declare dso_local i32 @IS_P2ALIGNED(i8*, i32) #1

declare dso_local i64 @SA_REGISTERED_LEN(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @sa_find_layout(%struct.TYPE_35__*, i64, i64*, i32, i32*, %struct.TYPE_31__**) #1

declare dso_local i32 @SA_SET_HDR(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i64 @SA_ATTR_HASH(i64) #1

declare dso_local i32 @SA_COPY_DATA(i32, i32, i8*, i64) #1

declare dso_local i64 @P2ROUNDUP(i64, i32) #1

declare dso_local i32 @kmem_free(i64*, i32) #1

declare dso_local i32 @sa_idx_tab_rele(%struct.TYPE_35__*, i32*) #1

declare dso_local i64 @sa_build_index(%struct.TYPE_33__*, i64) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @dmu_rm_spill(%struct.TYPE_35__*, i32, i32*) #1

declare dso_local i32 @sa_handle_object(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
