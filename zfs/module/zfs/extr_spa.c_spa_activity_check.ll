; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_activity_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_activity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@CV_DEFAULT = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_TXG = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"multihost activity detected txg %llu ub_txg  %llu timestamp %llu ub_timestamp  %llu mmp_config %#llx ub_mmp_config %#llx\00", align 1
@hz = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@ZPOOL_CONFIG_HOSTNAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_HOSTNAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_HOSTID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MMP_STATE = common dso_local global i32 0, align 4
@MMP_STATE_ACTIVE = common dso_local global i32 0, align 4
@VDEV_AUX_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*)* @spa_activity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_activity_check(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = call i64 @MMP_SEQ_VALID(%struct.TYPE_11__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = call i32 @MMP_SEQ(%struct.TYPE_11__* %34)
  br label %37

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  store i32 %38, i32* %10, align 4
  store i32* null, i32** %13, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %14, align 8
  store i32 0, i32* %17, align 4
  %42 = load i32, i32* @CV_DEFAULT, align 4
  %43 = call i32 @cv_init(i32* %15, i32* null, i32 %42, i32* null)
  %44 = load i32, i32* @MUTEX_DEFAULT, align 4
  %45 = call i32 @mutex_init(i32* %16, i32* null, i32 %44, i32* null)
  %46 = call i32 @mutex_enter(i32* %16)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %49 = call i64 @nvlist_exists(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %37
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %54 = call i32* @fnvlist_lookup_nvlist(i32* %52, i32 %53)
  store i32* %54, i32** %18, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = load i32, i32* @ZPOOL_CONFIG_MMP_TXG, align 4
  %57 = call i64 @nvlist_exists(i32* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = load i32*, i32** %18, align 8
  %61 = load i32, i32* @ZPOOL_CONFIG_MMP_TXG, align 4
  %62 = call i64 @fnvlist_lookup_uint64(i32* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = call i32 @vdev_uberblock_load(i32* %65, %struct.TYPE_11__* %66, i32** %13)
  %68 = load i32, i32* @EREMOTEIO, align 4
  %69 = call i32 @SET_ERROR(i32 %68)
  store i32 %69, i32* %17, align 4
  br label %157

70:                                               ; preds = %59, %51
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = call i32 @spa_activity_check_duration(%struct.TYPE_12__* %72, %struct.TYPE_11__* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @spa_get_random(i32 250)
  %77 = mul nsw i32 %75, %76
  %78 = sdiv i32 %77, 1000
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  %81 = call i64 (...) @gethrtime()
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %155, %71
  %86 = call i64 (...) @gethrtime()
  %87 = load i64, i64* %12, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %156

89:                                               ; preds = %85
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %91 = call i32 @spa_guid(%struct.TYPE_12__* %90)
  %92 = load i64, i64* %12, align 8
  %93 = call i64 (...) @gethrtime()
  %94 = sub nsw i64 %92, %93
  %95 = call i32 @NSEC2SEC(i64 %94)
  %96 = call i32 @spa_import_progress_set_mmp_check(i32 %91, i32 %95)
  %97 = load i32*, i32** %14, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = call i32 @vdev_uberblock_load(i32* %97, %struct.TYPE_11__* %98, i32** %13)
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %123, label %105

105:                                              ; preds = %89
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %106, %109
  br i1 %110, label %123, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = call i64 @MMP_SEQ_VALID(%struct.TYPE_11__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = call i32 @MMP_SEQ(%struct.TYPE_11__* %117)
  br label %120

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 0, %119 ]
  %122 = icmp ne i32 %112, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %120, %105, %89
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %127, i32 %128, i32 %131, i32 %132, i32 %135)
  %137 = load i32, i32* @EREMOTEIO, align 4
  %138 = call i32 @SET_ERROR(i32 %137)
  store i32 %138, i32* %17, align 4
  br label %156

139:                                              ; preds = %120
  %140 = load i32*, i32** %13, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @nvlist_free(i32* %143)
  store i32* null, i32** %13, align 8
  br label %145

145:                                              ; preds = %142, %139
  %146 = call i64 (...) @ddi_get_lbolt()
  %147 = load i64, i64* @hz, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @cv_timedwait_sig(i32* %15, i32* %16, i64 %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, -1
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, i32* @EINTR, align 4
  %154 = call i32 @SET_ERROR(i32 %153)
  store i32 %154, i32* %17, align 4
  br label %156

155:                                              ; preds = %145
  store i32 0, i32* %17, align 4
  br label %85

156:                                              ; preds = %152, %123, %85
  br label %157

157:                                              ; preds = %156, %64
  %158 = call i32 @mutex_exit(i32* %16)
  %159 = call i32 @mutex_destroy(i32* %16)
  %160 = call i32 @cv_destroy(i32* %15)
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @EREMOTEIO, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %215

164:                                              ; preds = %157
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  store i32 0, i32* %20, align 4
  %165 = load i32*, i32** %13, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %199

167:                                              ; preds = %164
  %168 = load i32*, i32** %13, align 8
  %169 = load i32, i32* @ZPOOL_CONFIG_HOSTNAME, align 4
  %170 = call i64 @nvlist_exists(i32* %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* @ZPOOL_CONFIG_HOSTNAME, align 4
  %175 = call i8* @fnvlist_lookup_string(i32* %173, i32 %174)
  store i8* %175, i8** %19, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTNAME, align 4
  %180 = load i8*, i8** %19, align 8
  %181 = call i32 @fnvlist_add_string(i32 %178, i32 %179, i8* %180)
  br label %182

182:                                              ; preds = %172, %167
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %185 = call i64 @nvlist_exists(i32* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %182
  %188 = load i32*, i32** %13, align 8
  %189 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %190 = call i64 @fnvlist_lookup_uint64(i32* %188, i32 %189)
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %20, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ZPOOL_CONFIG_MMP_HOSTID, align 4
  %196 = load i32, i32* %20, align 4
  %197 = call i32 @fnvlist_add_uint64(i32 %194, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %187, %182
  br label %199

199:                                              ; preds = %198, %164
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @ZPOOL_CONFIG_MMP_STATE, align 4
  %204 = load i32, i32* @MMP_STATE_ACTIVE, align 4
  %205 = call i32 @fnvlist_add_uint64(i32 %202, i32 %203, i32 %204)
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @ZPOOL_CONFIG_MMP_TXG, align 4
  %210 = call i32 @fnvlist_add_uint64(i32 %208, i32 %209, i32 0)
  %211 = load i32*, i32** %14, align 8
  %212 = load i32, i32* @VDEV_AUX_ACTIVE, align 4
  %213 = load i32, i32* @EREMOTEIO, align 4
  %214 = call i32 @spa_vdev_err(i32* %211, i32 %212, i32 %213)
  store i32 %214, i32* %17, align 4
  br label %215

215:                                              ; preds = %199, %157
  %216 = load i32*, i32** %13, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %13, align 8
  %220 = call i32 @nvlist_free(i32* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i32, i32* %17, align 4
  ret i32 %222
}

declare dso_local i64 @MMP_SEQ_VALID(%struct.TYPE_11__*) #1

declare dso_local i32 @MMP_SEQ(%struct.TYPE_11__*) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i64 @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i32 @vdev_uberblock_load(i32*, %struct.TYPE_11__*, i32**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spa_activity_check_duration(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @spa_get_random(i32) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @spa_import_progress_set_mmp_check(i32, i32) #1

declare dso_local i32 @spa_guid(%struct.TYPE_12__*) #1

declare dso_local i32 @NSEC2SEC(i64) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @cv_timedwait_sig(i32*, i32*, i64) #1

declare dso_local i64 @ddi_get_lbolt(...) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i32 @fnvlist_add_string(i32, i32, i8*) #1

declare dso_local i32 @fnvlist_add_uint64(i32, i32, i32) #1

declare dso_local i32 @spa_vdev_err(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
