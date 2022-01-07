; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_mos_leaks.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_mos_leaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i8* }
%struct.TYPE_37__ = type { i8* }
%struct.TYPE_45__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_33__**, i32, %struct.TYPE_42__, %struct.TYPE_41__*, %struct.TYPE_40__, %struct.TYPE_39__, i32, %struct.TYPE_30__*, i32* }
%struct.TYPE_33__ = type { i64** }
%struct.TYPE_42__ = type { i64, i64 }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_30__ = type { i64, i64, i64, i32*, i32*, i32*, %struct.TYPE_31__*, i32, i32, %struct.TYPE_38__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_44__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_35__ = type { i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Deadlist\00", align 1
@DDT_CLASSES = common dso_local global i64 0, align 8
@DDT_TYPES = common dso_local global i64 0, align 8
@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@mos_refd_objs = common dso_local global i32 0, align 4
@DMU_OT_NEWTYPE = common dso_local global i32 0, align 4
@dmu_ot_byteswap = common dso_local global %struct.TYPE_36__* null, align 8
@dmu_ot = common dso_local global %struct.TYPE_37__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"MOS object %llu (%s) leaked\0A\00", align 1
@mos_leaks_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_45__*)* @dump_mos_leaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_mos_leaks(%struct.TYPE_45__* %0) #0 {
  %2 = alloca %struct.TYPE_45__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_44__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_32__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_45__* %0, %struct.TYPE_45__** %2, align 8
  store i32 0, i32* %3, align 4
  %16 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %16, i32 0, i32 19
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %19, i32 0, i32 18
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  store %struct.TYPE_30__* %21, %struct.TYPE_30__** %5, align 8
  %22 = load i64, i64* @DMU_POOL_DIRECTORY_OBJECT, align 8
  %23 = call i32 @mos_obj_refd(i64 %22)
  %24 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mos_obj_refd(i64 %26)
  %28 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @mos_obj_refd(i64 %30)
  %32 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @mos_obj_refd(i64 %34)
  %36 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @mos_obj_refd(i64 %38)
  %40 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mos_obj_refd(i64 %42)
  %44 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @mos_obj_refd(i64 %46)
  %48 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mos_obj_refd(i64 %50)
  %52 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @mos_obj_refd(i64 %54)
  %56 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %56, i32 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @mos_obj_refd(i64 %58)
  %60 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %60, i32 0, i32 9
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @mos_obj_refd(i64 %62)
  %64 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %64, i32 0, i32 10
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @mos_obj_refd(i64 %66)
  %68 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %68, i32 0, i32 18
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @mos_obj_refd(i64 %72)
  %74 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %74, i32 0, i32 18
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @mos_obj_refd(i64 %78)
  %80 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %80, i32 0, i32 18
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 9
  %84 = load %struct.TYPE_38__*, %struct.TYPE_38__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @mos_obj_refd(i64 %87)
  %89 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %89, i32 0, i32 17
  %91 = call i32 @bpobj_count_refd(i32* %90)
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @mos_obj_refd(i64 %94)
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 8
  %98 = call i32 @bpobj_count_refd(i32* %97)
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %99, i32 0, i32 7
  %101 = call i32 @bpobj_count_refd(i32* %100)
  %102 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %102, i32 0, i32 16
  %104 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @mos_obj_refd(i64 %105)
  %107 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @mos_obj_refd(i64 %110)
  %112 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %112, i32 0, i32 14
  %114 = load %struct.TYPE_41__*, %struct.TYPE_41__** %113, align 8
  %115 = icmp ne %struct.TYPE_41__* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %1
  %117 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %117, i32 0, i32 14
  %119 = load %struct.TYPE_41__*, %struct.TYPE_41__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @mos_obj_refd(i64 %121)
  br label %123

123:                                              ; preds = %116, %1
  %124 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %125 = call i32 @mos_leak_log_spacemaps(%struct.TYPE_45__* %124)
  %126 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %126, i32 0, i32 13
  %128 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @mos_obj_refd(i64 %129)
  %131 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %131, i32 0, i32 13
  %133 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @mos_obj_refd(i64 %134)
  %136 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %136, i32 0, i32 13
  %138 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %123
  %142 = load i32*, i32** %4, align 8
  %143 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %143, i32 0, i32 13
  %145 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call %struct.TYPE_44__* @vdev_indirect_mapping_open(i32* %142, i64 %146)
  store %struct.TYPE_44__* %147, %struct.TYPE_44__** %6, align 8
  %148 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_43__*, %struct.TYPE_43__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @mos_obj_refd(i64 %152)
  %154 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %155 = call i32 @vdev_indirect_mapping_close(%struct.TYPE_44__* %154)
  br label %156

156:                                              ; preds = %141, %123
  %157 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %158 = call i32 @deleted_livelists_dump_mos(%struct.TYPE_45__* %157)
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %160, align 8
  %162 = icmp ne %struct.TYPE_31__* %161, null
  br i1 %162, label %163, label %197

163:                                              ; preds = %156
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %165 = load i32, i32* @FTAG, align 4
  %166 = call i32 @dsl_pool_config_enter(%struct.TYPE_30__* %164, i32 %165)
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %169, align 8
  %171 = call %struct.TYPE_35__* @dsl_dataset_phys(%struct.TYPE_31__* %170)
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @FTAG, align 4
  %175 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_30__* %167, i32 %173, i32 %174, %struct.TYPE_31__** %7)
  %176 = call i32 @VERIFY0(i32 %175)
  %177 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %178 = call i32 @count_ds_mos_objects(%struct.TYPE_31__* %177)
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 0
  %181 = call i32 @dump_blkptr_list(i32* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %183 = load i32, i32* @FTAG, align 4
  %184 = call i32 @dsl_dataset_rele(%struct.TYPE_31__* %182, i32 %183)
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %186 = load i32, i32* @FTAG, align 4
  %187 = call i32 @dsl_pool_config_exit(%struct.TYPE_30__* %185, i32 %186)
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 6
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %189, align 8
  %191 = call i32 @count_ds_mos_objects(%struct.TYPE_31__* %190)
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 0
  %196 = call i32 @dump_blkptr_list(i32* %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %197

197:                                              ; preds = %163, %156
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 5
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @count_dir_mos_objects(i32* %200)
  %202 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %197
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @count_dir_mos_objects(i32* %209)
  br label %211

211:                                              ; preds = %206, %197
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @count_dir_mos_objects(i32* %219)
  br label %221

221:                                              ; preds = %216, %211
  %222 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %222, i32 0, i32 12
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @mos_leak_vdev(i32 %224)
  store i64 0, i64* %8, align 8
  br label %226

226:                                              ; preds = %265, %221
  %227 = load i64, i64* %8, align 8
  %228 = load i64, i64* @DDT_CLASSES, align 8
  %229 = icmp slt i64 %227, %228
  br i1 %229, label %230, label %268

230:                                              ; preds = %226
  store i64 0, i64* %9, align 8
  br label %231

231:                                              ; preds = %261, %230
  %232 = load i64, i64* %9, align 8
  %233 = load i64, i64* @DDT_TYPES, align 8
  %234 = icmp slt i64 %232, %233
  br i1 %234, label %235, label %264

235:                                              ; preds = %231
  store i64 0, i64* %10, align 8
  br label %236

236:                                              ; preds = %257, %235
  %237 = load i64, i64* %10, align 8
  %238 = load i64, i64* @ZIO_CHECKSUM_FUNCTIONS, align 8
  %239 = icmp slt i64 %237, %238
  br i1 %239, label %240, label %260

240:                                              ; preds = %236
  %241 = load %struct.TYPE_45__*, %struct.TYPE_45__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %241, i32 0, i32 11
  %243 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %242, align 8
  %244 = load i64, i64* %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %243, i64 %244
  %246 = load %struct.TYPE_33__*, %struct.TYPE_33__** %245, align 8
  store %struct.TYPE_33__* %246, %struct.TYPE_33__** %11, align 8
  %247 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %247, i32 0, i32 0
  %249 = load i64**, i64*** %248, align 8
  %250 = load i64, i64* %9, align 8
  %251 = getelementptr inbounds i64*, i64** %249, i64 %250
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* %8, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @mos_obj_refd(i64 %255)
  br label %257

257:                                              ; preds = %240
  %258 = load i64, i64* %10, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %10, align 8
  br label %236

260:                                              ; preds = %236
  br label %261

261:                                              ; preds = %260
  %262 = load i64, i64* %9, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %9, align 8
  br label %231

264:                                              ; preds = %231
  br label %265

265:                                              ; preds = %264
  %266 = load i64, i64* %8, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %8, align 8
  br label %226

268:                                              ; preds = %226
  store i64 0, i64* %12, align 8
  br label %269

269:                                              ; preds = %314, %268
  %270 = load i32*, i32** %4, align 8
  %271 = load i32, i32* @B_FALSE, align 4
  %272 = call i64 @dmu_object_next(i32* %270, i64* %12, i32 %271, i32 0)
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %315

274:                                              ; preds = %269
  %275 = load i32, i32* @mos_refd_objs, align 4
  %276 = load i64, i64* %12, align 8
  %277 = call i64 @range_tree_contains(i32 %275, i64 %276, i32 1)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = load i32, i32* @mos_refd_objs, align 4
  %281 = load i64, i64* %12, align 8
  %282 = call i32 @range_tree_remove(i32 %280, i64 %281, i32 1)
  br label %314

283:                                              ; preds = %274
  %284 = load i32*, i32** %4, align 8
  %285 = load i64, i64* %12, align 8
  %286 = call i32 @dmu_object_info(i32* %284, i64 %285, %struct.TYPE_32__* %13)
  %287 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @DMU_OT_NEWTYPE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %283
  %293 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i64 @DMU_OT_BYTESWAP(i32 %294)
  store i64 %295, i64* %15, align 8
  %296 = load %struct.TYPE_36__*, %struct.TYPE_36__** @dmu_ot_byteswap, align 8
  %297 = load i64, i64* %15, align 8
  %298 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  store i8* %300, i8** %14, align 8
  br label %309

301:                                              ; preds = %283
  %302 = load %struct.TYPE_37__*, %struct.TYPE_37__** @dmu_ot, align 8
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %302, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  store i8* %308, i8** %14, align 8
  br label %309

309:                                              ; preds = %301, %292
  %310 = load i64, i64* %12, align 8
  %311 = trunc i64 %310 to i32
  %312 = load i8*, i8** %14, align 8
  %313 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %311, i8* %312)
  store i32 2, i32* %3, align 4
  br label %314

314:                                              ; preds = %309, %279
  br label %269

315:                                              ; preds = %269
  %316 = load i32, i32* @mos_refd_objs, align 4
  %317 = load i32, i32* @mos_leaks_cb, align 4
  %318 = call i32 @range_tree_walk(i32 %316, i32 %317, i32* null)
  %319 = load i32, i32* @mos_refd_objs, align 4
  %320 = call i32 @range_tree_is_empty(i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %315
  store i32 2, i32* %3, align 4
  br label %323

323:                                              ; preds = %322, %315
  %324 = load i32, i32* @mos_refd_objs, align 4
  %325 = call i32 @range_tree_vacate(i32 %324, i32* null, i32* null)
  %326 = load i32, i32* @mos_refd_objs, align 4
  %327 = call i32 @range_tree_destroy(i32 %326)
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local i32 @mos_obj_refd(i64) #1

declare dso_local i32 @bpobj_count_refd(i32*) #1

declare dso_local i32 @mos_leak_log_spacemaps(%struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_44__* @vdev_indirect_mapping_open(i32*, i64) #1

declare dso_local i32 @vdev_indirect_mapping_close(%struct.TYPE_44__*) #1

declare dso_local i32 @deleted_livelists_dump_mos(%struct.TYPE_45__*) #1

declare dso_local i32 @dsl_pool_config_enter(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_30__*, i32, i32, %struct.TYPE_31__**) #1

declare dso_local %struct.TYPE_35__* @dsl_dataset_phys(%struct.TYPE_31__*) #1

declare dso_local i32 @count_ds_mos_objects(%struct.TYPE_31__*) #1

declare dso_local i32 @dump_blkptr_list(i32*, i8*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @dsl_pool_config_exit(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @count_dir_mos_objects(i32*) #1

declare dso_local i32 @mos_leak_vdev(i32) #1

declare dso_local i64 @dmu_object_next(i32*, i64*, i32, i32) #1

declare dso_local i64 @range_tree_contains(i32, i64, i32) #1

declare dso_local i32 @range_tree_remove(i32, i64, i32) #1

declare dso_local i32 @dmu_object_info(i32*, i64, %struct.TYPE_32__*) #1

declare dso_local i64 @DMU_OT_BYTESWAP(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @range_tree_walk(i32, i32, i32*) #1

declare dso_local i32 @range_tree_is_empty(i32) #1

declare dso_local i32 @range_tree_vacate(i32, i32*, i32*) #1

declare dso_local i32 @range_tree_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
