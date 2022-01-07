; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib1bpp.c_DIB_1BPP_BitBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib1bpp.c_DIB_1BPP_BitBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, i32, %struct.TYPE_21__*, %struct.TYPE_14__, i32, i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@BrushOrigin = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@ColorTranslation = common dso_local global i32 0, align 4
@NoBits = common dso_local global i32 0, align 4
@PatternObj = common dso_local global %struct.TYPE_20__* null, align 8
@PatternWidth = common dso_local global i32 0, align 4
@SourceSurf = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@k = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DIB_1BPP_BitBlt(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ROP4_USES_SOURCE(i32 %18)
  store i64 %19, i64* %12, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @ROP4_USES_PATTERN(i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %31, %35
  %37 = and i32 %36, 31
  %38 = sub nsw i32 %27, %37
  store i32 %38, i32* %15, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  %43 = load i64, i64* %13, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %1
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = icmp ne %struct.TYPE_20__* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %54, %58
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %59, %65
  store i32 %66, i32* %7, align 4
  br label %79

67:                                               ; preds = %45
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = icmp ne %struct.TYPE_16__* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78, %50
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %450, %80
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %453

92:                                               ; preds = %85
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %3, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %5, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %114, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %113, i64 %121
  store i32* %122, i32** %14, align 8
  %123 = load i32, i32* %3, align 4
  %124 = and i32 %123, 31
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %92
  br label %127

127:                                              ; preds = %126, %92
  br label %128

128:                                              ; preds = %345, %127
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %352

132:                                              ; preds = %128
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %8, align 4
  %135 = load i64, i64* %12, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %216

137:                                              ; preds = %132
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %212, %137
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 8
  br i1 %140, label %141, label %215

141:                                              ; preds = %138
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @DIB_GetSource(i32 %144, i32 %147, i32 %148, i32 %151)
  %153 = load i32, i32* %11, align 4
  %154 = sub nsw i32 7, %153
  %155 = shl i32 %152, %154
  %156 = load i32, i32* %9, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %9, align 4
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %161, %162
  %164 = add nsw i32 %163, 8
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @DIB_GetSource(i32 %160, i32 %164, i32 %165, i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = sub nsw i32 7, %170
  %172 = add nsw i32 8, %171
  %173 = shl i32 %169, %172
  %174 = load i32, i32* %9, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %9, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %179, %180
  %182 = add nsw i32 %181, 16
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @DIB_GetSource(i32 %178, i32 %182, i32 %183, i32 %186)
  %188 = load i32, i32* %11, align 4
  %189 = sub nsw i32 7, %188
  %190 = add nsw i32 16, %189
  %191 = shl i32 %187, %190
  %192 = load i32, i32* %9, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %9, align 4
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %197, %198
  %200 = add nsw i32 %199, 24
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @DIB_GetSource(i32 %196, i32 %200, i32 %201, i32 %204)
  %206 = load i32, i32* %11, align 4
  %207 = sub nsw i32 7, %206
  %208 = add nsw i32 24, %207
  %209 = shl i32 %205, %208
  %210 = load i32, i32* %9, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %9, align 4
  br label %212

212:                                              ; preds = %141
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %138

215:                                              ; preds = %138
  br label %216

216:                                              ; preds = %215, %132
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = icmp ne %struct.TYPE_20__* %219, null
  br i1 %220, label %221, label %336

221:                                              ; preds = %216
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %222

222:                                              ; preds = %332, %221
  %223 = load i32, i32* %11, align 4
  %224 = icmp slt i32 %223, 8
  br i1 %224, label %225, label %335

225:                                              ; preds = %222
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = load i32, i32* %3, align 4
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %229, %233
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %234, %235
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = srem i32 %236, %242
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @DIB_GetSourceIndex(%struct.TYPE_20__* %228, i32 %243, i32 %244)
  %246 = load i32, i32* %11, align 4
  %247 = sub nsw i32 7, %246
  %248 = shl i32 %245, %247
  %249 = load i32, i32* %10, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %10, align 4
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %252, align 8
  %254 = load i32, i32* %3, align 4
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %254, %258
  %260 = load i32, i32* %11, align 4
  %261 = add nsw i32 %259, %260
  %262 = add nsw i32 %261, 8
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = srem i32 %262, %268
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @DIB_GetSourceIndex(%struct.TYPE_20__* %253, i32 %269, i32 %270)
  %272 = load i32, i32* %11, align 4
  %273 = sub nsw i32 7, %272
  %274 = add nsw i32 8, %273
  %275 = shl i32 %271, %274
  %276 = load i32, i32* %10, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %10, align 4
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %279, align 8
  %281 = load i32, i32* %3, align 4
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %281, %285
  %287 = load i32, i32* %11, align 4
  %288 = add nsw i32 %286, %287
  %289 = add nsw i32 %288, 16
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = srem i32 %289, %295
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @DIB_GetSourceIndex(%struct.TYPE_20__* %280, i32 %296, i32 %297)
  %299 = load i32, i32* %11, align 4
  %300 = sub nsw i32 7, %299
  %301 = add nsw i32 16, %300
  %302 = shl i32 %298, %301
  %303 = load i32, i32* %10, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %10, align 4
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %306, align 8
  %308 = load i32, i32* %3, align 4
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %308, %312
  %314 = load i32, i32* %11, align 4
  %315 = add nsw i32 %313, %314
  %316 = add nsw i32 %315, 24
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = srem i32 %316, %322
  %324 = load i32, i32* %7, align 4
  %325 = call i32 @DIB_GetSourceIndex(%struct.TYPE_20__* %307, i32 %323, i32 %324)
  %326 = load i32, i32* %11, align 4
  %327 = sub nsw i32 7, %326
  %328 = add nsw i32 24, %327
  %329 = shl i32 %325, %328
  %330 = load i32, i32* %10, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %10, align 4
  br label %332

332:                                              ; preds = %225
  %333 = load i32, i32* %11, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %11, align 4
  br label %222

335:                                              ; preds = %222
  br label %336

336:                                              ; preds = %335, %216
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = load i32, i32* %9, align 4
  %342 = load i32, i32* %10, align 4
  %343 = call i32 @DIB_DoRop(i32 %339, i32 %340, i32 %341, i32 %342)
  %344 = load i32*, i32** %14, align 8
  store i32 %343, i32* %344, align 4
  br label %345

345:                                              ; preds = %336
  %346 = load i32, i32* %3, align 4
  %347 = add nsw i32 %346, 32
  store i32 %347, i32* %3, align 4
  %348 = load i32*, i32** %14, align 8
  %349 = getelementptr inbounds i32, i32* %348, i32 1
  store i32* %349, i32** %14, align 8
  %350 = load i32, i32* %5, align 4
  %351 = add nsw i32 %350, 32
  store i32 %351, i32* %5, align 4
  br label %128

352:                                              ; preds = %128
  %353 = load i32, i32* %3, align 4
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 6
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp slt i32 %353, %357
  br i1 %358, label %359, label %431

359:                                              ; preds = %352
  br label %360

360:                                              ; preds = %425, %359
  %361 = load i32, i32* %3, align 4
  %362 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %362, i32 0, i32 6
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp slt i32 %361, %365
  br i1 %366, label %367, label %430

367:                                              ; preds = %360
  %368 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %369 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %368, i32 0, i32 2
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %369, align 8
  %371 = load i32, i32* %3, align 4
  %372 = load i32, i32* %4, align 4
  %373 = call i32 @DIB_1BPP_GetPixel(%struct.TYPE_21__* %370, i32 %371, i32 %372)
  store i32 %373, i32* %8, align 4
  %374 = load i64, i64* %12, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %386

376:                                              ; preds = %367
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %5, align 4
  %381 = load i32, i32* %6, align 4
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @DIB_GetSource(i32 %379, i32 %380, i32 %381, i32 %384)
  store i32 %385, i32* %9, align 4
  br label %386

386:                                              ; preds = %376, %367
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %388, align 8
  %390 = icmp ne %struct.TYPE_20__* %389, null
  br i1 %390, label %391, label %410

391:                                              ; preds = %386
  %392 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_20__*, %struct.TYPE_20__** %393, align 8
  %395 = load i32, i32* %3, align 4
  %396 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %395, %399
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_20__*, %struct.TYPE_20__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = srem i32 %400, %406
  %408 = load i32, i32* %7, align 4
  %409 = call i32 @DIB_GetSourceIndex(%struct.TYPE_20__* %394, i32 %407, i32 %408)
  store i32 %409, i32* %10, align 4
  br label %410

410:                                              ; preds = %391, %386
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 2
  %413 = load %struct.TYPE_21__*, %struct.TYPE_21__** %412, align 8
  %414 = load i32, i32* %3, align 4
  %415 = load i32, i32* %4, align 4
  %416 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* %8, align 4
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* %10, align 4
  %422 = call i32 @DIB_DoRop(i32 %418, i32 %419, i32 %420, i32 %421)
  %423 = and i32 %422, 15
  %424 = call i32 @DIB_1BPP_PutPixel(%struct.TYPE_21__* %413, i32 %414, i32 %415, i32 %423)
  br label %425

425:                                              ; preds = %410
  %426 = load i32, i32* %3, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %3, align 4
  %428 = load i32, i32* %5, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %5, align 4
  br label %360

430:                                              ; preds = %360
  br label %431

431:                                              ; preds = %430, %352
  %432 = load i32, i32* %6, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %6, align 4
  %434 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_20__*, %struct.TYPE_20__** %435, align 8
  %437 = icmp ne %struct.TYPE_20__* %436, null
  br i1 %437, label %438, label %449

438:                                              ; preds = %431
  %439 = load i32, i32* %7, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %7, align 4
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %441, i32 0, i32 0
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %7, align 4
  %448 = srem i32 %447, %446
  store i32 %448, i32* %7, align 4
  br label %449

449:                                              ; preds = %438, %431
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %4, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %4, align 4
  br label %85

453:                                              ; preds = %85
  %454 = load i64, i64* @TRUE, align 8
  ret i64 %454
}

declare dso_local i64 @ROP4_USES_SOURCE(i32) #1

declare dso_local i64 @ROP4_USES_PATTERN(i32) #1

declare dso_local i32 @DIB_GetSource(i32, i32, i32, i32) #1

declare dso_local i32 @DIB_GetSourceIndex(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @DIB_DoRop(i32, i32, i32, i32) #1

declare dso_local i32 @DIB_1BPP_GetPixel(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @DIB_1BPP_PutPixel(%struct.TYPE_21__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
