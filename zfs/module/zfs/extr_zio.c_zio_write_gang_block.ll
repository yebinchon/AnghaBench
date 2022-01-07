; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_write_gang_block.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_write_gang_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_28__, %struct.TYPE_32__**, %struct.TYPE_32__*, i32, i32*, %struct.TYPE_29__*, i32* }
%struct.TYPE_28__ = type { i32, i32, i64, i32 }
%struct.TYPE_32__ = type { i32*, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32, i64, i8*, i8*, i8*, i64, i32, i32, i32 }

@ZIO_FLAG_NODATA = common dso_local global i32 0, align 4
@SPA_DVAS_PER_BP = common dso_local global i32 0, align 4
@METASLAB_HINTBP_FAVOR = common dso_local global i32 0, align 4
@METASLAB_GANG_HEADER = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_ALLOCATING = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_WRITE = common dso_local global i64 0, align 8
@METASLAB_ASYNC_ALLOC = common dso_local global i32 0, align 4
@SPA_GANGBLOCKSIZE = common dso_local global i32 0, align 4
@zio_write_gang_member_ready = common dso_local global i64 0, align 8
@zio_write_gang_done = common dso_local global i32 0, align 4
@SPA_GBH_NBLKPTRS = common dso_local global i32 0, align 4
@SPA_MINBLOCKSIZE = common dso_local global i32 0, align 4
@ZIO_COMPRESS_OFF = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZIO_DATA_SALT_LEN = common dso_local global i32 0, align 4
@ZIO_DATA_IV_LEN = common dso_local global i32 0, align 4
@ZIO_DATA_MAC_LEN = common dso_local global i32 0, align 4
@ZIO_INTERLOCK_PIPELINE = common dso_local global i32 0, align 4
@ZIO_FLAG_FASTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_29__*)* @zio_write_gang_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @zio_write_gang_block(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_32__**, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_30__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 16
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_33__* @spa_normal_class(i32* %27)
  store %struct.TYPE_33__* %28, %struct.TYPE_33__** %5, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 14
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %6, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 15
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  store %struct.TYPE_29__* %34, %struct.TYPE_29__** %7, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 10
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %16, align 4
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ZIO_FLAG_NODATA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @spa_max_replication(i32* %55)
  %57 = call i32 @MIN(i32 %54, i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %1
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @SPA_DVAS_PER_BP, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @SPA_DVAS_PER_BP, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %67, %63, %1
  %71 = load i32, i32* @METASLAB_HINTBP_FAVOR, align 4
  %72 = load i32, i32* @METASLAB_GANG_HEADER, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %21, align 4
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ZIO_FLAG_IO_ALLOCATING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %114

80:                                               ; preds = %70
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load i32, i32* %20, align 4
  %89 = call i32 @ASSERT(i32 %88)
  %90 = load i32, i32* @METASLAB_ASYNC_ALLOC, align 4
  %91 = load i32, i32* %21, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %21, align 4
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %101 = call i32 @zfs_refcount_held(i32* %99, %struct.TYPE_29__* %100)
  %102 = call i32 @VERIFY(i32 %101)
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %111 = load i32, i32* %21, align 4
  %112 = call i32 @metaslab_class_throttle_reserve(%struct.TYPE_33__* %103, i32 %106, i64 %109, %struct.TYPE_29__* %110, i32 %111)
  %113 = call i32 @VERIFY(i32 %112)
  br label %114

114:                                              ; preds = %80, %70
  %115 = load i32*, i32** %4, align 8
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %117 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %123 = icmp eq %struct.TYPE_29__* %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %129

125:                                              ; preds = %114
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 14
  %128 = load i32*, i32** %127, align 8
  br label %129

129:                                              ; preds = %125, %124
  %130 = phi i32* [ null, %124 ], [ %128, %125 ]
  %131 = load i32, i32* %21, align 4
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 13
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @metaslab_alloc(i32* %115, %struct.TYPE_33__* %116, i32 %117, i32* %118, i32 %119, i32 %120, i32* %130, i32 %131, i32* %133, %struct.TYPE_29__* %134, i64 %137)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %172

141:                                              ; preds = %129
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ZIO_FLAG_IO_ALLOCATING, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %141
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @ASSERT(i32 %154)
  %156 = load i32, i32* %20, align 4
  %157 = call i32 @ASSERT(i32 %156)
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %16, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %166 = call i32 @metaslab_class_throttle_unreserve(%struct.TYPE_33__* %158, i32 %161, i64 %164, %struct.TYPE_29__* %165)
  br label %167

167:                                              ; preds = %148, %141
  %168 = load i32, i32* %19, align 4
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_29__* %171, %struct.TYPE_29__** %2, align 8
  br label %372

172:                                              ; preds = %129
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %175 = icmp eq %struct.TYPE_29__* %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 12
  store %struct.TYPE_32__** %178, %struct.TYPE_32__*** %10, align 8
  br label %190

179:                                              ; preds = %172
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 11
  %182 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %181, align 8
  store %struct.TYPE_32__** %182, %struct.TYPE_32__*** %10, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @zio_write_gang_member_ready, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @ASSERT(i32 %188)
  br label %190

190:                                              ; preds = %179, %176
  %191 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %10, align 8
  %192 = call %struct.TYPE_32__* @zio_gang_node_alloc(%struct.TYPE_32__** %191)
  store %struct.TYPE_32__* %192, %struct.TYPE_32__** %9, align 8
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %194, align 8
  store %struct.TYPE_31__* %195, %struct.TYPE_31__** %11, align 8
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %197 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %198 = call i32 @bzero(%struct.TYPE_31__* %196, i32 %197)
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %200 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %201 = call i32* @abd_get_from_buf(%struct.TYPE_31__* %199, i32 %200)
  store i32* %201, i32** %12, align 8
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %203 = load i32*, i32** %4, align 8
  %204 = load i32, i32* %13, align 4
  %205 = load i32*, i32** %6, align 8
  %206 = load i32*, i32** %12, align 8
  %207 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %208 = load i32, i32* @zio_write_gang_done, align 4
  %209 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %213 = call i32 @ZIO_GANG_CHILD_FLAGS(%struct.TYPE_29__* %212)
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 8
  %216 = call %struct.TYPE_29__* @zio_rewrite(%struct.TYPE_29__* %202, i32* %203, i32 %204, i32* %205, i32* %206, i32 %207, i32 %208, i32* null, i64 %211, i32 %213, i32* %215)
  store %struct.TYPE_29__* %216, %struct.TYPE_29__** %8, align 8
  store i32 0, i32* %22, align 4
  br label %217

217:                                              ; preds = %353, %190
  %218 = load i32, i32* %14, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %359

220:                                              ; preds = %217
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* @SPA_GBH_NBLKPTRS, align 4
  %223 = load i32, i32* %22, align 4
  %224 = sub nsw i32 %222, %223
  %225 = sdiv i32 %221, %224
  %226 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %227 = call i32 @P2ROUNDUP(i32 %225, i32 %226)
  store i32 %227, i32* %15, align 4
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %230 = icmp sge i32 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %220
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %14, align 4
  %234 = icmp sle i32 %232, %233
  br label %235

235:                                              ; preds = %231, %220
  %236 = phi i1 [ false, %220 ], [ %234, %231 ]
  %237 = zext i1 %236 to i32
  %238 = call i32 @ASSERT(i32 %237)
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 10
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 12
  store i32 %242, i32* %243, align 8
  %244 = load i32, i32* @ZIO_COMPRESS_OFF, align 4
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 11
  store i32 %244, i32* %245, align 4
  %246 = load i32, i32* @DMU_OT_NONE, align 4
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 10
  store i32 %246, i32* %247, align 8
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 9
  store i64 0, i64* %248, align 8
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 10
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  store i32 %252, i32* %253, align 8
  %254 = load i8*, i8** @B_FALSE, align 8
  %255 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 8
  store i8* %254, i8** %255, align 8
  %256 = load i8*, i8** @B_FALSE, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 7
  store i8* %256, i8** %257, align 8
  %258 = load i8*, i8** @B_FALSE, align 8
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 6
  store i8* %258, i8** %259, align 8
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 10
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 5
  store i64 %263, i64* %264, align 8
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 10
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 4
  store i32 %268, i32* %269, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 3
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %270, align 8
  %272 = load i32, i32* @ZIO_DATA_SALT_LEN, align 4
  %273 = call i32 @bzero(%struct.TYPE_31__* %271, i32 %272)
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 2
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %274, align 8
  %276 = load i32, i32* @ZIO_DATA_IV_LEN, align 4
  %277 = call i32 @bzero(%struct.TYPE_31__* %275, i32 %276)
  %278 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 1
  %279 = load %struct.TYPE_31__*, %struct.TYPE_31__** %278, align 8
  %280 = load i32, i32* @ZIO_DATA_MAC_LEN, align 4
  %281 = call i32 @bzero(%struct.TYPE_31__* %279, i32 %280)
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %283 = load i32*, i32** %4, align 8
  %284 = load i32, i32* %13, align 4
  %285 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %22, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %20, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %235
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 9
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %14, align 4
  %301 = sub nsw i32 %299, %300
  %302 = call i32* @abd_get_offset(i32 %296, i32 %301)
  br label %304

303:                                              ; preds = %235
  br label %304

304:                                              ; preds = %303, %293
  %305 = phi i32* [ %302, %293 ], [ null, %303 ]
  %306 = load i32, i32* %15, align 4
  %307 = load i32, i32* %15, align 4
  %308 = load i64, i64* @zio_write_gang_member_ready, align 8
  %309 = load i32, i32* @zio_write_gang_done, align 4
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %22, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %320 = call i32 @ZIO_GANG_CHILD_FLAGS(%struct.TYPE_29__* %319)
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 8
  %323 = call %struct.TYPE_29__* @zio_write(%struct.TYPE_29__* %282, i32* %283, i32 %284, i32* %290, i32* %305, i32 %306, i32 %307, %struct.TYPE_30__* %18, i64 %308, i32* null, i32* null, i32 %309, i32* %315, i64 %318, i32 %320, i32* %322)
  store %struct.TYPE_29__* %323, %struct.TYPE_29__** %23, align 8
  %324 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @ZIO_FLAG_IO_ALLOCATING, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %350

330:                                              ; preds = %304
  %331 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %335 = icmp eq i64 %333, %334
  %336 = zext i1 %335 to i32
  %337 = call i32 @ASSERT(i32 %336)
  %338 = load i32, i32* %20, align 4
  %339 = call i32 @ASSERT(i32 %338)
  %340 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %344 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %343, i32 0, i32 4
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %347 = load i32, i32* %21, align 4
  %348 = call i32 @metaslab_class_throttle_reserve(%struct.TYPE_33__* %340, i32 %342, i64 %345, %struct.TYPE_29__* %346, i32 %347)
  %349 = call i32 @VERIFY(i32 %348)
  br label %350

350:                                              ; preds = %330, %304
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %352 = call i32 @zio_nowait(%struct.TYPE_29__* %351)
  br label %353

353:                                              ; preds = %350
  %354 = load i32, i32* %15, align 4
  %355 = load i32, i32* %14, align 4
  %356 = sub nsw i32 %355, %354
  store i32 %356, i32* %14, align 4
  %357 = load i32, i32* %22, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %22, align 4
  br label %217

359:                                              ; preds = %217
  %360 = load i32, i32* @ZIO_INTERLOCK_PIPELINE, align 4
  %361 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %361, i32 0, i32 7
  store i32 %360, i32* %362, align 8
  %363 = load i32, i32* @ZIO_FLAG_FASTWRITE, align 4
  %364 = xor i32 %363, -1
  %365 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = and i32 %367, %364
  store i32 %368, i32* %366, align 8
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %370 = call i32 @zio_nowait(%struct.TYPE_29__* %369)
  %371 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_29__* %371, %struct.TYPE_29__** %2, align 8
  br label %372

372:                                              ; preds = %359, %167
  %373 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  ret %struct.TYPE_29__* %373
}

declare dso_local %struct.TYPE_33__* @spa_normal_class(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @spa_max_replication(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @zfs_refcount_held(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @metaslab_class_throttle_reserve(%struct.TYPE_33__*, i32, i64, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @metaslab_alloc(i32*, %struct.TYPE_33__*, i32, i32*, i32, i32, i32*, i32, i32*, %struct.TYPE_29__*, i64) #1

declare dso_local i32 @metaslab_class_throttle_unreserve(%struct.TYPE_33__*, i32, i64, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_32__* @zio_gang_node_alloc(%struct.TYPE_32__**) #1

declare dso_local i32 @bzero(%struct.TYPE_31__*, i32) #1

declare dso_local i32* @abd_get_from_buf(%struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_29__* @zio_rewrite(%struct.TYPE_29__*, i32*, i32, i32*, i32*, i32, i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @ZIO_GANG_CHILD_FLAGS(%struct.TYPE_29__*) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local %struct.TYPE_29__* @zio_write(%struct.TYPE_29__*, i32*, i32, i32*, i32*, i32, i32, %struct.TYPE_30__*, i64, i32*, i32*, i32, i32*, i64, i32, i32*) #1

declare dso_local i32* @abd_get_offset(i32, i32) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
