; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeWorkerStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32, i32, i32*, %struct.TYPE_19__, %struct.TYPE_15__*, %struct.TYPE_18__*, i64* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_15__ = type { i32, i64, i64, i64, i32, i64 }
%struct.TYPE_18__ = type { i32, i64, i32, i64 }
%struct.TYPE_14__ = type { i32 (i64, i32, i8*, i32)*, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@CURSOR_DATA_SEGMENT = common dso_local global i32 0, align 4
@PGFTR_SKIP_THIS_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @mergeWorkerStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mergeWorkerStep(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %3, align 8
  %21 = load i32, i32* @LSM_OK, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %4, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i32 @lsmMCursorKey(%struct.TYPE_16__* %25, i8** %7, i32* %8)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 6
  %32 = load i64*, i64** %31, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 6
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %37, align 8
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i64 [ %38, %34 ], [ 0, %39 ]
  store i64 %41, i64* %9, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = icmp ne %struct.TYPE_18__* %44, null
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %11, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %89

54:                                               ; preds = %46
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @rtTopic(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @rtTopic(i32 %59)
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %54
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32 (i64, i32, i8*, i32)*, i32 (i64, i32, i8*, i32)** %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 %67(i64 %70, i32 %73, i8* %74, i32 %75)
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %64, %54
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 0, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %12, align 4
  %86 = icmp sge i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  br label %89

89:                                               ; preds = %84, %46
  br label %133

90:                                               ; preds = %40
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %90
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i64 %103
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %13, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %95
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32 (i64, i32, i8*, i32)*, i32 (i64, i32, i8*, i32)** %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 %112(i64 %115, i32 %118, i8* %119, i32 %120)
  %122 = icmp eq i32 0, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %109
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  store i64 %130, i64* %9, align 8
  br label %131

131:                                              ; preds = %123, %109, %95
  br label %132

132:                                              ; preds = %131, %90
  br label %133

133:                                              ; preds = %132, %89
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %10, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %140 = call i32 @mergeRangeDeletes(%struct.TYPE_16__* %139, i32* %10, i32* %6)
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %244

143:                                              ; preds = %133
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %190

148:                                              ; preds = %143
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CURSOR_DATA_SEGMENT, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %189

161:                                              ; preds = %148
  %162 = load i32, i32* %14, align 4
  %163 = icmp sge i32 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %161
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i64 %169
  store %struct.TYPE_15__* %170, %struct.TYPE_15__** %15, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @PGFTR_SKIP_THIS_FLAG, align 4
  %175 = and i32 %173, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %164
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @lsmFsPageNumber(i64 %180)
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %181, i32* %187, align 4
  br label %188

188:                                              ; preds = %177, %164
  br label %189

189:                                              ; preds = %188, %161, %148
  br label %190

190:                                              ; preds = %189, %143
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @LSM_OK, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %243

194:                                              ; preds = %190
  %195 = load i32, i32* %6, align 4
  %196 = call i64 @rtIsSeparator(i32 %195)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load i64, i64* %9, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %243

201:                                              ; preds = %198, %194
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @multiCursorGetVal(%struct.TYPE_16__* %202, i32 %203, i8** %16, i32* %17)
  store i32 %204, i32* %5, align 4
  %205 = load i8*, i8** %16, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %228

207:                                              ; preds = %201
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @LSM_OK, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %228

211:                                              ; preds = %207
  %212 = load i32, i32* %17, align 4
  %213 = icmp sge i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 3
  %221 = load i8*, i8** %16, align 8
  %222 = load i32, i32* %17, align 4
  %223 = call i32 @sortedBlobSet(i32 %218, %struct.TYPE_19__* %220, i8* %221, i32 %222)
  store i32 %223, i32* %5, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  store i8* %227, i8** %16, align 8
  br label %228

228:                                              ; preds = %211, %207, %201
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @LSM_OK, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %228
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %234 = load i32, i32* %6, align 4
  %235 = load i8*, i8** %7, align 8
  %236 = load i32, i32* %8, align 4
  %237 = load i8*, i8** %16, align 8
  %238 = load i32, i32* %17, align 4
  %239 = load i64, i64* %9, align 8
  %240 = trunc i64 %239 to i32
  %241 = call i32 @mergeWorkerWrite(%struct.TYPE_17__* %233, i32 %234, i8* %235, i32 %236, i8* %237, i32 %238, i32 %240)
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %232, %228
  br label %243

243:                                              ; preds = %242, %198, %190
  br label %244

244:                                              ; preds = %243, %133
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %246, align 8
  %248 = call i32 @lsmMCursorValid(%struct.TYPE_16__* %247)
  %249 = call i32 @assert(i32 %248)
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* @LSM_OK, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %244
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %255, align 8
  %257 = call i32 @lsmMCursorNext(%struct.TYPE_16__* %256)
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %253, %244
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local i32 @lsmMCursorKey(%struct.TYPE_16__*, i8**, i32*) #1

declare dso_local i32 @rtTopic(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mergeRangeDeletes(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @lsmFsPageNumber(i64) #1

declare dso_local i64 @rtIsSeparator(i32) #1

declare dso_local i32 @multiCursorGetVal(%struct.TYPE_16__*, i32, i8**, i32*) #1

declare dso_local i32 @sortedBlobSet(i32, %struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @mergeWorkerWrite(%struct.TYPE_17__*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @lsmMCursorValid(%struct.TYPE_16__*) #1

declare dso_local i32 @lsmMCursorNext(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
