; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_mirror.c_vdev_mirror_io_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_mirror.c_vdev_mirror_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32, i32, i8*, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_15__*, i64, i32 }
%struct.TYPE_15__ = type { i32* }

@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@vdev_mirror_child_done = common dso_local global i32* null, align 8
@ZIO_FLAG_RESILVER = common dso_local global i32 0, align 4
@ZIO_FLAG_SCRUB = common dso_local global i32 0, align 4
@vdev_indirect_ops = common dso_local global i32 0, align 4
@DTL_PARTIAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_WRITE = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_REPAIR = common dso_local global i32 0, align 4
@ZIO_FLAG_SELF_HEAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @vdev_mirror_io_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_mirror_io_done(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 10
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = icmp eq %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %273

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %51, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %15
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 %26
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %4, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %32
  br label %50

41:                                               ; preds = %21
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %15

54:                                               ; preds = %15
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 9
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69, %66
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = call i8* @vdev_mirror_worst_error(%struct.TYPE_13__* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %60
  br label %273

81:                                               ; preds = %54
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ZIO_TYPE_READ, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %140

91:                                               ; preds = %81
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = call i32 @vdev_mirror_child_select(%struct.TYPE_12__* %92)
  store i32 %93, i32* %5, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %140

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br label %104

104:                                              ; preds = %98, %95
  %105 = phi i1 [ false, %95 ], [ %103, %98 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i64 %112
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %4, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %115 = call i32 @zio_vdev_io_redone(%struct.TYPE_12__* %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i64, i64* @ZIO_TYPE_READ, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** @vdev_mirror_child_done, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = call i32 @zio_vdev_child_io(%struct.TYPE_12__* %116, i32 %119, %struct.TYPE_15__* %122, i32 %125, i32 %128, i32 %131, i64 %132, i32 %135, i32 0, i32* %136, %struct.TYPE_14__* %137)
  %139 = call i32 @zio_nowait(i32 %138)
  br label %273

140:                                              ; preds = %91, %81
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %145 = call i8* @vdev_mirror_worst_error(%struct.TYPE_13__* %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 7
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 7
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 @ASSERT(i32 %152)
  br label %154

154:                                              ; preds = %143, %140
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %273

157:                                              ; preds = %154
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @spa_writeable(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %273

163:                                              ; preds = %157
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %185, label %166

166:                                              ; preds = %163
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @ZIO_FLAG_RESILVER, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %166
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %273

180:                                              ; preds = %173
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %273

185:                                              ; preds = %180, %166, %163
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %269, %185
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %272

192:                                              ; preds = %186
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i64 %197
  store %struct.TYPE_14__* %198, %struct.TYPE_14__** %4, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %239

203:                                              ; preds = %192
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %269

209:                                              ; preds = %203
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %234, label %216

216:                                              ; preds = %209
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, @vdev_indirect_ops
  br i1 %222, label %223, label %234

223:                                              ; preds = %216
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %225, align 8
  %227 = load i32, i32* @DTL_PARTIAL, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @vdev_dtl_contains(%struct.TYPE_15__* %226, i32 %227, i32 %230, i32 1)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %223
  br label %269

234:                                              ; preds = %223, %216, %209
  %235 = load i32, i32* @ESTALE, align 4
  %236 = call i64 @SET_ERROR(i32 %235)
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %234, %192
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %257 = load i32, i32* @ZIO_PRIORITY_ASYNC_WRITE, align 4
  %258 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %239
  %262 = load i32, i32* @ZIO_FLAG_SELF_HEAL, align 4
  br label %264

263:                                              ; preds = %239
  br label %264

264:                                              ; preds = %263, %261
  %265 = phi i32 [ %262, %261 ], [ 0, %263 ]
  %266 = or i32 %258, %265
  %267 = call i32 @zio_vdev_child_io(%struct.TYPE_12__* %240, i32 %243, %struct.TYPE_15__* %246, i32 %249, i32 %252, i32 %255, i64 %256, i32 %257, i32 %266, i32* null, %struct.TYPE_14__* null)
  %268 = call i32 @zio_nowait(i32 %267)
  br label %269

269:                                              ; preds = %264, %233, %208
  %270 = load i32, i32* %5, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %5, align 4
  br label %186

272:                                              ; preds = %186
  br label %273

273:                                              ; preds = %13, %80, %104, %272, %180, %173, %157, %154
  ret void
}

declare dso_local i8* @vdev_mirror_worst_error(%struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @vdev_mirror_child_select(%struct.TYPE_12__*) #1

declare dso_local i32 @zio_vdev_io_redone(%struct.TYPE_12__*) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_vdev_child_io(%struct.TYPE_12__*, i32, %struct.TYPE_15__*, i32, i32, i32, i64, i32, i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @spa_writeable(i32) #1

declare dso_local i32 @vdev_dtl_contains(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
