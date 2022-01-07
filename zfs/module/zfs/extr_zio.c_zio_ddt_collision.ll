; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_ddt_collision.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_ddt_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64, i32*, i32, i32*, i32*, i64, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@DDT_PHYS_SINGLE = common dso_local global i32 0, align 4
@DDT_PHYS_TRIPLE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_READ = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ARC_FLAG_WAIT = common dso_local global i32 0, align 4
@arc_getbuf_func = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, %struct.TYPE_13__*)* @zio_ddt_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zio_ddt_collision(%struct.TYPE_11__* %0, i32* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 8
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %3
  %42 = phi i1 [ false, %3 ], [ %40, %38 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load i32, i32* @DDT_PHYS_SINGLE, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %109, %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @DDT_PHYS_TRIPLE, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %47
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %54, i64 %56
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %11, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %84

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %64
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @abd_cmp(i32* %75, i32* %78)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %72, %64
  %82 = phi i1 [ true, %64 ], [ %80, %72 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %258

84:                                               ; preds = %61, %51
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %87
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @abd_cmp(i32* %98, i32* %101)
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %95, %87
  %105 = phi i1 [ true, %87 ], [ %103, %95 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %258

107:                                              ; preds = %84
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %47

112:                                              ; preds = %47
  %113 = load i32, i32* @DDT_PHYS_SINGLE, align 4
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %253, %112
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @DDT_PHYS_TRIPLE, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %256

118:                                              ; preds = %114
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  store %struct.TYPE_12__* %124, %struct.TYPE_12__** %13, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %190

129:                                              ; preds = %118
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %190

132:                                              ; preds = %129
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 5
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %14, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @ddt_bp_fill(%struct.TYPE_12__* %137, i32* %14, i64 %140)
  %142 = call i64 @BP_GET_PSIZE(i32* %14)
  store i64 %142, i64* %15, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %132
  %149 = load i32, i32* @B_TRUE, align 4
  store i32 %149, i32* %4, align 4
  br label %258

150:                                              ; preds = %132
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @ddt_exit(i32* %151)
  %153 = load i64, i64* %15, align 8
  %154 = load i32, i32* @B_TRUE, align 4
  %155 = call i32* @abd_alloc_for_io(i64 %153, i32 %154)
  store i32* %155, i32** %16, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32*, i32** %16, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %160 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %161 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 4
  %167 = call i32 @zio_read(i32* null, i32* %156, i32* %14, i32* %157, i64 %158, i32* null, i32* null, i32 %159, i32 %164, i32* %166)
  %168 = call i32 @zio_wait(i32 %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %150
  %172 = load i32*, i32** %16, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 6
  %175 = load i32*, i32** %174, align 8
  %176 = call i64 @abd_cmp(i32* %172, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load i32, i32* @ENOENT, align 4
  %180 = call i32 @SET_ERROR(i32 %179)
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %178, %171
  br label %182

182:                                              ; preds = %181, %150
  %183 = load i32*, i32** %16, align 8
  %184 = call i32 @abd_free(i32* %183)
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @ddt_enter(i32* %185)
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %4, align 4
  br label %258

190:                                              ; preds = %129, %118
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %251

195:                                              ; preds = %190
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %18, align 8
  %196 = load i32, i32* @ARC_FLAG_WAIT, align 4
  store i32 %196, i32* %19, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %20, align 4
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @ddt_bp_fill(%struct.TYPE_12__* %201, i32* %20, i64 %204)
  %206 = call i64 @BP_GET_LSIZE(i32* %20)
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %206, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %195
  %212 = load i32, i32* @B_TRUE, align 4
  store i32 %212, i32* %4, align 4
  br label %258

213:                                              ; preds = %195
  %214 = load i32*, i32** %6, align 8
  %215 = call i32 @ddt_exit(i32* %214)
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* @arc_getbuf_func, align 4
  %218 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %219 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %220 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %221 = or i32 %219, %220
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 4
  %224 = call i32 @arc_read(i32* null, i32* %216, i32* %20, i32 %217, %struct.TYPE_14__** %18, i32 %218, i32 %221, i32* %19, i32* %223)
  store i32 %224, i32* %21, align 4
  %225 = load i32, i32* %21, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %245

227:                                              ; preds = %213
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = call i64 @abd_cmp_buf(i32* %230, i32 %233, i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %227
  %240 = load i32, i32* @ENOENT, align 4
  %241 = call i32 @SET_ERROR(i32 %240)
  store i32 %241, i32* %21, align 4
  br label %242

242:                                              ; preds = %239, %227
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %244 = call i32 @arc_buf_destroy(%struct.TYPE_14__* %243, %struct.TYPE_14__** %18)
  br label %245

245:                                              ; preds = %242, %213
  %246 = load i32*, i32** %6, align 8
  %247 = call i32 @ddt_enter(i32* %246)
  %248 = load i32, i32* %21, align 4
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i32
  store i32 %250, i32* %4, align 4
  br label %258

251:                                              ; preds = %190
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %12, align 4
  br label %114

256:                                              ; preds = %114
  %257 = load i32, i32* @B_FALSE, align 4
  store i32 %257, i32* %4, align 4
  br label %258

258:                                              ; preds = %256, %245, %211, %182, %148, %104, %81
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @abd_cmp(i32*, i32*) #1

declare dso_local i32 @ddt_bp_fill(%struct.TYPE_12__*, i32*, i64) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i32 @ddt_exit(i32*) #1

declare dso_local i32* @abd_alloc_for_io(i64, i32) #1

declare dso_local i32 @zio_wait(i32) #1

declare dso_local i32 @zio_read(i32*, i32*, i32*, i32*, i64, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @abd_free(i32*) #1

declare dso_local i32 @ddt_enter(i32*) #1

declare dso_local i64 @BP_GET_LSIZE(i32*) #1

declare dso_local i32 @arc_read(i32*, i32*, i32*, i32, %struct.TYPE_14__**, i32, i32, i32*, i32*) #1

declare dso_local i64 @abd_cmp_buf(i32*, i32, i64) #1

declare dso_local i32 @arc_buf_destroy(%struct.TYPE_14__*, %struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
