; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_blkptr_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_blkptr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, i64 }
%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_24__**, i64 }
%struct.TYPE_24__ = type { i32 }

@ZB_DNODE_LEVEL = common dso_local global i64 0, align 8
@dump_opt = common dso_local global i32* null, align 8
@BP_SPRINTF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"objset %llu object %llu level %lld offset 0x%llx %s\0A\00", align 1
@DMU_OT_NEWTYPE = common dso_local global i32 0, align 4
@ZDB_OT_OTHER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SCRUB = common dso_local global i32 0, align 4
@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@ZB_ZIL_LEVEL = common dso_local global i64 0, align 8
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@max_inflight_bytes = common dso_local global i64 0, align 8
@zdb_blkptr_done = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@zdb_blkptr_cb.iters = internal global i32 0, align 4
@NANOSEC = common dso_local global i64 0, align 8
@ZB_TOTAL = common dso_local global i64 0, align 8
@ZDB_OT_TOTAL = common dso_local global i64 0, align 8
@NN_NUMBUF_SZ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"\0D%5s completed (%4dMB/s) estimated time remaining: %uhr %02umin %02usec        \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, i32*, %struct.TYPE_28__*, %struct.TYPE_26__*, i32*, i8*)* @zdb_blkptr_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zdb_blkptr_cb(%struct.TYPE_27__* %0, i32* %1, %struct.TYPE_28__* %2, %struct.TYPE_26__* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [10 x i8], align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %14, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ZB_DNODE_LEVEL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %259

35:                                               ; preds = %6
  %36 = load i32*, i32** @dump_opt, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 98
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 5
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = load i32, i32* @BP_SPRINTF_LEN, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %17, align 8
  %49 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %18, align 8
  %50 = trunc i64 %47 to i32
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %52 = call i32 @snprintf_blkptr(i8* %49, i32 %50, %struct.TYPE_28__* %51)
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %68 = call i64 @blkid2offset(i32* %65, %struct.TYPE_28__* %66, %struct.TYPE_26__* %67)
  %69 = trunc i64 %68 to i32
  %70 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %60, i32 %64, i32 %69, i8* %49)
  %71 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %71)
  br label %72

72:                                               ; preds = %45, %40, %35
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %74 = call i64 @BP_IS_HOLE(%struct.TYPE_28__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %78 = call i64 @BP_IS_REDACTED(%struct.TYPE_28__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72
  store i32 0, i32* %7, align 4
  br label %259

81:                                               ; preds = %76
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %83 = call i32 @BP_GET_TYPE(%struct.TYPE_28__* %82)
  store i32 %83, i32* %15, align 4
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @DMU_OT_NEWTYPE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @ZDB_OT_OTHER, align 4
  br label %95

93:                                               ; preds = %81
  %94 = load i32, i32* %15, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = call i32 @zdb_count_block(%struct.TYPE_25__* %84, i32* %85, %struct.TYPE_28__* %86, i32 %96)
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %99 = call i64 @BP_GET_LEVEL(%struct.TYPE_28__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  %103 = call i64 @DMU_OT_IS_METADATA(i32 %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %101, %95
  %106 = phi i1 [ true, %95 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %16, align 4
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %109 = call i32 @BP_IS_EMBEDDED(%struct.TYPE_28__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %180, label %111

111:                                              ; preds = %105
  %112 = load i32*, i32** @dump_opt, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 99
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %124, label %116

116:                                              ; preds = %111
  %117 = load i32*, i32** @dump_opt, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 99
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %180

121:                                              ; preds = %116
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %180

124:                                              ; preds = %121, %111
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %126 = call i64 @BP_GET_PSIZE(%struct.TYPE_28__* %125)
  store i64 %126, i64* %19, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i32, i32* @B_FALSE, align 4
  %129 = call i32* @abd_alloc(i64 %127, i32 %128)
  store i32* %129, i32** %20, align 8
  %130 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %131 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %21, align 4
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ZB_ZIL_LEVEL, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %124
  %141 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %142 = load i32, i32* %21, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %21, align 4
  br label %144

144:                                              ; preds = %140, %124
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 1
  %147 = call i32 @mutex_enter(i32* %146)
  br label %148

148:                                              ; preds = %154, %144
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @max_inflight_bytes, align 8
  %153 = icmp sgt i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 1
  %159 = call i32 @cv_wait(i32* %156, i32* %158)
  br label %148

160:                                              ; preds = %148
  %161 = load i64, i64* %19, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = call i32 @mutex_exit(i32* %167)
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %171 = load i32*, i32** %20, align 8
  %172 = load i64, i64* %19, align 8
  %173 = load i32, i32* @zdb_blkptr_done, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %175 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %176 = load i32, i32* %21, align 4
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %178 = call i32 @zio_read(i32* null, %struct.TYPE_27__* %169, %struct.TYPE_28__* %170, i32* %171, i64 %172, i32 %173, %struct.TYPE_25__* %174, i32 %175, i32 %176, %struct.TYPE_26__* %177)
  %179 = call i32 @zio_nowait(i32 %178)
  br label %180

180:                                              ; preds = %160, %121, %116, %105
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 4
  store i64 0, i64* %182, align 8
  %183 = load i32, i32* @zdb_blkptr_cb.iters, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @zdb_blkptr_cb.iters, align 4
  %185 = icmp sgt i32 %184, 100
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  store i32 0, i32* @zdb_blkptr_cb.iters, align 4
  br label %188

187:                                              ; preds = %180
  store i32 0, i32* %7, align 4
  br label %259

188:                                              ; preds = %186
  %189 = load i32*, i32** @dump_opt, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 98
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %191, 5
  br i1 %192, label %193, label %258

193:                                              ; preds = %188
  %194 = call i64 (...) @gethrtime()
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @NANOSEC, align 8
  %199 = add nsw i64 %197, %198
  %200 = icmp sgt i64 %194, %199
  br i1 %200, label %201, label %258

201:                                              ; preds = %193
  %202 = call i64 (...) @gethrtime()
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %22, align 4
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %205, align 8
  %207 = load i64, i64* @ZB_TOTAL, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %206, i64 %207
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %208, align 8
  %210 = load i64, i64* @ZDB_OT_TOTAL, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %24, align 4
  %214 = load i32, i32* %24, align 4
  %215 = load i32, i32* %22, align 4
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %215, %218
  %220 = sdiv i32 %219, 1000
  %221 = sdiv i32 %220, 1000
  %222 = add nsw i32 1, %221
  %223 = sdiv i32 %214, %222
  %224 = add nsw i32 1, %223
  store i32 %224, i32* %25, align 4
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %24, align 4
  %229 = sub nsw i32 %227, %228
  %230 = sdiv i32 %229, 1024
  %231 = load i32, i32* %25, align 4
  %232 = sdiv i32 %230, %231
  store i32 %232, i32* %26, align 4
  %233 = load i32, i32* @NN_NUMBUF_SZ, align 4
  %234 = sext i32 %233 to i64
  %235 = icmp uge i64 10, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @CTASSERT(i32 %236)
  %238 = load i32, i32* %24, align 4
  %239 = getelementptr inbounds [10 x i8], [10 x i8]* %23, i64 0, i64 0
  %240 = call i32 @zfs_nicebytes(i32 %238, i8* %239, i32 10)
  %241 = load i32, i32* @stderr, align 4
  %242 = getelementptr inbounds [10 x i8], [10 x i8]* %23, i64 0, i64 0
  %243 = load i32, i32* %25, align 4
  %244 = sdiv i32 %243, 1024
  %245 = load i32, i32* %26, align 4
  %246 = sdiv i32 %245, 60
  %247 = sdiv i32 %246, 60
  %248 = load i32, i32* %26, align 4
  %249 = sdiv i32 %248, 60
  %250 = srem i32 %249, 60
  %251 = load i32, i32* %26, align 4
  %252 = srem i32 %251, 60
  %253 = call i32 @fprintf(i32 %241, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i8* %242, i32 %244, i32 %247, i32 %250, i32 %252)
  %254 = load i32, i32* %22, align 4
  %255 = sext i32 %254 to i64
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 0
  store i64 %255, i64* %257, align 8
  br label %258

258:                                              ; preds = %201, %193, %188
  store i32 0, i32* %7, align 4
  br label %259

259:                                              ; preds = %258, %187, %80, %34
  %260 = load i32, i32* %7, align 4
  ret i32 %260
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf_blkptr(i8*, i32, %struct.TYPE_28__*) #2

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i8*) #2

declare dso_local i64 @blkid2offset(i32*, %struct.TYPE_28__*, %struct.TYPE_26__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @BP_IS_HOLE(%struct.TYPE_28__*) #2

declare dso_local i64 @BP_IS_REDACTED(%struct.TYPE_28__*) #2

declare dso_local i32 @BP_GET_TYPE(%struct.TYPE_28__*) #2

declare dso_local i32 @zdb_count_block(%struct.TYPE_25__*, i32*, %struct.TYPE_28__*, i32) #2

declare dso_local i64 @BP_GET_LEVEL(%struct.TYPE_28__*) #2

declare dso_local i64 @DMU_OT_IS_METADATA(i32) #2

declare dso_local i32 @BP_IS_EMBEDDED(%struct.TYPE_28__*) #2

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_28__*) #2

declare dso_local i32* @abd_alloc(i64, i32) #2

declare dso_local i32 @mutex_enter(i32*) #2

declare dso_local i32 @cv_wait(i32*, i32*) #2

declare dso_local i32 @mutex_exit(i32*) #2

declare dso_local i32 @zio_nowait(i32) #2

declare dso_local i32 @zio_read(i32*, %struct.TYPE_27__*, %struct.TYPE_28__*, i32*, i64, i32, %struct.TYPE_25__*, i32, i32, %struct.TYPE_26__*) #2

declare dso_local i64 @gethrtime(...) #2

declare dso_local i32 @CTASSERT(i32) #2

declare dso_local i32 @zfs_nicebytes(i32, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
