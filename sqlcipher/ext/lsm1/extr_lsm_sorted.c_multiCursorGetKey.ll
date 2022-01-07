; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorGetKey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorGetKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i8*, %struct.TYPE_9__*, i32** }
%struct.TYPE_13__ = type { i32, i32, i8*, i32 }
%struct.TYPE_11__ = type { i32, i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@CURSOR_FLUSH_FREELIST = common dso_local global i32 0, align 4
@LSM_END_DELETE = common dso_local global i32 0, align 4
@LSM_SYSTEMKEY = common dso_local global i32 0, align 4
@LSM_INSERT = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@CURSOR_DATA_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i32*, i8**, i32*)* @multiCursorGetKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiCursorGetKey(%struct.TYPE_14__* %0, i32 %1, i32* %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %189 [
    i32 129, label %23
    i32 128, label %23
    i32 130, label %39
  ]

23:                                               ; preds = %5, %5
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 7
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 129
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @lsmTreeCursorValid(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @lsmTreeCursorKey(i32* %36, i32* %13, i8** %12, i32* %11)
  br label %38

38:                                               ; preds = %35, %23
  br label %254

39:                                               ; preds = %5
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %15, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %188

47:                                               ; preds = %39
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CURSOR_FLUSH_FREELIST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %188

54:                                               ; preds = %47
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %16, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %16, align 4
  %63 = mul nsw i32 %62, 2
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %187

65:                                               ; preds = %54
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %17, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 2
  %76 = sub nsw i32 %71, %75
  store i32 %76, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = srem i32 %79, 2
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %65
  %83 = load i32, i32* @LSM_END_DELETE, align 4
  %84 = load i32, i32* @LSM_SYSTEMKEY, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %13, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %152

93:                                               ; preds = %65
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %93
  %102 = load i32, i32* @LSM_INSERT, align 4
  %103 = load i32, i32* @LSM_SYSTEMKEY, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %13, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %16, align 4
  %113 = sub nsw i32 %112, 1
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %139

115:                                              ; preds = %101
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %19, align 4
  %124 = add nsw i32 %123, 1
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %115
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load i32, i32* @LSM_END_DELETE, align 4
  %137 = load i32, i32* %13, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %135, %126, %115, %101
  br label %151

140:                                              ; preds = %93
  %141 = load i32, i32* @LSM_START_DELETE, align 4
  %142 = load i32, i32* @LSM_SYSTEMKEY, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %13, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %19, align 4
  br label %151

151:                                              ; preds = %140, %139
  br label %152

152:                                              ; preds = %151, %82
  %153 = load i32, i32* %18, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %179

155:                                              ; preds = %152
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %19, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %155
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = load i32, i32* @LSM_START_DELETE, align 4
  %177 = load i32, i32* %13, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %175, %166, %155, %152
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %12, align 8
  store i32 4, i32* %11, align 4
  %183 = load i8*, i8** %12, align 8
  %184 = load i32, i32* %19, align 4
  %185 = xor i32 %184, -1
  %186 = call i32 @lsmPutU32(i8* %183, i32 %185)
  br label %187

187:                                              ; preds = %179, %54
  br label %188

188:                                              ; preds = %187, %47, %39
  br label %254

189:                                              ; preds = %5
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @CURSOR_DATA_SEGMENT, align 4
  %192 = sub nsw i32 %190, %191
  store i32 %192, i32* %20, align 4
  %193 = load i32, i32* %20, align 4
  %194 = icmp sge i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load i32, i32* %20, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %197, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %189
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = icmp ne %struct.TYPE_11__* %205, null
  br i1 %206, label %207, label %223

207:                                              ; preds = %202
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %12, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 4
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  store i32 %217, i32* %11, align 4
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %13, align 4
  br label %223

223:                                              ; preds = %207, %202
  br label %253

224:                                              ; preds = %189
  %225 = load i32, i32* %20, align 4
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %252

230:                                              ; preds = %224
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 3
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %232, align 8
  %234 = load i32, i32* %20, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i64 %235
  store %struct.TYPE_13__* %236, %struct.TYPE_13__** %21, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %230
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 2
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %12, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %11, align 4
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %13, align 4
  br label %251

251:                                              ; preds = %241, %230
  br label %252

252:                                              ; preds = %251, %224
  br label %253

253:                                              ; preds = %252, %223
  br label %254

254:                                              ; preds = %253, %188, %38
  %255 = load i32*, i32** %8, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i32, i32* %13, align 4
  %259 = load i32*, i32** %8, align 8
  store i32 %258, i32* %259, align 4
  br label %260

260:                                              ; preds = %257, %254
  %261 = load i32*, i32** %10, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load i32, i32* %11, align 4
  %265 = load i32*, i32** %10, align 8
  store i32 %264, i32* %265, align 4
  br label %266

266:                                              ; preds = %263, %260
  %267 = load i8**, i8*** %9, align 8
  %268 = icmp ne i8** %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i8*, i8** %12, align 8
  %271 = load i8**, i8*** %9, align 8
  store i8* %270, i8** %271, align 8
  br label %272

272:                                              ; preds = %269, %266
  ret void
}

declare dso_local i32 @lsmTreeCursorValid(i32*) #1

declare dso_local i32 @lsmTreeCursorKey(i32*, i32*, i8**, i32*) #1

declare dso_local i32 @lsmPutU32(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
