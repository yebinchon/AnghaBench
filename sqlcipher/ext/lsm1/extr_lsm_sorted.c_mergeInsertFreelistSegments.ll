; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeInsertFreelistSegments.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeInsertFreelistSegments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_21__*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_18__* }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, %struct.TYPE_20__*)* @mergeInsertFreelistSegments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mergeInsertFreelistSegments(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %17 = load i32, i32* @LSM_OK, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %251

20:                                               ; preds = %3
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %9, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %10, align 8
  store i32 0, i32* %15, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = mul i64 16, %35
  %37 = trunc i64 %36 to i32
  %38 = call i64 @lsmMallocZeroRc(i32 %29, i32 %37, i32* %8)
  %39 = inttoptr i64 %38 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %20
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %253

44:                                               ; preds = %20
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i64 %47
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = mul i64 16, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memcpy(%struct.TYPE_18__* %48, %struct.TYPE_18__* %51, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = call i32 @lsmFree(i32 %66, %struct.TYPE_18__* %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = call i32 @lsmFree(i32 %73, %struct.TYPE_18__* %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %82, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = mul i64 16, %91
  %93 = trunc i64 %92 to i32
  %94 = call i64 @lsmMallocZeroRc(i32 %85, i32 %93, i32* %8)
  %95 = inttoptr i64 %94 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %12, align 8
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %44
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %253

100:                                              ; preds = %44
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i64 %103
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = mul i64 16, %111
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memcpy(%struct.TYPE_18__* %104, %struct.TYPE_18__* %107, i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = call i32 @lsmFree(i32 %122, %struct.TYPE_18__* %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %129, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  store %struct.TYPE_21__* %134, %struct.TYPE_21__** %13, align 8
  br label %135

135:                                              ; preds = %194, %100
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @LSM_OK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %142 = icmp ne %struct.TYPE_21__* %140, %141
  br label %143

143:                                              ; preds = %139, %135
  %144 = phi i1 [ false, %135 ], [ %142, %139 ]
  br i1 %144, label %145, label %196

145:                                              ; preds = %143
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i64 %150
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %16, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 3
  %155 = call i32 @memcpy(%struct.TYPE_18__* %152, %struct.TYPE_18__* %154, i32 16)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  store %struct.TYPE_18__* %156, %struct.TYPE_18__** %163, align 8
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  store %struct.TYPE_21__* %164, %struct.TYPE_21__** %171, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i64 %177
  %179 = call i32 @segmentPtrEnd(%struct.TYPE_19__* %172, %struct.TYPE_18__* %178, i32 0)
  store i32 %179, i32* %8, align 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  store %struct.TYPE_21__* %182, %struct.TYPE_21__** %14, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  store %struct.TYPE_21__* %182, %struct.TYPE_21__** %186, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %191 = call i32 @sortedFreeLevel(i32 %189, %struct.TYPE_21__* %190)
  %192 = load i32, i32* %15, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %15, align 4
  br label %194

194:                                              ; preds = %145
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %195, %struct.TYPE_21__** %13, align 8
  br label %135

196:                                              ; preds = %143
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @LSM_OK, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %213, label %205

205:                                              ; preds = %196
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %209, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %212 = icmp eq %struct.TYPE_21__* %210, %211
  br label %213

213:                                              ; preds = %205, %196
  %214 = phi i1 [ true, %196 ], [ %212, %205 ]
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load i32, i32* %6, align 4
  store i32 %217, i32* %15, align 4
  br label %218

218:                                              ; preds = %238, %213
  %219 = load i32, i32* %15, align 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %218
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i64 %229
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %232, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  store %struct.TYPE_18__* %230, %struct.TYPE_18__** %237, align 8
  br label %238

238:                                              ; preds = %224
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %15, align 4
  br label %218

241:                                              ; preds = %218
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = call i32 @lsmFree(i32 %244, %struct.TYPE_18__* %247)
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 0
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %250, align 8
  br label %251

251:                                              ; preds = %241, %3
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %4, align 4
  br label %253

253:                                              ; preds = %251, %98, %42
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i64 @lsmMallocZeroRc(i32, i32, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @lsmFree(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @segmentPtrEnd(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @sortedFreeLevel(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
