; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_mmp.c_mmp_thread.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_mmp.c_mmp_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32, i32, i32, i32 }

@zfs_multihost_interval = common dso_local global i32 0, align 4
@zfs_multihost_fail_intervals = common dso_local global i32 0, align 4
@MMP_DEFAULT_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [190 x i8] c"MMP interval change pool '%s' gethrtime %llu last_mmp_interval %llu mmp_interval %llu last_mmp_fail_intervals %u mmp_fail_intervals %u mmp_fail_ns %llu skip_wait %d leaves %d next_time %llu\00", align 1
@.str.1 = private unnamed_addr constant [113 x i8] c"MMP state change pool '%s': gethrtime %llu last_spa_multihost %u multihost %u last_spa_suspended %u suspended %u\00", align 1
@.str.2 = private unnamed_addr constant [120 x i8] c"MMP suspending pool '%s': gethrtime %llu mmp_last_write %llu mmp_interval %llu mmp_fail_intervals %llu mmp_fail_ns %llu\00", align 1
@CE_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [89 x i8] c"MMP writes to pool '%s' have not succeeded in over %llu ms; suspending pool. Hrtime %llu\00", align 1
@ZIO_SUSPEND_MMP = common dso_local global i32 0, align 4
@MMP_MIN_INTERVAL = common dso_local global i32 0, align 4
@CALLOUT_FLAG_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mmp_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %3, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %4, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i32 @spa_suspended(%struct.TYPE_11__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i32 @spa_multihost(%struct.TYPE_11__* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @zfs_multihost_interval, align 4
  %28 = call i32 @MMP_INTERVAL_OK(i32 %27)
  %29 = call i32 @MSEC2NSEC(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @zfs_multihost_fail_intervals, align 4
  %31 = call i32 @MMP_FAIL_INTVS_OK(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @mmp_thread_enter(%struct.TYPE_12__* %40, i32* %15)
  br label %42

42:                                               ; preds = %235, %1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %248

48:                                               ; preds = %42
  %49 = call i32 (...) @gethrtime()
  %50 = load i32, i32* @MMP_DEFAULT_INTERVAL, align 4
  %51 = call i32 @MSEC2NSEC(i32 %50)
  %52 = add nsw i32 %49, %51
  store i32 %52, i32* %17, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = call i32 @vdev_count_leaves(%struct.TYPE_11__* %53)
  %55 = call i32 @MAX(i32 %54, i32 1)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = call i32 @spa_suspended(%struct.TYPE_11__* %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = call i32 @spa_multihost(%struct.TYPE_11__* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @zfs_multihost_interval, align 4
  %66 = call i32 @MMP_INTERVAL_OK(i32 %65)
  %67 = call i32 @MSEC2NSEC(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @zfs_multihost_fail_intervals, align 4
  %69 = call i32 @MMP_FAIL_INTVS_OK(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %48
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 %76, 31
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %77, %80
  %82 = sdiv i32 %81, 32
  store i32 %82, i32* %9, align 4
  br label %87

83:                                               ; preds = %48
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %83, %75
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = call i32 (...) @gethrtime()
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %18, align 4
  %106 = sdiv i32 %104, %105
  %107 = add nsw i32 %103, %106
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %102, %99
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = call i32 @spa_name(%struct.TYPE_11__* %113)
  %115 = call i32 (...) @gethrtime()
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %17, align 4
  %124 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %112, %108
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %157, label %137

137:                                              ; preds = %134, %128
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = call i32 @spa_name(%struct.TYPE_11__* %138)
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 6
  %147 = call i32 @mutex_enter(i32* %146)
  %148 = call i32 (...) @gethrtime()
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 6
  %156 = call i32 @mutex_exit(i32* %155)
  br label %157

157:                                              ; preds = %137, %134, %131
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %160
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 6
  %166 = call i32 @mutex_enter(i32* %165)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 6
  %171 = call i32 @mutex_exit(i32* %170)
  br label %172

172:                                              ; preds = %163, %160, %157
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %214

175:                                              ; preds = %172
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %214, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %214

181:                                              ; preds = %178
  %182 = call i32 (...) @gethrtime()
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %182, %185
  %187 = load i32, i32* %9, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %214

189:                                              ; preds = %181
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %191 = call i32 @spa_name(%struct.TYPE_11__* %190)
  %192 = call i32 (...) @gethrtime()
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i64 0, i64 0), i32 %191, i32 %192, i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* @CE_WARN, align 4
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %202 = call i32 @spa_name(%struct.TYPE_11__* %201)
  %203 = call i32 (...) @gethrtime()
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %203, %206
  %208 = call i32 @NSEC2MSEC(i32 %207)
  %209 = call i32 (...) @gethrtime()
  %210 = call i32 @cmn_err(i32 %200, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i32 %202, i32 %208, i32 %209)
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %212 = load i32, i32* @ZIO_SUSPEND_MMP, align 4
  %213 = call i32 @zio_suspend(%struct.TYPE_11__* %211, i32* null, i32 %212)
  br label %214

214:                                              ; preds = %189, %181, %178, %175, %172
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %222 = call i32 @mmp_write_uberblock(%struct.TYPE_11__* %221)
  br label %223

223:                                              ; preds = %220, %217, %214
  %224 = load i32, i32* %16, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = call i32 (...) @gethrtime()
  %228 = load i32, i32* @MMP_MIN_INTERVAL, align 4
  %229 = call i32 @MSEC2NSEC(i32 %228)
  %230 = load i32, i32* %18, align 4
  %231 = sdiv i32 %229, %230
  %232 = add nsw i32 %227, %231
  store i32 %232, i32* %17, align 4
  %233 = load i32, i32* %16, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %16, align 4
  br label %235

235:                                              ; preds = %226, %223
  %236 = call i32 @CALLB_CPR_SAFE_BEGIN(i32* %15)
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 5
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 4
  %241 = load i32, i32* %17, align 4
  %242 = call i32 @USEC2NSEC(i32 100)
  %243 = load i32, i32* @CALLOUT_FLAG_ABSOLUTE, align 4
  %244 = call i32 @cv_timedwait_sig_hires(i32* %238, i32* %240, i32 %241, i32 %242, i32 %243)
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 4
  %247 = call i32 @CALLB_CPR_SAFE_END(i32* %15, i32* %246)
  br label %42

248:                                              ; preds = %42
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 3
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = call i32 @zio_wait(i32* %256)
  br label %258

258:                                              ; preds = %253, %248
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 3
  store i32* null, i32** %260, align 8
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 2
  %264 = call i32 @mmp_thread_exit(%struct.TYPE_12__* %261, i32* %263, i32* %15)
  ret void
}

declare dso_local i32 @spa_suspended(%struct.TYPE_11__*) #1

declare dso_local i32 @spa_multihost(%struct.TYPE_11__*) #1

declare dso_local i32 @MSEC2NSEC(i32) #1

declare dso_local i32 @MMP_INTERVAL_OK(i32) #1

declare dso_local i32 @MMP_FAIL_INTVS_OK(i32) #1

declare dso_local i32 @mmp_thread_enter(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @vdev_count_leaves(%struct.TYPE_11__*) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @spa_name(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @cmn_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @NSEC2MSEC(i32) #1

declare dso_local i32 @zio_suspend(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @mmp_write_uberblock(%struct.TYPE_11__*) #1

declare dso_local i32 @CALLB_CPR_SAFE_BEGIN(i32*) #1

declare dso_local i32 @cv_timedwait_sig_hires(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @USEC2NSEC(i32) #1

declare dso_local i32 @CALLB_CPR_SAFE_END(i32*, i32*) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @mmp_thread_exit(%struct.TYPE_12__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
