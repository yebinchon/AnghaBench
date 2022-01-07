; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_vdev_io_assess.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_vdev_io_assess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i64, i64, i64, i32, i32 (i32)*, i32, i32*, %struct.TYPE_14__*, i32, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i8*, i8* }
%struct.TYPE_15__ = type { i64 }

@ZIO_CHILD_VDEV_BIT = common dso_local global i32 0, align 4
@ZIO_WAIT_DONE = common dso_local global i32 0, align 4
@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@SCL_ZIO = common dso_local global i32 0, align 4
@zio_injection_enabled = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_RETRY = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_RETRY = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_QUEUE = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_BYPASS = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_CACHE = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_AGGREGATE = common dso_local global i32 0, align 4
@ZIO_STAGE_VDEV_IO_START = common dso_local global i32 0, align 4
@ZIO_TASKQ_ISSUE = common dso_local global i32 0, align 4
@zio_requeue_io_start_cut_in_line = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i8* null, align 8
@ENOTSUP = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@ZIO_TYPE_IOCTL = common dso_local global i64 0, align 8
@DKIOCFLUSHWRITECACHE = common dso_local global i64 0, align 8
@ZIO_INTERLOCK_PIPELINE = common dso_local global i32 0, align 4
@ZIO_FLAG_DELEGATED = common dso_local global i32 0, align 4
@ZIO_CHILD_VDEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_16__*)* @zio_vdev_io_assess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @zio_vdev_io_assess(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 12
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = load i32, i32* @ZIO_CHILD_VDEV_BIT, align 4
  %10 = load i32, i32* @ZIO_WAIT_DONE, align 4
  %11 = call i64 @zio_wait_for_children(%struct.TYPE_16__* %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %247

14:                                               ; preds = %1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = icmp eq %struct.TYPE_17__* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SCL_ZIO, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = call i32 @spa_config_exit(i32 %27, i32 %28, %struct.TYPE_16__* %29)
  br label %31

31:                                               ; preds = %24, %17, %14
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 9
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 10
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = call i32 %41(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 9
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %36, %31
  %47 = load i64, i64* @zio_injection_enabled, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = load i32, i32* @EIO, align 4
  %57 = call i64 @zio_handle_fault_injection(%struct.TYPE_16__* %55, i32 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %49, %46
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %115

65:                                               ; preds = %60
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = icmp eq %struct.TYPE_17__* %66, null
  br i1 %67, label %68, label %115

68:                                               ; preds = %65
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ZIO_FLAG_DONT_RETRY, align 4
  %73 = load i32, i32* @ZIO_FLAG_IO_RETRY, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %115, label %77

77:                                               ; preds = %68
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ZIO_FLAG_DONT_QUEUE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ZIO_FLAG_IO_BYPASS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @ASSERT(i32 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @ZIO_FLAG_IO_RETRY, align 4
  %99 = load i32, i32* @ZIO_FLAG_DONT_CACHE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @ZIO_FLAG_DONT_AGGREGATE, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @ZIO_STAGE_VDEV_IO_START, align 4
  %108 = ashr i32 %107, 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = load i32, i32* @ZIO_TASKQ_ISSUE, align 4
  %113 = load i32, i32* @zio_requeue_io_start_cut_in_line, align 4
  %114 = call i32 @zio_taskq_dispatch(%struct.TYPE_16__* %111, i32 %112, i32 %113)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %247

115:                                              ; preds = %68, %65, %60
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %122 = icmp ne %struct.TYPE_17__* %121, null
  br i1 %122, label %123, label %140

123:                                              ; preds = %120
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %123
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = call i32 @vdev_accessible(%struct.TYPE_17__* %131, %struct.TYPE_16__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i64, i64* @ENXIO, align 8
  %137 = call i64 @SET_ERROR(i64 %136)
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %135, %130, %123, %120, %115
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ENXIO, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %140
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %146
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = icmp ne %struct.TYPE_17__* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %155
  %163 = load i8*, i8** @B_TRUE, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %162, %155, %152, %146, %140
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @ENOTSUP, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ENOTTY, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %197

178:                                              ; preds = %172, %166
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ZIO_TYPE_IOCTL, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %197

184:                                              ; preds = %178
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @DKIOCFLUSHWRITECACHE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %184
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %192 = icmp ne %struct.TYPE_17__* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i8*, i8** @B_TRUE, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %193, %190, %184, %178, %172
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i32, i32* @ZIO_INTERLOCK_PIPELINE, align 4
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 8
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %197
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %208 = icmp ne %struct.TYPE_17__* %207, null
  br i1 %208, label %209, label %245

209:                                              ; preds = %206
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %245

216:                                              ; preds = %209
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 7
  %219 = load i32 (i32)*, i32 (i32)** %218, align 8
  %220 = icmp ne i32 (i32)* %219, null
  br i1 %220, label %221, label %245

221:                                              ; preds = %216
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @ZIO_FLAG_DELEGATED, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  %230 = call i32 @ASSERT(i32 %229)
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @ZIO_CHILD_VDEV, align 8
  %235 = icmp eq i64 %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @ASSERT(i32 %236)
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 7
  %240 = load i32 (i32)*, i32 (i32)** %239, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = call i32 %240(i32 %243)
  br label %245

245:                                              ; preds = %221, %216, %209, %206
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %246, %struct.TYPE_16__** %2, align 8
  br label %247

247:                                              ; preds = %245, %77, %13
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %248
}

declare dso_local i64 @zio_wait_for_children(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @spa_config_exit(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @zio_handle_fault_injection(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zio_taskq_dispatch(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @vdev_accessible(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i64 @SET_ERROR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
