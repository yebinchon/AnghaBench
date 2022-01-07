; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_recv_begin_check_existing_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_recv_begin_check_existing_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_23__*, %struct.TYPE_27__* }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64, i32 }

@DMU_BACKUP_FEATURE_RAW = common dso_local global i64 0, align 8
@DMU_BACKUP_FEATURE_EMBED_DATA = common dso_local global i64 0, align 8
@recv_clone_name = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@ZFS_ERR_WRONG_PARENT = common dso_local global i32 0, align 4
@ZFS_PROP_SNAPSHOT_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@SPA_FEATURE_REDACTED_DATASETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_30__*, i64, i64)* @recv_begin_check_existing_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_begin_check_existing_impl(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  store %struct.TYPE_29__* %24, %struct.TYPE_29__** %13, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @DMU_BACKUP_FEATURE_RAW, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @DMU_BACKUP_FEATURE_EMBED_DATA, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %16, align 4
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  %48 = call %struct.TYPE_24__* @dsl_dir_phys(%struct.TYPE_23__* %47)
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @recv_clone_name, align 4
  %52 = call i32 @zap_lookup(i32 %44, i32 %50, i32 %51, i32 8, i32 1, i64* %10)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @ENOENT, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EBUSY, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %61, %59 ], [ %63, %62 ]
  store i32 %65, i32* %5, align 4
  br label %336

66:                                               ; preds = %4
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %68 = call i64 @dsl_dataset_has_resume_receive_state(%struct.TYPE_30__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EBUSY, align 4
  %72 = call i32 @SET_ERROR(i32 %71)
  store i32 %72, i32* %5, align 4
  br label %336

73:                                               ; preds = %66
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %78 = call %struct.TYPE_25__* @dsl_dataset_phys(%struct.TYPE_30__* %77)
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @zap_lookup(i32 %76, i32 %80, i32 %85, i32 8, i32 1, i64* %10)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @ENOENT, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %73
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @EEXIST, align 4
  %95 = call i32 @SET_ERROR(i32 %94)
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi i32 [ %95, %93 ], [ %97, %96 ]
  store i32 %99, i32* %5, align 4
  br label %336

100:                                              ; preds = %73
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = call %struct.TYPE_24__* @dsl_dir_phys(%struct.TYPE_23__* %106)
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @zap_count(i32 %103, i32 %109, i64* %11)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %5, align 4
  br label %336

115:                                              ; preds = %100
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DMU_OST_ZFS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load i64, i64* %11, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @ZFS_ERR_WRONG_PARENT, align 4
  %130 = call i32 @SET_ERROR(i32 %129)
  store i32 %130, i32* %5, align 4
  br label %336

131:                                              ; preds = %125, %115
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  %135 = load i32, i32* @ZFS_PROP_SNAPSHOT_LIMIT, align 4
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @dsl_fs_ss_limit_check(%struct.TYPE_23__* %134, i32 1, i32 %135, i32* null, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %5, align 4
  br label %336

144:                                              ; preds = %131
  %145 = load i64, i64* %8, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %285

147:                                              ; preds = %144
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %149 = call %struct.TYPE_25__* @dsl_dataset_phys(%struct.TYPE_30__* %148)
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %18, align 8
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %147
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* @EINVAL, align 4
  %159 = call i32 @SET_ERROR(i32 %158)
  store i32 %159, i32* %5, align 4
  br label %336

160:                                              ; preds = %154, %147
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @EINVAL, align 4
  %168 = call i32 @SET_ERROR(i32 %167)
  store i32 %168, i32* %5, align 4
  br label %336

169:                                              ; preds = %163, %160
  br label %170

170:                                              ; preds = %205, %169
  %171 = load i64, i64* %18, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %213

173:                                              ; preds = %170
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %175 = load i64, i64* %18, align 8
  %176 = load i32, i32* @FTAG, align 4
  %177 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_29__* %174, i64 %175, i32 %176, %struct.TYPE_30__** %17)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load i32, i32* @ENODEV, align 4
  %182 = call i32 @SET_ERROR(i32 %181)
  store i32 %182, i32* %5, align 4
  br label %336

183:                                              ; preds = %173
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %185, align 8
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %188, align 8
  %190 = icmp ne %struct.TYPE_23__* %186, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %183
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %193 = load i32, i32* @FTAG, align 4
  %194 = call i32 @dsl_dataset_rele(%struct.TYPE_30__* %192, i32 %193)
  %195 = load i32, i32* @ENODEV, align 4
  %196 = call i32 @SET_ERROR(i32 %195)
  store i32 %196, i32* %5, align 4
  br label %336

197:                                              ; preds = %183
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %199 = call %struct.TYPE_25__* @dsl_dataset_phys(%struct.TYPE_30__* %198)
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* %8, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %213

205:                                              ; preds = %197
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %207 = call %struct.TYPE_25__* @dsl_dataset_phys(%struct.TYPE_30__* %206)
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %18, align 8
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %211 = load i32, i32* @FTAG, align 4
  %212 = call i32 @dsl_dataset_rele(%struct.TYPE_30__* %210, i32 %211)
  br label %170

213:                                              ; preds = %204, %170
  %214 = load i64, i64* %18, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* @ENODEV, align 4
  %218 = call i32 @SET_ERROR(i32 %217)
  store i32 %218, i32* %5, align 4
  br label %336

219:                                              ; preds = %213
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = load i64, i64* %18, align 8
  %228 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 1
  store i64 %227, i64* %231, align 8
  br label %265

232:                                              ; preds = %219
  %233 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %235 = call i64 @dsl_dataset_modified_since_snap(%struct.TYPE_30__* %233, %struct.TYPE_30__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %249, label %237

237:                                              ; preds = %232
  %238 = load i32, i32* %15, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %237
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %242 = call %struct.TYPE_25__* @dsl_dataset_phys(%struct.TYPE_30__* %241)
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %244, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %240, %232
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %251 = load i32, i32* @FTAG, align 4
  %252 = call i32 @dsl_dataset_rele(%struct.TYPE_30__* %250, i32 %251)
  %253 = load i32, i32* @ETXTBSY, align 4
  %254 = call i32 @SET_ERROR(i32 %253)
  store i32 %254, i32* %5, align 4
  br label %336

255:                                              ; preds = %240, %237
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 1
  store i64 %260, i64* %264, align 8
  br label %265

265:                                              ; preds = %255, %226
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %267 = load i32, i32* @SPA_FEATURE_REDACTED_DATASETS, align 4
  %268 = call i64 @dsl_dataset_feature_is_active(%struct.TYPE_30__* %266, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %265
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %272 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %273 = call i32 @redact_check(%struct.TYPE_31__* %271, %struct.TYPE_30__* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %270
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %277 = load i32, i32* @FTAG, align 4
  %278 = call i32 @dsl_dataset_rele(%struct.TYPE_30__* %276, i32 %277)
  %279 = load i32, i32* @EINVAL, align 4
  %280 = call i32 @SET_ERROR(i32 %279)
  store i32 %280, i32* %5, align 4
  br label %336

281:                                              ; preds = %270, %265
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %283 = load i32, i32* @FTAG, align 4
  %284 = call i32 @dsl_dataset_rele(%struct.TYPE_30__* %282, i32 %283)
  br label %335

285:                                              ; preds = %144
  %286 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %285
  %293 = load i32, i32* @EEXIST, align 4
  %294 = call i32 @SET_ERROR(i32 %293)
  store i32 %294, i32* %5, align 4
  br label %336

295:                                              ; preds = %285
  %296 = load i32, i32* %14, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %295
  %299 = load i32, i32* %15, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %298, %295
  %302 = load i32, i32* %14, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301, %298
  %305 = load i32, i32* @EINVAL, align 4
  %306 = call i32 @SET_ERROR(i32 %305)
  store i32 %306, i32* %5, align 4
  br label %336

307:                                              ; preds = %301
  %308 = load i32, i32* %15, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %334, label %310

310:                                              ; preds = %307
  %311 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @dmu_objset_create_crypt_check(i32 %315, i32 %318, i32* %19)
  store i32 %319, i32* %12, align 4
  %320 = load i32, i32* %12, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %310
  %323 = load i32, i32* %12, align 4
  store i32 %323, i32* %5, align 4
  br label %336

324:                                              ; preds = %310
  %325 = load i32, i32* %19, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %324
  %328 = load i32, i32* %16, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i32, i32* @EINVAL, align 4
  %332 = call i32 @SET_ERROR(i32 %331)
  store i32 %332, i32* %5, align 4
  br label %336

333:                                              ; preds = %327, %324
  br label %334

334:                                              ; preds = %333, %307
  br label %335

335:                                              ; preds = %334, %281
  store i32 0, i32* %5, align 4
  br label %336

336:                                              ; preds = %335, %330, %322, %304, %292, %275, %249, %216, %191, %180, %166, %157, %142, %128, %113, %98, %70, %64
  %337 = load i32, i32* %5, align 4
  ret i32 %337
}

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i64*) #1

declare dso_local %struct.TYPE_24__* @dsl_dir_phys(%struct.TYPE_23__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dsl_dataset_has_resume_receive_state(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_25__* @dsl_dataset_phys(%struct.TYPE_30__*) #1

declare dso_local i32 @zap_count(i32, i32, i64*) #1

declare dso_local i32 @dsl_fs_ss_limit_check(%struct.TYPE_23__*, i32, i32, i32*, i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_29__*, i64, i32, %struct.TYPE_30__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @dsl_dataset_modified_since_snap(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i64 @dsl_dataset_feature_is_active(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @redact_check(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @dmu_objset_create_crypt_check(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
