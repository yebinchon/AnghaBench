; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_create_sync_dd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_create_sync_dd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_40__*, i32, %struct.TYPE_35__* }
%struct.TYPE_40__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_37__*, i32* }
%struct.TYPE_37__ = type { %struct.TYPE_36__*, i32, i32, %struct.TYPE_40__*, i32*, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_34__ = type { i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i64, i64, i32 }

@DMU_OT_DSL_DATASET = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@U8_TEXTPREP_TOUPPER = common dso_local global i32 0, align 4
@DMU_OT_DSL_DS_SNAP_MAP = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@TXG_INITIAL = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@DS_FLAG_INCONSISTENT = common dso_local global i32 0, align 4
@DS_FLAG_CI_DATASET = common dso_local global i32 0, align 4
@SPA_FEATURES = common dso_local global i64 0, align 8
@SPA_VERSION_NEXT_CLONES = common dso_local global i64 0, align 8
@DMU_OT_NEXT_CLONES = common dso_local global i32 0, align 4
@SPA_VERSION_DIR_CLONES = common dso_local global i64 0, align 8
@DMU_OT_DSL_CLONES = common dso_local global i32 0, align 4
@SPA_VERSION_UNIQUE_ACCURATE = common dso_local global i64 0, align 8
@DS_FLAG_UNIQUE_ACCURATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dsl_dataset_create_sync_dd(%struct.TYPE_36__* %0, %struct.TYPE_37__* %1, i32* %2, i8* %3, %struct.TYPE_39__* %4) #0 {
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_40__*, align 8
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_39__* %4, %struct.TYPE_39__** %10, align 8
  %18 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  store %struct.TYPE_35__* %20, %struct.TYPE_35__** %11, align 8
  %21 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %15, align 8
  %24 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %25 = icmp eq %struct.TYPE_37__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %28, align 8
  store %struct.TYPE_37__* %29, %struct.TYPE_37__** %7, align 8
  br label %30

30:                                               ; preds = %26, %5
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %32 = icmp eq %struct.TYPE_37__* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_35__*, %struct.TYPE_35__** %37, align 8
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %40 = icmp eq %struct.TYPE_35__* %38, %39
  br label %41

41:                                               ; preds = %33, %30
  %42 = phi i1 [ true, %30 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %46 = icmp eq %struct.TYPE_37__* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %49 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %48)
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br label %53

53:                                               ; preds = %47, %41
  %54 = phi i1 [ true, %41 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %58 = call i32 @dmu_tx_is_syncing(%struct.TYPE_39__* %57)
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %61 = call %struct.TYPE_33__* @dsl_dir_phys(%struct.TYPE_36__* %60)
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* @DMU_OT_DSL_DATASET, align 4
  %69 = load i32, i32* @DMU_OT_DSL_DATASET, align 4
  %70 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %71 = call i8* @dmu_object_alloc(i32* %67, i32 %68, i32 0, i32 %69, i32 56, %struct.TYPE_39__* %70)
  store i8* %71, i8** %14, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @dmu_bonus_hold(i32* %72, i8* %73, i32 %74, %struct.TYPE_40__** %12)
  %76 = call i32 @VERIFY0(i32 %75)
  %77 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %78 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %79 = call i32 @dmu_buf_will_dirty(%struct.TYPE_40__* %77, %struct.TYPE_39__* %78)
  %80 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_38__*, %struct.TYPE_38__** %81, align 8
  store %struct.TYPE_38__* %82, %struct.TYPE_38__** %13, align 8
  %83 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %84 = call i32 @bzero(%struct.TYPE_38__* %83, i32 56)
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i32 0, i32 13
  store i32 %87, i32* %89, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = call i32 (...) @unique_create()
  %95 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %95, i32 0, i32 12
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %97, i32 0, i32 11
  %99 = bitcast i32* %98 to i8*
  %100 = call i32 @random_get_pseudo_bytes(i8* %99, i32 4)
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %103 = load i32, i32* @DMU_OT_DSL_DS_SNAP_MAP, align 4
  %104 = load i32, i32* @DMU_OT_NONE, align 4
  %105 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %106 = call i32 @zap_create_norm(i32* %101, i32 %102, i32 %103, i32 %104, i32 0, %struct.TYPE_39__* %105)
  %107 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %107, i32 0, i32 10
  store i32 %106, i32* %108, align 4
  %109 = call i32 (...) @gethrestime_sec()
  %110 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @TXG_INITIAL, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %53
  br label %122

118:                                              ; preds = %53
  %119 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  br label %122

122:                                              ; preds = %118, %117
  %123 = phi i32 [ 1, %117 ], [ %121, %118 ]
  %124 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %127 = icmp eq %struct.TYPE_37__* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = load i32*, i32** %15, align 8
  %130 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %131 = call i32 @dsl_deadlist_alloc(i32* %129, %struct.TYPE_39__* %130)
  %132 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  br label %346

134:                                              ; preds = %122
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %141 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %140)
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %147 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %146)
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %153 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %152)
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %159 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %158)
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %164, i32 0, i32 5
  %166 = load i32, i32* @RW_READER, align 4
  %167 = load i32, i32* @FTAG, align 4
  %168 = call i32 @rrw_enter(i32* %165, i32 %166, i32 %167)
  %169 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %170 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %169)
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 5
  %177 = load i32, i32* @FTAG, align 4
  %178 = call i32 @rrw_exit(i32* %176, i32 %177)
  %179 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %180 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %179)
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @DS_FLAG_INCONSISTENT, align 4
  %184 = load i32, i32* @DS_FLAG_CI_DATASET, align 4
  %185 = or i32 %183, %184
  %186 = and i32 %182, %185
  %187 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  store i64 0, i64* %17, align 8
  br label %191

191:                                              ; preds = %217, %134
  %192 = load i64, i64* %17, align 8
  %193 = load i64, i64* @SPA_FEATURES, align 8
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %195, label %220

195:                                              ; preds = %191
  %196 = load i64, i64* %17, align 8
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %17, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @zfeature_active(i64 %196, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %195
  %206 = load i8*, i8** %14, align 8
  %207 = load i64, i64* %17, align 8
  %208 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* %17, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %215 = call i32 @dsl_dataset_activate_feature(i8* %206, i64 %207, i32 %213, %struct.TYPE_39__* %214)
  br label %216

216:                                              ; preds = %205, %195
  br label %217

217:                                              ; preds = %216
  %218 = load i64, i64* %17, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %17, align 8
  br label %191

220:                                              ; preds = %191
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_40__*, %struct.TYPE_40__** %222, align 8
  %224 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %225 = call i32 @dmu_buf_will_dirty(%struct.TYPE_40__* %223, %struct.TYPE_39__* %224)
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %227 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %226)
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %228, align 8
  %231 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_36__*, %struct.TYPE_36__** %233, align 8
  %235 = call %struct.TYPE_33__* @dsl_dir_phys(%struct.TYPE_36__* %234)
  %236 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* @FTAG, align 4
  %239 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_35__* %231, i64 %237, i32 %238, %struct.TYPE_37__** %16)
  %240 = call i32 @VERIFY0(i32 %239)
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %250 = call i32 @dsl_deadlist_clone(i32* %242, i32 %245, i32 %248, %struct.TYPE_39__* %249)
  %251 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %251, i32 0, i32 4
  store i32 %250, i32* %252, align 4
  %253 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %254 = load i32, i32* @FTAG, align 4
  %255 = call i32 @dsl_dataset_rele(%struct.TYPE_37__* %253, i32 %254)
  %256 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i64 @spa_version(i32 %258)
  %260 = load i64, i64* @SPA_VERSION_NEXT_CLONES, align 8
  %261 = icmp sge i64 %259, %260
  br i1 %261, label %262, label %288

262:                                              ; preds = %220
  %263 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %264 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %263)
  %265 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %262
  %269 = load i32*, i32** %15, align 8
  %270 = load i32, i32* @DMU_OT_NEXT_CLONES, align 4
  %271 = load i32, i32* @DMU_OT_NONE, align 4
  %272 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %273 = call i8* @zap_create(i32* %269, i32 %270, i32 %271, i32 0, %struct.TYPE_39__* %272)
  %274 = ptrtoint i8* %273 to i64
  %275 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %276 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %275)
  %277 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %276, i32 0, i32 2
  store i64 %274, i64* %277, align 8
  br label %278

278:                                              ; preds = %268, %262
  %279 = load i32*, i32** %15, align 8
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %281 = call %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__* %280)
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load i8*, i8** %14, align 8
  %285 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %286 = call i32 @zap_add_int(i32* %279, i64 %283, i8* %284, %struct.TYPE_39__* %285)
  %287 = call i32 @VERIFY0(i32 %286)
  br label %288

288:                                              ; preds = %278, %220
  %289 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_40__*, %struct.TYPE_40__** %290, align 8
  %292 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %293 = call i32 @dmu_buf_will_dirty(%struct.TYPE_40__* %291, %struct.TYPE_39__* %292)
  %294 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %298 = call %struct.TYPE_33__* @dsl_dir_phys(%struct.TYPE_36__* %297)
  %299 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %298, i32 0, i32 2
  store i32 %296, i32* %299, align 8
  %300 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i64 @spa_version(i32 %302)
  %304 = load i64, i64* @SPA_VERSION_DIR_CLONES, align 8
  %305 = icmp sge i64 %303, %304
  br i1 %305, label %306, label %345

306:                                              ; preds = %288
  %307 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_36__*, %struct.TYPE_36__** %308, align 8
  %310 = call %struct.TYPE_33__* @dsl_dir_phys(%struct.TYPE_36__* %309)
  %311 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %314, label %333

314:                                              ; preds = %306
  %315 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_40__*, %struct.TYPE_40__** %318, align 8
  %320 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %321 = call i32 @dmu_buf_will_dirty(%struct.TYPE_40__* %319, %struct.TYPE_39__* %320)
  %322 = load i32*, i32** %15, align 8
  %323 = load i32, i32* @DMU_OT_DSL_CLONES, align 4
  %324 = load i32, i32* @DMU_OT_NONE, align 4
  %325 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %326 = call i8* @zap_create(i32* %322, i32 %323, i32 %324, i32 0, %struct.TYPE_39__* %325)
  %327 = ptrtoint i8* %326 to i64
  %328 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_36__*, %struct.TYPE_36__** %329, align 8
  %331 = call %struct.TYPE_33__* @dsl_dir_phys(%struct.TYPE_36__* %330)
  %332 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %331, i32 0, i32 1
  store i64 %327, i64* %332, align 8
  br label %333

333:                                              ; preds = %314, %306
  %334 = load i32*, i32** %15, align 8
  %335 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %335, i32 0, i32 0
  %337 = load %struct.TYPE_36__*, %struct.TYPE_36__** %336, align 8
  %338 = call %struct.TYPE_33__* @dsl_dir_phys(%struct.TYPE_36__* %337)
  %339 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i8*, i8** %14, align 8
  %342 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %343 = call i32 @zap_add_int(i32* %334, i64 %340, i8* %341, %struct.TYPE_39__* %342)
  %344 = call i32 @VERIFY0(i32 %343)
  br label %345

345:                                              ; preds = %333, %288
  br label %346

346:                                              ; preds = %345, %128
  %347 = load i8*, i8** %14, align 8
  %348 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %349 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %350 = load i32*, i32** %8, align 8
  %351 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %352 = call i32 @dsl_dataset_create_crypt_sync(i8* %347, %struct.TYPE_36__* %348, %struct.TYPE_37__* %349, i32* %350, %struct.TYPE_39__* %351)
  %353 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = call i64 @spa_version(i32 %355)
  %357 = load i64, i64* @SPA_VERSION_UNIQUE_ACCURATE, align 8
  %358 = icmp sge i64 %356, %357
  br i1 %358, label %359, label %365

359:                                              ; preds = %346
  %360 = load i32, i32* @DS_FLAG_UNIQUE_ACCURATE, align 4
  %361 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %362 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 4
  br label %365

365:                                              ; preds = %359, %346
  %366 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %367 = load i32, i32* @FTAG, align 4
  %368 = call i32 @dmu_buf_rele(%struct.TYPE_40__* %366, i32 %367)
  %369 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_40__*, %struct.TYPE_40__** %370, align 8
  %372 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %373 = call i32 @dmu_buf_will_dirty(%struct.TYPE_40__* %371, %struct.TYPE_39__* %372)
  %374 = load i8*, i8** %14, align 8
  %375 = ptrtoint i8* %374 to i64
  %376 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %377 = call %struct.TYPE_33__* @dsl_dir_phys(%struct.TYPE_36__* %376)
  %378 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %377, i32 0, i32 0
  store i64 %375, i64* %378, align 8
  %379 = load i8*, i8** %14, align 8
  ret i8* %379
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_34__* @dsl_dataset_phys(%struct.TYPE_37__*) #1

declare dso_local i32 @dmu_tx_is_syncing(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_33__* @dsl_dir_phys(%struct.TYPE_36__*) #1

declare dso_local i8* @dmu_object_alloc(i32*, i32, i32, i32, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_bonus_hold(i32*, i8*, i32, %struct.TYPE_40__**) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_40__*, %struct.TYPE_39__*) #1

declare dso_local i32 @bzero(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @unique_create(...) #1

declare dso_local i32 @random_get_pseudo_bytes(i8*, i32) #1

declare dso_local i32 @zap_create_norm(i32*, i32, i32, i32, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @gethrestime_sec(...) #1

declare dso_local i32 @dsl_deadlist_alloc(i32*, %struct.TYPE_39__*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i64 @zfeature_active(i64, i32) #1

declare dso_local i32 @dsl_dataset_activate_feature(i8*, i64, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_35__*, i64, i32, %struct.TYPE_37__**) #1

declare dso_local i32 @dsl_deadlist_clone(i32*, i32, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_37__*, i32) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i8* @zap_create(i32*, i32, i32, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @zap_add_int(i32*, i64, i8*, %struct.TYPE_39__*) #1

declare dso_local i32 @dsl_dataset_create_crypt_sync(i8*, %struct.TYPE_36__*, %struct.TYPE_37__*, i32*, %struct.TYPE_39__*) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_40__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
