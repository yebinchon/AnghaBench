; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_ddt_write.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_ddt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32 }
%struct.TYPE_37__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_38__, %struct.TYPE_41__*, i32* }
%struct.TYPE_38__ = type { i32, i64, i32, i64 }
%struct.TYPE_41__ = type { i64 }
%struct.TYPE_40__ = type { %struct.TYPE_37__**, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64 }

@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@zio_checksum_table = common dso_local global %struct.TYPE_36__* null, align 8
@ZCHECKSUM_FLAG_DEDUP = common dso_local global i32 0, align 4
@ZIO_STAGE_OPEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZIO_WRITE_PIPELINE = common dso_local global i32 0, align 4
@zio_ddt_child_write_ready = common dso_local global i32 0, align 4
@zio_ddt_child_write_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_37__* (%struct.TYPE_37__*)* @zio_ddt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_37__* @zio_ddt_write(%struct.TYPE_37__* %0) #0 {
  %2 = alloca %struct.TYPE_37__*, align 8
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_41__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_40__*, align 8
  %12 = alloca %struct.TYPE_39__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  %13 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %13, i32 0, i32 13
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  %16 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %16, i32 0, i32 12
  %18 = load %struct.TYPE_41__*, %struct.TYPE_41__** %17, align 8
  store %struct.TYPE_41__* %18, %struct.TYPE_41__** %5, align 8
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %22, i32 0, i32 11
  store %struct.TYPE_38__* %23, %struct.TYPE_38__** %7, align 8
  %24 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %9, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %29 = call i32* @ddt_select(i32* %27, %struct.TYPE_41__* %28)
  store i32* %29, i32** %10, align 8
  %30 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %31 = call i32 @BP_GET_DEDUP(%struct.TYPE_41__* %30)
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %34 = call i64 @BP_GET_CHECKSUM(%struct.TYPE_41__* %33)
  %35 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %42 = call i64 @BP_IS_HOLE(%struct.TYPE_41__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %1
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %1
  %50 = phi i1 [ true, %1 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %57, %49
  %65 = phi i1 [ false, %49 ], [ %63, %57 ]
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @ddt_enter(i32* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %73 = load i32, i32* @B_TRUE, align 4
  %74 = call %struct.TYPE_40__* @ddt_lookup(i32* %71, %struct.TYPE_41__* %72, i32 %73)
  store %struct.TYPE_40__* %74, %struct.TYPE_40__** %11, align 8
  %75 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_39__*, %struct.TYPE_39__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %77, i64 %79
  store %struct.TYPE_39__* %80, %struct.TYPE_39__** %12, align 8
  %81 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %134

85:                                               ; preds = %64
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %89 = call i64 @zio_ddt_collision(%struct.TYPE_37__* %86, i32* %87, %struct.TYPE_40__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %134

91:                                               ; preds = %85
  %92 = load %struct.TYPE_36__*, %struct.TYPE_36__** @zio_checksum_table, align 8
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ZCHECKSUM_FLAG_DEDUP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %91
  %103 = load i32*, i32** %4, align 8
  %104 = call i64 @spa_dedup_checksum(i32* %103)
  %105 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %108 = call i32 @zio_pop_transforms(%struct.TYPE_37__* %107)
  %109 = load i32, i32* @ZIO_STAGE_OPEN, align 4
  %110 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %110, i32 0, i32 10
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %113 = call i32 @BP_ZERO(%struct.TYPE_41__* %112)
  br label %121

114:                                              ; preds = %91
  %115 = load i32, i32* @B_FALSE, align 4
  %116 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %119 = load i32, i32* @B_FALSE, align 4
  %120 = call i32 @BP_SET_DEDUP(%struct.TYPE_41__* %118, i32 %119)
  br label %121

121:                                              ; preds = %114, %102
  %122 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %123 = call i32 @BP_GET_DEDUP(%struct.TYPE_41__* %122)
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @ASSERT(i32 %126)
  %128 = load i32, i32* @ZIO_WRITE_PIPELINE, align 4
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %129, i32 0, i32 9
  store i32 %128, i32* %130, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @ddt_exit(i32* %131)
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  store %struct.TYPE_37__* %133, %struct.TYPE_37__** %2, align 8
  br label %257

134:                                              ; preds = %85, %64
  %135 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %142, i64 %144
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %145, align 8
  %147 = icmp ne %struct.TYPE_37__* %146, null
  br i1 %147, label %148, label %181

148:                                              ; preds = %139, %134
  %149 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %155 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %156 = load i64, i64* %6, align 8
  %157 = call i32 @ddt_bp_fill(%struct.TYPE_39__* %154, %struct.TYPE_41__* %155, i64 %156)
  br label %158

158:                                              ; preds = %153, %148
  %159 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %161, i64 %163
  %165 = load %struct.TYPE_37__*, %struct.TYPE_37__** %164, align 8
  %166 = icmp ne %struct.TYPE_37__* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %158
  %168 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %169 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %171, i64 %173
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %174, align 8
  %176 = call i32 @zio_add_child(%struct.TYPE_37__* %168, %struct.TYPE_37__* %175)
  br label %180

177:                                              ; preds = %158
  %178 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %179 = call i32 @ddt_phys_addref(%struct.TYPE_39__* %178)
  br label %180

180:                                              ; preds = %177, %167
  br label %247

181:                                              ; preds = %139
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %182, i32 0, i32 8
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %181
  %187 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @ASSERT(i32 %192)
  %194 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %195 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %195, i32 0, i32 8
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @BP_EQUAL(%struct.TYPE_41__* %194, i64 %197)
  %199 = call i32 @ASSERT(i32 %198)
  %200 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %201 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %202 = call i32 @ddt_phys_fill(%struct.TYPE_39__* %200, %struct.TYPE_41__* %201)
  %203 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %204 = call i32 @ddt_phys_addref(%struct.TYPE_39__* %203)
  br label %246

205:                                              ; preds = %181
  %206 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %207 = load i32*, i32** %4, align 8
  %208 = load i64, i64* %6, align 8
  %209 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %210 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %220 = load i32, i32* @zio_ddt_child_write_ready, align 4
  %221 = load i32, i32* @zio_ddt_child_write_done, align 4
  %222 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %227 = call i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_37__* %226)
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %228, i32 0, i32 4
  %230 = call %struct.TYPE_37__* @zio_write(%struct.TYPE_37__* %206, i32* %207, i64 %208, %struct.TYPE_41__* %209, i32 %212, i32 %215, i32 %218, %struct.TYPE_38__* %219, i32 %220, i32* null, i32* null, i32 %221, %struct.TYPE_40__* %222, i32 %225, i32 %227, i32* %229)
  store %struct.TYPE_37__* %230, %struct.TYPE_37__** %9, align 8
  %231 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @zio_push_transform(%struct.TYPE_37__* %231, i32 %234, i32 %237, i32 0, i32* null)
  %239 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %240 = load %struct.TYPE_40__*, %struct.TYPE_40__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %242, i64 %244
  store %struct.TYPE_37__* %239, %struct.TYPE_37__** %245, align 8
  br label %246

246:                                              ; preds = %205, %186
  br label %247

247:                                              ; preds = %246, %180
  %248 = load i32*, i32** %10, align 8
  %249 = call i32 @ddt_exit(i32* %248)
  %250 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %251 = icmp ne %struct.TYPE_37__* %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %254 = call i32 @zio_nowait(%struct.TYPE_37__* %253)
  br label %255

255:                                              ; preds = %252, %247
  %256 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  store %struct.TYPE_37__* %256, %struct.TYPE_37__** %2, align 8
  br label %257

257:                                              ; preds = %255, %121
  %258 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  ret %struct.TYPE_37__* %258
}

declare dso_local i32* @ddt_select(i32*, %struct.TYPE_41__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_GET_DEDUP(%struct.TYPE_41__*) #1

declare dso_local i64 @BP_GET_CHECKSUM(%struct.TYPE_41__*) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_41__*) #1

declare dso_local i32 @ddt_enter(i32*) #1

declare dso_local %struct.TYPE_40__* @ddt_lookup(i32*, %struct.TYPE_41__*, i32) #1

declare dso_local i64 @zio_ddt_collision(%struct.TYPE_37__*, i32*, %struct.TYPE_40__*) #1

declare dso_local i64 @spa_dedup_checksum(i32*) #1

declare dso_local i32 @zio_pop_transforms(%struct.TYPE_37__*) #1

declare dso_local i32 @BP_ZERO(%struct.TYPE_41__*) #1

declare dso_local i32 @BP_SET_DEDUP(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @ddt_exit(i32*) #1

declare dso_local i32 @ddt_bp_fill(%struct.TYPE_39__*, %struct.TYPE_41__*, i64) #1

declare dso_local i32 @zio_add_child(%struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @ddt_phys_addref(%struct.TYPE_39__*) #1

declare dso_local i32 @BP_EQUAL(%struct.TYPE_41__*, i64) #1

declare dso_local i32 @ddt_phys_fill(%struct.TYPE_39__*, %struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_37__* @zio_write(%struct.TYPE_37__*, i32*, i64, %struct.TYPE_41__*, i32, i32, i32, %struct.TYPE_38__*, i32, i32*, i32*, i32, %struct.TYPE_40__*, i32, i32, i32*) #1

declare dso_local i32 @ZIO_DDT_CHILD_FLAGS(%struct.TYPE_37__*) #1

declare dso_local i32 @zio_push_transform(%struct.TYPE_37__*, i32, i32, i32, i32*) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
