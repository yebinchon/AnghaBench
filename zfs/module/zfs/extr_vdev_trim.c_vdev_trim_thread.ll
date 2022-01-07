; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64*, i32, i32, i32*, i64, i64, i64, i32, i32, i32, %struct.TYPE_15__*, i32, i64, i32* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32, i32, i32, i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__*, i32, i32, i32, i32, %struct.TYPE_16__* }

@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@zfs_trim_extent_bytes_max = common dso_local global i32 0, align 4
@zfs_trim_extent_bytes_min = common dso_local global i32 0, align 4
@RANGE_SEG64 = common dso_local global i32 0, align 4
@TRIM_TYPE_MANUAL = common dso_local global i32 0, align 4
@ZIO_TRIM_SECURE = common dso_local global i32 0, align 4
@SPA_MINBLOCKSIZE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@vdev_trim_range_add = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDEV_TRIM_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vdev_trim_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_trim_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %3, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 13
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 13
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @spa_get_dsl(i32* %17)
  %19 = call i32 @txg_wait_synced(i32 %18, i32 0)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = call i32 @vdev_is_concrete(%struct.TYPE_16__* %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @SCL_CONFIG, align 4
  %25 = load i32, i32* @FTAG, align 4
  %26 = load i32, i32* @RW_READER, align 4
  %27 = call i32 @spa_config_enter(i32* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 12
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = call i32 @vdev_trim_load(%struct.TYPE_16__* %36)
  %38 = call i32 @VERIFY0(i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 6
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %40, align 8
  %41 = load i32, i32* @zfs_trim_extent_bytes_max, align 4
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @zfs_trim_extent_bytes_min, align 4
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @RANGE_SEG64, align 4
  %46 = call i32 @range_tree_create(i32* null, i32 %45, i32* null, i32 0, i32 0)
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @TRIM_TYPE_MANUAL, align 4
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %1
  %56 = load i32, i32* @ZIO_TRIM_SECURE, align 4
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  br label %62

62:                                               ; preds = %55, %1
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %63

63:                                               ; preds = %171, %62
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 10
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %69, %74
  br label %76

76:                                               ; preds = %68, %63
  %77 = phi i1 [ false, %63 ], [ %75, %68 ]
  br i1 %77, label %78, label %174

78:                                               ; preds = %76
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 10
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %83, i64 %84
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %9, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 10
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %78
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = call i32 @vdev_trim_calculate_progress(%struct.TYPE_16__* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 10
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %94, %78
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @SCL_CONFIG, align 4
  %105 = load i32, i32* @FTAG, align 4
  %106 = call i32 @spa_config_exit(i32* %103, i32 %104, i32 %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %108 = call i32 @metaslab_disable(%struct.TYPE_18__* %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = call i32 @mutex_enter(i32* %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %113 = call i32 @metaslab_load(%struct.TYPE_18__* %112)
  %114 = call i32 @VERIFY0(i32 %113)
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %139

119:                                              ; preds = %102
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = call i32 @mutex_exit(i32* %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %129 = load i32, i32* @B_FALSE, align 4
  %130 = load i32, i32* @B_FALSE, align 4
  %131 = call i32 @metaslab_enable(%struct.TYPE_18__* %128, i32 %129, i32 %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @SCL_CONFIG, align 4
  %134 = load i32, i32* @FTAG, align 4
  %135 = load i32, i32* @RW_READER, align 4
  %136 = call i32 @spa_config_enter(i32* %132, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = call i32 @vdev_trim_calculate_progress(%struct.TYPE_16__* %137)
  br label %171

139:                                              ; preds = %119, %102
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  store %struct.TYPE_18__* %140, %struct.TYPE_18__** %141, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @vdev_trim_range_add, align 4
  %146 = call i32 @range_tree_walk(i32 %144, i32 %145, %struct.TYPE_17__* %5)
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @range_tree_vacate(i32 %149, i32* null, i32* null)
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = call i32 @mutex_exit(i32* %152)
  %154 = call i32 @vdev_trim_ranges(%struct.TYPE_17__* %5)
  store i32 %154, i32* %6, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %156 = load i32, i32* @B_TRUE, align 4
  %157 = load i32, i32* @B_FALSE, align 4
  %158 = call i32 @metaslab_enable(%struct.TYPE_18__* %155, i32 %156, i32 %157)
  %159 = load i32*, i32** %4, align 8
  %160 = load i32, i32* @SCL_CONFIG, align 4
  %161 = load i32, i32* @FTAG, align 4
  %162 = load i32, i32* @RW_READER, align 4
  %163 = call i32 @spa_config_enter(i32* %159, i32 %160, i32 %161, i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @range_tree_vacate(i32 %165, i32* null, i32* null)
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %139
  br label %174

170:                                              ; preds = %139
  br label %171

171:                                              ; preds = %170, %124
  %172 = load i64, i64* %8, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %8, align 8
  br label %63

174:                                              ; preds = %169, %76
  %175 = load i32*, i32** %4, align 8
  %176 = load i32, i32* @SCL_CONFIG, align 4
  %177 = load i32, i32* @FTAG, align 4
  %178 = call i32 @spa_config_exit(i32* %175, i32 %176, i32 %177)
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 8
  %181 = call i32 @mutex_enter(i32* %180)
  br label %182

182:                                              ; preds = %189, %174
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 9
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 8
  %194 = call i32 @cv_wait(i32* %191, i32* %193)
  br label %182

195:                                              ; preds = %182
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 8
  %198 = call i32 @mutex_exit(i32* %197)
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @range_tree_destroy(i32 %200)
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  %204 = call i32 @mutex_enter(i32* %203)
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %226, label %209

209:                                              ; preds = %195
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %211 = call i64 @vdev_writeable(%struct.TYPE_16__* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %209
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %215 = load i32, i32* @VDEV_TRIM_COMPLETE, align 4
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @vdev_trim_change_state(%struct.TYPE_16__* %214, i32 %215, i64 %218, i64 %221, i64 %224)
  br label %226

226:                                              ; preds = %213, %209, %195
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %238, label %231

231:                                              ; preds = %226
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  br label %238

238:                                              ; preds = %231, %226
  %239 = phi i1 [ true, %226 ], [ %237, %231 ]
  %240 = zext i1 %239 to i32
  %241 = call i32 @ASSERT(i32 %240)
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  %244 = call i32 @mutex_exit(i32* %243)
  %245 = load i32*, i32** %4, align 8
  %246 = call i32 @spa_get_dsl(i32* %245)
  %247 = call i32 @txg_wait_synced(i32 %246, i32 0)
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = call i32 @mutex_enter(i32* %249)
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 3
  store i32* null, i32** %252, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 2
  %255 = call i32 @cv_broadcast(i32* %254)
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 1
  %258 = call i32 @mutex_exit(i32* %257)
  ret void
}

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_get_dsl(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_16__*) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @vdev_trim_load(%struct.TYPE_16__*) #1

declare dso_local i32 @range_tree_create(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @vdev_trim_calculate_progress(%struct.TYPE_16__*) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32 @metaslab_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @metaslab_load(%struct.TYPE_18__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @metaslab_enable(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @range_tree_walk(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @range_tree_vacate(i32, i32*, i32*) #1

declare dso_local i32 @vdev_trim_ranges(%struct.TYPE_17__*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @range_tree_destroy(i32) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_16__*) #1

declare dso_local i32 @vdev_trim_change_state(%struct.TYPE_16__*, i32, i64, i64, i64) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
