; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmMCursorSeek.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_lsmMCursorSeek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64*, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i64, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_SEEK_LEFAST = common dso_local global i32 0, align 4
@LSM_SEEK_LE = common dso_local global i32 0, align 4
@CURSOR_FLUSH_FREELIST = common dso_local global i32 0, align 4
@CURSOR_NEXT_OK = common dso_local global i32 0, align 4
@CURSOR_PREV_OK = common dso_local global i32 0, align 4
@CURSOR_SEEK_EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmMCursorSeek(%struct.TYPE_17__* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @LSM_OK, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi i1 [ true, %5 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br label %42

42:                                               ; preds = %39, %29
  %43 = phi i1 [ true, %29 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @LSM_SEEK_LEFAST, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @LSM_SEEK_LE, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @LSM_SEEK_LE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 128
  br label %61

61:                                               ; preds = %58, %54, %51
  %62 = phi i1 [ true, %54 ], [ true, %51 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CURSOR_FLUSH_FREELIST, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %61
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = icmp ne %struct.TYPE_15__* %83, null
  br label %85

85:                                               ; preds = %77, %61
  %86 = phi i1 [ true, %61 ], [ %84, %77 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* @CURSOR_NEXT_OK, align 4
  %90 = load i32, i32* @CURSOR_PREV_OK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @CURSOR_SEEK_EQ, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @treeCursorSeek(%struct.TYPE_17__* %99, i64 %104, i8* %105, i32 %106, i32 %107, i32* %12)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @LSM_OK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %85
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 1
  %121 = load i64, i64* %120, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @treeCursorSeek(%struct.TYPE_17__* %116, i64 %121, i8* %122, i32 %123, i32 %124, i32* %12)
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %115, %112, %85
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %175, %126
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @LSM_OK, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %12, align 4
  %139 = icmp eq i32 %138, 0
  br label %140

140:                                              ; preds = %137, %133, %127
  %141 = phi i1 [ false, %133 ], [ false, %127 ], [ %139, %137 ]
  br i1 %141, label %142, label %178

142:                                              ; preds = %140
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 %147
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %16, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = icmp eq i32* %151, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @seekInLevel(%struct.TYPE_17__* %159, %struct.TYPE_16__* %160, i32 %161, i32 %162, i8* %163, i32 %164, i32* %15, i32* %12)
  store i32 %165, i32* %13, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %142
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %127

178:                                              ; preds = %140
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 129
  br i1 %180, label %181, label %258

181:                                              ; preds = %178
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* @LSM_OK, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %187 = call i32 @multiCursorAllocTree(%struct.TYPE_17__* %186)
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %185, %181
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @LSM_OK, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %231

192:                                              ; preds = %188
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = sub nsw i32 %195, 1
  store i32 %196, i32* %17, align 4
  br label %197

197:                                              ; preds = %208, %192
  %198 = load i32, i32* %17, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @LSM_SEEK_LE, align 4
  %205 = icmp eq i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @multiCursorDoCompare(%struct.TYPE_17__* %201, i32 %202, i32 %206)
  br label %208

208:                                              ; preds = %200
  %209 = load i32, i32* %17, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %17, align 4
  br label %197

211:                                              ; preds = %197
  %212 = load i32, i32* %10, align 4
  %213 = icmp eq i32 %212, 128
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32, i32* @CURSOR_NEXT_OK, align 4
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %211
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @LSM_SEEK_LE, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load i32, i32* @CURSOR_PREV_OK, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %224, %220
  br label %231

231:                                              ; preds = %230, %188
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %233 = call i32 @multiCursorCacheKey(%struct.TYPE_17__* %232, i32* %13)
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* @LSM_OK, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %257

237:                                              ; preds = %231
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* @LSM_SEEK_LEFAST, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %237
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %243 = call i64 @mcursorLocationOk(%struct.TYPE_17__* %242, i32 0)
  %244 = icmp eq i64 0, %243
  br i1 %244, label %245, label %257

245:                                              ; preds = %241
  %246 = load i32, i32* %11, align 4
  switch i32 %246, label %253 [
    i32 129, label %247
    i32 128, label %250
  ]

247:                                              ; preds = %245
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %249 = call i32 @lsmMCursorReset(%struct.TYPE_17__* %248)
  br label %256

250:                                              ; preds = %245
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %252 = call i32 @lsmMCursorNext(%struct.TYPE_17__* %251)
  store i32 %252, i32* %13, align 4
  br label %256

253:                                              ; preds = %245
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %255 = call i32 @lsmMCursorPrev(%struct.TYPE_17__* %254)
  store i32 %255, i32* %13, align 4
  br label %256

256:                                              ; preds = %253, %250, %247
  br label %257

257:                                              ; preds = %256, %241, %237, %231
  br label %258

258:                                              ; preds = %257, %178
  %259 = load i32, i32* %13, align 4
  ret i32 %259
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @treeCursorSeek(%struct.TYPE_17__*, i64, i8*, i32, i32, i32*) #1

declare dso_local i32 @seekInLevel(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @multiCursorAllocTree(%struct.TYPE_17__*) #1

declare dso_local i32 @multiCursorDoCompare(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @multiCursorCacheKey(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @mcursorLocationOk(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @lsmMCursorReset(%struct.TYPE_17__*) #1

declare dso_local i32 @lsmMCursorNext(%struct.TYPE_17__*) #1

declare dso_local i32 @lsmMCursorPrev(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
