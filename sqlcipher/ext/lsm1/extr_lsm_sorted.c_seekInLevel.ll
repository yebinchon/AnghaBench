; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_seekInLevel.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_seekInLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i8*, i32, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8*, i32, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_SEEK_GE = common dso_local global i32 0, align 4
@LSM_SEGMENTPTR_FREE_THRESHOLD = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@LSM_INSERT = common dso_local global i32 0, align 4
@LSM_SEEK_LE = common dso_local global i32 0, align 4
@LSM_SEEK_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32, i8*, i32, i32*, i32*)* @seekInLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seekInLevel(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %17, align 8
  %33 = load i32, i32* @LSM_OK, align 4
  store i32 %33, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %37 = load i32, i32* %21, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sortedKeyCompare(i32 %44, i32 %45, i8* %46, i32 %47, i32 %50, i8* %53, i32 %56)
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %39, %8
  %59 = load i32, i32* %20, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %110

61:                                               ; preds = %58
  store i32 0, i32* %24, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %24, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i64 0
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %24, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @seekInSegment(%struct.TYPE_14__* %68, %struct.TYPE_13__* %70, i32 %71, i8* %72, i32 %73, i32 %74, i32 %75, i32* %19, i32* %22)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* @LSM_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %67
  %81 = load i32, i32* %21, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @LSM_SEEK_GE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %20, align 4
  br label %94

94:                                               ; preds = %93, %87, %83, %80, %67
  store i32 1, i32* %23, align 4
  br label %95

95:                                               ; preds = %106, %94
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %21, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = load i32, i32* %23, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i64 %102
  %104 = load i32, i32* @LSM_SEGMENTPTR_FREE_THRESHOLD, align 4
  %105 = call i32 @segmentPtrReset(%struct.TYPE_13__* %103, i32 %104)
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %23, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %23, align 4
  br label %95

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %58
  %111 = load i32, i32* %20, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %243

113:                                              ; preds = %110
  store i32 0, i32* %25, align 4
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %26, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 0
  %118 = load i32, i32* @LSM_SEGMENTPTR_FREE_THRESHOLD, align 4
  %119 = call i32 @segmentPtrReset(%struct.TYPE_13__* %117, i32 %118)
  store i32 1, i32* %27, align 4
  br label %120

120:                                              ; preds = %223, %113
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* @LSM_OK, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %21, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %22, align 4
  %130 = icmp eq i32 %129, 0
  br label %131

131:                                              ; preds = %128, %124, %120
  %132 = phi i1 [ false, %124 ], [ false, %120 ], [ %130, %128 ]
  br i1 %132, label %133, label %226

133:                                              ; preds = %131
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = load i32, i32* %27, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i64 %136
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %28, align 8
  store i32 0, i32* %19, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %26, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @seekInSegment(%struct.TYPE_14__* %138, %struct.TYPE_13__* %139, i32 %140, i8* %141, i32 %142, i32 %143, i32 %144, i32* %19, i32* %22)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %19, align 4
  store i32 %146, i32* %26, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %213

151:                                              ; preds = %133
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @rtTopic(i32 %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @sortedKeyCompare(i32 %156, i32 %160, i8* %163, i32 %166, i32 %169, i8* %172, i32 %175)
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %20, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %212

179:                                              ; preds = %151
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @LSM_START_DELETE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %179
  %187 = load i32, i32* @LSM_INSERT, align 4
  %188 = xor i32 %187, -1
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = and i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 5
  store i64 0, i64* %204, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 4
  store i64 0, i64* %206, align 8
  br label %211

207:                                              ; preds = %179
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %209 = load i32, i32* @LSM_SEGMENTPTR_FREE_THRESHOLD, align 4
  %210 = call i32 @segmentPtrReset(%struct.TYPE_13__* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %186
  br label %212

212:                                              ; preds = %211, %151
  br label %213

213:                                              ; preds = %212, %133
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %215 = load i32, i32* %27, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  store i32 1, i32* %25, align 4
  br label %222

222:                                              ; preds = %221, %213
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %27, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %27, align 4
  br label %120

226:                                              ; preds = %131
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* @LSM_OK, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %226
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @LSM_SEEK_LE, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = load i32, i32* %25, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i64 0
  %241 = call i32 @segmentPtrEnd(%struct.TYPE_14__* %238, %struct.TYPE_13__* %240, i32 1)
  store i32 %241, i32* %18, align 4
  br label %242

242:                                              ; preds = %237, %234, %230, %226
  br label %243

243:                                              ; preds = %242, %110
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @LSM_SEEK_EQ, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* %22, align 4
  %249 = icmp eq i32 %248, 0
  br label %250

250:                                              ; preds = %247, %243
  %251 = phi i1 [ true, %243 ], [ %249, %247 ]
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load i32, i32* %19, align 4
  %255 = load i32*, i32** %15, align 8
  store i32 %254, i32* %255, align 4
  %256 = load i32, i32* %22, align 4
  %257 = load i32*, i32** %16, align 8
  store i32 %256, i32* %257, align 4
  %258 = load i32, i32* %18, align 4
  ret i32 %258
}

declare dso_local i32 @sortedKeyCompare(i32, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @seekInSegment(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @segmentPtrReset(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @rtTopic(i32) #1

declare dso_local i32 @segmentPtrEnd(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
