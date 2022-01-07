; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentPtrAdvance.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_segmentPtrAdvance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i64, %struct.TYPE_16__ }

@LSM_OK = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@LSM_SEGMENTPTR_FREE_THRESHOLD = common dso_local global i32 0, align 4
@LSM_END_DELETE = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@LSM_POINT_DELETE = common dso_local global i32 0, align 4
@LSM_SYSTEMKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_15__*, i32)* @segmentPtrAdvance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segmentPtrAdvance(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 -1, i32 1
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %9, align 8
  br label %22

22:                                               ; preds = %248, %3
  store i32 0, i32* %12, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i32, i32* %11, align 4
  %39 = icmp sge i32 %38, -1
  br label %40

40:                                               ; preds = %37, %22
  %41 = phi i1 [ false, %22 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 3
  %54 = icmp ne %struct.TYPE_16__* %49, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @assert(i32 %59)
  br label %61

61:                                               ; preds = %55, %46, %40
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %98, %70
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @segmentPtrNextPage(%struct.TYPE_15__* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @LSM_OK, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %89, %84
  %97 = phi i1 [ true, %84 ], [ %95, %89 ]
  br label %98

98:                                               ; preds = %96, %79, %75
  %99 = phi i1 [ false, %79 ], [ false, %75 ], [ %97, %96 ]
  br i1 %99, label %71, label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @LSM_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %4, align 4
  br label %252

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  br label %115

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %109
  %116 = phi i32 [ %113, %109 ], [ 0, %114 ]
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %115, %67
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @segmentPtrLoadCell(%struct.TYPE_15__* %118, i32 %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @LSM_OK, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %4, align 4
  br label %252

126:                                              ; preds = %117
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %167

129:                                              ; preds = %126
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %167

134:                                              ; preds = %129
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @rtTopic(i32 %142)
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @sortedKeyCompare(i32 %139, i32 %143, i32 %146, i32 %149, i64 %152, i32 %155, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %134
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %164 = load i32, i32* @LSM_SEGMENTPTR_FREE_THRESHOLD, align 4
  %165 = call i32 @segmentPtrReset(%struct.TYPE_15__* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %134
  br label %167

167:                                              ; preds = %166, %129, %126
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %228

172:                                              ; preds = %167
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @LSM_END_DELETE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %228

177:                                              ; preds = %172
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  store %struct.TYPE_16__* %180, %struct.TYPE_16__** %14, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = bitcast i32* %191 to i64*
  %193 = call i32 @lsmFsDbPageGet(i32 %185, %struct.TYPE_16__* %186, i32 %189, i64* %192)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* @LSM_OK, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %177
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %4, align 4
  br label %252

199:                                              ; preds = %177
  %200 = load i32, i32* @LSM_START_DELETE, align 4
  %201 = load i32, i32* @LSM_POINT_DELETE, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %199
  %210 = load i32, i32* @LSM_SYSTEMKEY, align 4
  br label %212

211:                                              ; preds = %199
  br label %212

212:                                              ; preds = %211, %209
  %213 = phi i32 [ %210, %209 ], [ 0, %211 ]
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 6
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %212, %172, %167
  br label %229

229:                                              ; preds = %228
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %231 = icmp ne %struct.TYPE_17__* %230, null
  br i1 %231, label %232, label %248

232:                                              ; preds = %229
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %232
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %240 = call i64 @segmentPtrIgnoreSeparators(%struct.TYPE_17__* %238, %struct.TYPE_15__* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @rtIsSeparator(i32 %245)
  %247 = icmp ne i64 %246, 0
  br label %248

248:                                              ; preds = %242, %237, %232, %229
  %249 = phi i1 [ false, %237 ], [ false, %232 ], [ false, %229 ], [ %247, %242 ]
  br i1 %249, label %22, label %250

250:                                              ; preds = %248
  %251 = load i32, i32* @LSM_OK, align 4
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %250, %197, %124, %104
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @segmentPtrNextPage(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @segmentPtrLoadCell(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sortedKeyCompare(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @rtTopic(i32) #1

declare dso_local i32 @segmentPtrReset(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @lsmFsDbPageGet(i32, %struct.TYPE_16__*, i32, i64*) #1

declare dso_local i64 @segmentPtrIgnoreSeparators(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local i64 @rtIsSeparator(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
