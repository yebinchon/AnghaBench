; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_mmp.c_mmp_write_uberblock.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_mmp.c_mmp_write_uberblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i64, i32*, i32, %struct.TYPE_23__, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i64 }

@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@mmp_tag = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@MMP_MIN_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"MMP SCL_STATE acquisition pool '%s' took %llu ns gethrtime %llu\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"MMP error choosing leaf pool '%s' gethrtime %llu fail_mask %#x\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"MMP write after skipping due to unavailable leaves, pool '%s' gethrtime %llu leaf %#llu\00", align 1
@ZIO_FLAG_GODFATHER = common dso_local global i32 0, align 4
@MMP_MAGIC = common dso_local global i32 0, align 4
@zfs_multihost_interval = common dso_local global i32 0, align 4
@zfs_multihost_fail_intervals = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@MMP_BLOCKS_PER_LABEL = common dso_local global i64 0, align 8
@VDEV_LABELS = common dso_local global i64 0, align 8
@mmp_write_done = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @mmp_write_uberblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_write_uberblock(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %13 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %14 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  %18 = call i32 (...) @gethrtime()
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %20 = load i32, i32* @SCL_STATE, align 4
  %21 = load i32, i32* @mmp_tag, align 4
  %22 = load i32, i32* @RW_READER, align 4
  %23 = call i32 @spa_config_enter(%struct.TYPE_24__* %19, i32 %20, i32 %21, i32 %22)
  %24 = call i32 (...) @gethrtime()
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MMP_MIN_INTERVAL, align 4
  %29 = call i32 @MSEC2NSEC(i32 %28)
  %30 = sdiv i32 %29, 10
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %34 = call i32 @spa_name(%struct.TYPE_24__* %33)
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (...) @gethrtime()
  %37 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %1
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 2
  %41 = call i32 @mutex_enter(i32* %40)
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %43 = call i32 @mmp_next_leaf(%struct.TYPE_24__* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %38
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %48 = load i32, i32* @B_FALSE, align 4
  %49 = call i32 @mmp_delay_update(%struct.TYPE_24__* %47, i32 %48)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, 1
  %61 = call i32 @spa_mmp_history_set_skip(%struct.TYPE_24__* %56, i64 %60)
  br label %86

62:                                               ; preds = %46
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i64 (...) @gethrestime_sec()
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @spa_mmp_history_add(%struct.TYPE_24__* %66, i32 %70, i64 %71, i32 %74, %struct.TYPE_22__* null, i32 0, i64 %77, i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %82 = call i32 @spa_name(%struct.TYPE_24__* %81)
  %83 = call i32 (...) @gethrtime()
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %62, %55
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 2
  %89 = call i32 @mutex_exit(i32* %88)
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %91 = load i32, i32* @SCL_STATE, align 4
  %92 = load i32, i32* @mmp_tag, align 4
  %93 = call i32 @spa_config_exit(%struct.TYPE_24__* %90, i32 %91, i32 %92)
  br label %244

94:                                               ; preds = %38
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 7
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %97, align 8
  store %struct.TYPE_22__* %98, %struct.TYPE_22__** %6, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %94
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %107 = call i32 @spa_name(%struct.TYPE_24__* %106)
  %108 = call i32 (...) @gethrtime()
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %103, %94
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @ZIO_FLAG_GODFATHER, align 4
  %122 = or i32 %120, %121
  %123 = call i32* @zio_root(%struct.TYPE_24__* %119, i32* null, i32* null, i32 %122)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 4
  store i32* %123, i32** %125, align 8
  br label %126

126:                                              ; preds = %118, %113
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 (...) @gethrestime_sec()
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = call i64 (...) @gethrestime_sec()
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  store i64 %134, i64* %137, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %133, %126
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 6
  store %struct.TYPE_23__* %142, %struct.TYPE_23__** %5, align 8
  %143 = load i32, i32* @MMP_MAGIC, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @MMP_SEQ_SET(i32 %153)
  %155 = load i32, i32* @zfs_multihost_interval, align 4
  %156 = call i32 @MMP_INTERVAL_OK(i32 %155)
  %157 = call i32 @MMP_INTERVAL_SET(i32 %156)
  %158 = or i32 %154, %157
  %159 = load i32, i32* @zfs_multihost_fail_intervals, align 4
  %160 = call i32 @MMP_FAIL_INTVS_OK(i32 %159)
  %161 = call i32 @MMP_FAIL_INT_SET(i32 %160)
  %162 = or i32 %158, %161
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 8
  %165 = call i32 (...) @gethrtime()
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 2
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %177 = load i32, i32* %3, align 4
  %178 = call i32* @zio_null(i32* %175, %struct.TYPE_24__* %176, i32* null, i32* null, i32* null, i32 %177)
  store i32* %178, i32** %11, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %180 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_22__* %179)
  %181 = load i32, i32* @B_TRUE, align 4
  %182 = call i32* @abd_alloc_for_io(i32 %180, i32 %181)
  store i32* %182, i32** %12, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %185 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_22__* %184)
  %186 = call i32 @abd_zero(i32* %183, i32 %185)
  %187 = load i32*, i32** %12, align 8
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %189 = call i32 @abd_copy_from_buf(i32* %187, %struct.TYPE_23__* %188, i32 24)
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %195, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 2
  %200 = call i32 @mutex_exit(i32* %199)
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %203 = call i64 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_22__* %202)
  %204 = load i64, i64* @MMP_BLOCKS_PER_LABEL, align 8
  %205 = sub nsw i64 %203, %204
  %206 = load i64, i64* @MMP_BLOCKS_PER_LABEL, align 8
  %207 = call i32 @spa_get_random(i64 %206)
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %205, %208
  %210 = call i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_22__* %201, i64 %209)
  store i32 %210, i32* %9, align 4
  %211 = load i64, i64* @VDEV_LABELS, align 8
  %212 = call i32 @spa_get_random(i64 %211)
  store i32 %212, i32* %7, align 4
  %213 = load i32*, i32** %11, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %215 = load i32, i32* %7, align 4
  %216 = load i32*, i32** %12, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %219 = call i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_22__* %218)
  %220 = load i32, i32* @mmp_write_done, align 4
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %222 = load i32, i32* %3, align 4
  %223 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @vdev_label_write(i32* %213, %struct.TYPE_22__* %214, i32 %215, i32* %216, i32 %217, i32 %219, i32 %220, %struct.TYPE_25__* %221, i32 %224)
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @spa_mmp_history_add(%struct.TYPE_24__* %226, i32 %229, i64 %232, i32 %235, %struct.TYPE_22__* %236, i32 %237, i64 %240, i32 0)
  %242 = load i32*, i32** %11, align 8
  %243 = call i32 @zio_nowait(i32* %242)
  br label %244

244:                                              ; preds = %140, %86
  ret void
}

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @MSEC2NSEC(i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_24__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mmp_next_leaf(%struct.TYPE_24__*) #1

declare dso_local i32 @mmp_delay_update(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @spa_mmp_history_set_skip(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @spa_mmp_history_add(%struct.TYPE_24__*, i32, i64, i32, %struct.TYPE_22__*, i32, i64, i32) #1

declare dso_local i64 @gethrestime_sec(...) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32* @zio_root(%struct.TYPE_24__*, i32*, i32*, i32) #1

declare dso_local i32 @MMP_SEQ_SET(i32) #1

declare dso_local i32 @MMP_INTERVAL_SET(i32) #1

declare dso_local i32 @MMP_INTERVAL_OK(i32) #1

declare dso_local i32 @MMP_FAIL_INT_SET(i32) #1

declare dso_local i32 @MMP_FAIL_INTVS_OK(i32) #1

declare dso_local i32* @zio_null(i32*, %struct.TYPE_24__*, i32*, i32*, i32*, i32) #1

declare dso_local i32* @abd_alloc_for_io(i32, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_SIZE(%struct.TYPE_22__*) #1

declare dso_local i32 @abd_zero(i32*, i32) #1

declare dso_local i32 @abd_copy_from_buf(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @VDEV_UBERBLOCK_OFFSET(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @VDEV_UBERBLOCK_COUNT(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_get_random(i64) #1

declare dso_local i32 @vdev_label_write(i32*, %struct.TYPE_22__*, i32, i32*, i32, i32, i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @zio_nowait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
