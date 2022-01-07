; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_resolveWeak.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_resolveWeak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }

@NSM = common dso_local global i64 0, align 8
@LRI = common dso_local global i64 0, align 8
@ON = common dso_local global i64 0, align 8
@EN = common dso_local global i64 0, align 8
@R = common dso_local global i64 0, align 8
@L = common dso_local global i64 0, align 8
@AL = common dso_local global i64 0, align 8
@AN = common dso_local global i64 0, align 8
@ES = common dso_local global i64 0, align 8
@CS = common dso_local global i64 0, align 8
@ET = common dso_local global i64 0, align 8
@BN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @resolveWeak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveWeak(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %93, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %96

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NSM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %92

32:                                               ; preds = %20
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @iso_previousValidChar(%struct.TYPE_7__* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  store i64 %41, i64* %49, align 8
  br label %91

50:                                               ; preds = %32
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @LRI, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = load i64, i64* @ON, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  store i64 %63, i64* %71, align 8
  br label %90

72:                                               ; preds = %50
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  store i64 %81, i64* %89, align 8
  br label %90

90:                                               ; preds = %72, %62
  br label %91

91:                                               ; preds = %90, %38
  br label %92

92:                                               ; preds = %91, %20
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %14

96:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %187, %96
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %190

103:                                              ; preds = %97
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @EN, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %186

115:                                              ; preds = %103
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @iso_previousValidChar(%struct.TYPE_7__* %116, i32 %117)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %181, %115
  %120 = load i32, i32* %5, align 4
  %121 = icmp sgt i32 %120, -1
  br i1 %121, label %122, label %185

122:                                              ; preds = %119
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @R, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %158, label %134

134:                                              ; preds = %122
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @L, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %134
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @AL, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %146, %134, %122
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @AL, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %158
  %171 = load i64, i64* @AN, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  store i64 %171, i64* %179, align 8
  br label %180

180:                                              ; preds = %170, %158
  br label %185

181:                                              ; preds = %146
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @iso_previousValidChar(%struct.TYPE_7__* %182, i32 %183)
  store i32 %184, i32* %5, align 4
  br label %119

185:                                              ; preds = %180, %119
  br label %186

186:                                              ; preds = %185, %103
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %3, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %3, align 4
  br label %97

190:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %220, %190
  %192 = load i32, i32* %3, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %223

197:                                              ; preds = %191
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64*, i64** %204, align 8
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @AL, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %197
  %210 = load i64, i64* @R, align 8
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i64*, i64** %217, align 8
  store i64 %210, i64* %218, align 8
  br label %219

219:                                              ; preds = %209, %197
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %3, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %3, align 4
  br label %191

223:                                              ; preds = %191
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %391, %223
  %225 = load i32, i32* %3, align 4
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %394

230:                                              ; preds = %224
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = load i32, i32* %3, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @ES, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %289

242:                                              ; preds = %230
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @iso_previousValidChar(%struct.TYPE_7__* %243, i32 %244)
  store i32 %245, i32* %6, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %247 = load i32, i32* %3, align 4
  %248 = call i32 @iso_nextValidChar(%struct.TYPE_7__* %246, i32 %247)
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp sgt i32 %249, -1
  br i1 %250, label %251, label %288

251:                                              ; preds = %242
  %252 = load i32, i32* %7, align 4
  %253 = icmp sgt i32 %252, -1
  br i1 %253, label %254, label %288

254:                                              ; preds = %251
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %256, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i64*, i64** %261, align 8
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @EN, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %288

266:                                              ; preds = %254
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 0
  %274 = load i64*, i64** %273, align 8
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @EN, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %288

278:                                              ; preds = %266
  %279 = load i64, i64* @EN, align 8
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = load i32, i32* %3, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i64*, i64** %286, align 8
  store i64 %279, i64* %287, align 8
  br label %288

288:                                              ; preds = %278, %266, %254, %251, %242
  br label %390

289:                                              ; preds = %230
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = load i32, i32* %3, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = load i64*, i64** %296, align 8
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @CS, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %389

301:                                              ; preds = %289
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %303 = load i32, i32* %3, align 4
  %304 = call i32 @iso_previousValidChar(%struct.TYPE_7__* %302, i32 %303)
  store i32 %304, i32* %8, align 4
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %306 = load i32, i32* %3, align 4
  %307 = call i32 @iso_nextValidChar(%struct.TYPE_7__* %305, i32 %306)
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* %8, align 4
  %309 = icmp sgt i32 %308, -1
  br i1 %309, label %310, label %347

310:                                              ; preds = %301
  %311 = load i32, i32* %9, align 4
  %312 = icmp sgt i32 %311, -1
  br i1 %312, label %313, label %347

313:                                              ; preds = %310
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 2
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i64*, i64** %320, align 8
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @EN, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %347

325:                                              ; preds = %313
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 2
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %327, align 8
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @EN, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %347

337:                                              ; preds = %325
  %338 = load i64, i64* @EN, align 8
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %340, align 8
  %342 = load i32, i32* %3, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 0
  %346 = load i64*, i64** %345, align 8
  store i64 %338, i64* %346, align 8
  br label %388

347:                                              ; preds = %325, %313, %310, %301
  %348 = load i32, i32* %8, align 4
  %349 = icmp sgt i32 %348, -1
  br i1 %349, label %350, label %387

350:                                              ; preds = %347
  %351 = load i32, i32* %9, align 4
  %352 = icmp sgt i32 %351, -1
  br i1 %352, label %353, label %387

353:                                              ; preds = %350
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 2
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %355, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = load i64*, i64** %360, align 8
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @AN, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %387

365:                                              ; preds = %353
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 2
  %368 = load %struct.TYPE_6__*, %struct.TYPE_6__** %367, align 8
  %369 = load i32, i32* %9, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = load i64*, i64** %372, align 8
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @AN, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %387

377:                                              ; preds = %365
  %378 = load i64, i64* @AN, align 8
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 2
  %381 = load %struct.TYPE_6__*, %struct.TYPE_6__** %380, align 8
  %382 = load i32, i32* %3, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 0
  %386 = load i64*, i64** %385, align 8
  store i64 %378, i64* %386, align 8
  br label %387

387:                                              ; preds = %377, %365, %353, %350, %347
  br label %388

388:                                              ; preds = %387, %337
  br label %389

389:                                              ; preds = %388, %289
  br label %390

390:                                              ; preds = %389, %288
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* %3, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %3, align 4
  br label %224

394:                                              ; preds = %224
  store i32 0, i32* %3, align 4
  br label %395

395:                                              ; preds = %551, %394
  %396 = load i32, i32* %3, align 4
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = icmp slt i32 %396, %399
  br i1 %400, label %401, label %554

401:                                              ; preds = %395
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 2
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %403, align 8
  %405 = load i32, i32* %3, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 0
  %409 = load i64*, i64** %408, align 8
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @ET, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %550

413:                                              ; preds = %401
  %414 = load i32, i32* %3, align 4
  %415 = sub nsw i32 %414, 1
  store i32 %415, i32* %10, align 4
  br label %416

416:                                              ; preds = %470, %413
  %417 = load i32, i32* %10, align 4
  %418 = icmp sgt i32 %417, -1
  br i1 %418, label %419, label %473

419:                                              ; preds = %416
  %420 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 2
  %422 = load %struct.TYPE_6__*, %struct.TYPE_6__** %421, align 8
  %423 = load i32, i32* %10, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 0
  %427 = load i64*, i64** %426, align 8
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @BN, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %432

431:                                              ; preds = %419
  br label %470

432:                                              ; preds = %419
  %433 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 2
  %435 = load %struct.TYPE_6__*, %struct.TYPE_6__** %434, align 8
  %436 = load i32, i32* %10, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 0
  %440 = load i64*, i64** %439, align 8
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @ET, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %445

444:                                              ; preds = %432
  br label %470

445:                                              ; preds = %432
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 2
  %448 = load %struct.TYPE_6__*, %struct.TYPE_6__** %447, align 8
  %449 = load i32, i32* %10, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 0
  %453 = load i64*, i64** %452, align 8
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @EN, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %467

457:                                              ; preds = %445
  %458 = load i64, i64* @EN, align 8
  %459 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %459, i32 0, i32 2
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %460, align 8
  %462 = load i32, i32* %3, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 0
  %466 = load i64*, i64** %465, align 8
  store i64 %458, i64* %466, align 8
  br label %468

467:                                              ; preds = %445
  br label %473

468:                                              ; preds = %457
  br label %469

469:                                              ; preds = %468
  br label %470

470:                                              ; preds = %469, %444, %431
  %471 = load i32, i32* %10, align 4
  %472 = add nsw i32 %471, -1
  store i32 %472, i32* %10, align 4
  br label %416

473:                                              ; preds = %467, %416
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 2
  %476 = load %struct.TYPE_6__*, %struct.TYPE_6__** %475, align 8
  %477 = load i32, i32* %3, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i32 0, i32 0
  %481 = load i64*, i64** %480, align 8
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @ET, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %549

485:                                              ; preds = %473
  %486 = load i32, i32* %3, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %10, align 4
  br label %488

488:                                              ; preds = %545, %485
  %489 = load i32, i32* %10, align 4
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = icmp slt i32 %489, %492
  br i1 %493, label %494, label %548

494:                                              ; preds = %488
  %495 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %496 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %495, i32 0, i32 2
  %497 = load %struct.TYPE_6__*, %struct.TYPE_6__** %496, align 8
  %498 = load i32, i32* %10, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 0
  %502 = load i64*, i64** %501, align 8
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @BN, align 8
  %505 = icmp eq i64 %503, %504
  br i1 %505, label %506, label %507

506:                                              ; preds = %494
  br label %545

507:                                              ; preds = %494
  %508 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %509 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %508, i32 0, i32 2
  %510 = load %struct.TYPE_6__*, %struct.TYPE_6__** %509, align 8
  %511 = load i32, i32* %10, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i32 0, i32 0
  %515 = load i64*, i64** %514, align 8
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @ET, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %519, label %520

519:                                              ; preds = %507
  br label %545

520:                                              ; preds = %507
  %521 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %522 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %521, i32 0, i32 2
  %523 = load %struct.TYPE_6__*, %struct.TYPE_6__** %522, align 8
  %524 = load i32, i32* %10, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 0
  %528 = load i64*, i64** %527, align 8
  %529 = load i64, i64* %528, align 8
  %530 = load i64, i64* @EN, align 8
  %531 = icmp eq i64 %529, %530
  br i1 %531, label %532, label %542

532:                                              ; preds = %520
  %533 = load i64, i64* @EN, align 8
  %534 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %535 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %534, i32 0, i32 2
  %536 = load %struct.TYPE_6__*, %struct.TYPE_6__** %535, align 8
  %537 = load i32, i32* %3, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %539, i32 0, i32 0
  %541 = load i64*, i64** %540, align 8
  store i64 %533, i64* %541, align 8
  br label %543

542:                                              ; preds = %520
  br label %548

543:                                              ; preds = %532
  br label %544

544:                                              ; preds = %543
  br label %545

545:                                              ; preds = %544, %519, %506
  %546 = load i32, i32* %10, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %10, align 4
  br label %488

548:                                              ; preds = %542, %488
  br label %549

549:                                              ; preds = %548, %473
  br label %550

550:                                              ; preds = %549, %401
  br label %551

551:                                              ; preds = %550
  %552 = load i32, i32* %3, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %3, align 4
  br label %395

554:                                              ; preds = %395
  store i32 0, i32* %3, align 4
  br label %555

555:                                              ; preds = %677, %554
  %556 = load i32, i32* %3, align 4
  %557 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %558 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = icmp slt i32 %556, %559
  br i1 %560, label %561, label %680

561:                                              ; preds = %555
  %562 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %563 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %562, i32 0, i32 2
  %564 = load %struct.TYPE_6__*, %struct.TYPE_6__** %563, align 8
  %565 = load i32, i32* %3, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %567, i32 0, i32 0
  %569 = load i64*, i64** %568, align 8
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* @ET, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %609, label %573

573:                                              ; preds = %561
  %574 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %575 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %574, i32 0, i32 2
  %576 = load %struct.TYPE_6__*, %struct.TYPE_6__** %575, align 8
  %577 = load i32, i32* %3, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %576, i64 %578
  %580 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %579, i32 0, i32 0
  %581 = load i64*, i64** %580, align 8
  %582 = load i64, i64* %581, align 8
  %583 = load i64, i64* @ES, align 8
  %584 = icmp eq i64 %582, %583
  br i1 %584, label %609, label %585

585:                                              ; preds = %573
  %586 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %587 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %586, i32 0, i32 2
  %588 = load %struct.TYPE_6__*, %struct.TYPE_6__** %587, align 8
  %589 = load i32, i32* %3, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %588, i64 %590
  %592 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %591, i32 0, i32 0
  %593 = load i64*, i64** %592, align 8
  %594 = load i64, i64* %593, align 8
  %595 = load i64, i64* @CS, align 8
  %596 = icmp eq i64 %594, %595
  br i1 %596, label %609, label %597

597:                                              ; preds = %585
  %598 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %599 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %598, i32 0, i32 2
  %600 = load %struct.TYPE_6__*, %struct.TYPE_6__** %599, align 8
  %601 = load i32, i32* %3, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %600, i64 %602
  %604 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %603, i32 0, i32 0
  %605 = load i64*, i64** %604, align 8
  %606 = load i64, i64* %605, align 8
  %607 = load i64, i64* @ON, align 8
  %608 = icmp eq i64 %606, %607
  br i1 %608, label %609, label %676

609:                                              ; preds = %597, %585, %573, %561
  %610 = load i32, i32* %3, align 4
  %611 = sub nsw i32 %610, 1
  store i32 %611, i32* %11, align 4
  %612 = load i32, i32* %3, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %12, align 4
  %614 = load i32, i32* %11, align 4
  %615 = icmp sgt i32 %614, -1
  br i1 %615, label %616, label %638

616:                                              ; preds = %609
  %617 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %618 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %617, i32 0, i32 2
  %619 = load %struct.TYPE_6__*, %struct.TYPE_6__** %618, align 8
  %620 = load i32, i32* %11, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %619, i64 %621
  %623 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %622, i32 0, i32 0
  %624 = load i64*, i64** %623, align 8
  %625 = load i64, i64* %624, align 8
  %626 = load i64, i64* @BN, align 8
  %627 = icmp eq i64 %625, %626
  br i1 %627, label %628, label %638

628:                                              ; preds = %616
  %629 = load i64, i64* @ON, align 8
  %630 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %631 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %630, i32 0, i32 2
  %632 = load %struct.TYPE_6__*, %struct.TYPE_6__** %631, align 8
  %633 = load i32, i32* %11, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %632, i64 %634
  %636 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %635, i32 0, i32 0
  %637 = load i64*, i64** %636, align 8
  store i64 %629, i64* %637, align 8
  br label %638

638:                                              ; preds = %628, %616, %609
  %639 = load i32, i32* %12, align 4
  %640 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %641 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = icmp slt i32 %639, %642
  br i1 %643, label %644, label %666

644:                                              ; preds = %638
  %645 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %646 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %645, i32 0, i32 2
  %647 = load %struct.TYPE_6__*, %struct.TYPE_6__** %646, align 8
  %648 = load i32, i32* %12, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %647, i64 %649
  %651 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %650, i32 0, i32 0
  %652 = load i64*, i64** %651, align 8
  %653 = load i64, i64* %652, align 8
  %654 = load i64, i64* @BN, align 8
  %655 = icmp eq i64 %653, %654
  br i1 %655, label %656, label %666

656:                                              ; preds = %644
  %657 = load i64, i64* @ON, align 8
  %658 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %659 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %658, i32 0, i32 2
  %660 = load %struct.TYPE_6__*, %struct.TYPE_6__** %659, align 8
  %661 = load i32, i32* %12, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %660, i64 %662
  %664 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %663, i32 0, i32 0
  %665 = load i64*, i64** %664, align 8
  store i64 %657, i64* %665, align 8
  br label %666

666:                                              ; preds = %656, %644, %638
  %667 = load i64, i64* @ON, align 8
  %668 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %669 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %668, i32 0, i32 2
  %670 = load %struct.TYPE_6__*, %struct.TYPE_6__** %669, align 8
  %671 = load i32, i32* %3, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %670, i64 %672
  %674 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %673, i32 0, i32 0
  %675 = load i64*, i64** %674, align 8
  store i64 %667, i64* %675, align 8
  br label %676

676:                                              ; preds = %666, %597
  br label %677

677:                                              ; preds = %676
  %678 = load i32, i32* %3, align 4
  %679 = add nsw i32 %678, 1
  store i32 %679, i32* %3, align 4
  br label %555

680:                                              ; preds = %555
  store i32 0, i32* %3, align 4
  br label %681

681:                                              ; preds = %779, %680
  %682 = load i32, i32* %3, align 4
  %683 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %684 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 8
  %686 = icmp slt i32 %682, %685
  br i1 %686, label %687, label %782

687:                                              ; preds = %681
  %688 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %689 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %688, i32 0, i32 2
  %690 = load %struct.TYPE_6__*, %struct.TYPE_6__** %689, align 8
  %691 = load i32, i32* %3, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %690, i64 %692
  %694 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %693, i32 0, i32 0
  %695 = load i64*, i64** %694, align 8
  %696 = load i64, i64* %695, align 8
  %697 = load i64, i64* @EN, align 8
  %698 = icmp eq i64 %696, %697
  br i1 %698, label %699, label %778

699:                                              ; preds = %687
  %700 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %701 = load i32, i32* %3, align 4
  %702 = call i32 @iso_previousValidChar(%struct.TYPE_7__* %700, i32 %701)
  store i32 %702, i32* %13, align 4
  br label %703

703:                                              ; preds = %754, %699
  %704 = load i32, i32* %13, align 4
  %705 = icmp sgt i32 %704, -1
  br i1 %705, label %706, label %758

706:                                              ; preds = %703
  %707 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %708 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %707, i32 0, i32 2
  %709 = load %struct.TYPE_6__*, %struct.TYPE_6__** %708, align 8
  %710 = load i32, i32* %13, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %709, i64 %711
  %713 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %712, i32 0, i32 0
  %714 = load i64*, i64** %713, align 8
  %715 = load i64, i64* %714, align 8
  %716 = load i64, i64* @R, align 8
  %717 = icmp eq i64 %715, %716
  br i1 %717, label %730, label %718

718:                                              ; preds = %706
  %719 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %720 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %719, i32 0, i32 2
  %721 = load %struct.TYPE_6__*, %struct.TYPE_6__** %720, align 8
  %722 = load i32, i32* %13, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %721, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %724, i32 0, i32 0
  %726 = load i64*, i64** %725, align 8
  %727 = load i64, i64* %726, align 8
  %728 = load i64, i64* @L, align 8
  %729 = icmp eq i64 %727, %728
  br i1 %729, label %730, label %753

730:                                              ; preds = %718, %706
  %731 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %732 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %731, i32 0, i32 2
  %733 = load %struct.TYPE_6__*, %struct.TYPE_6__** %732, align 8
  %734 = load i32, i32* %13, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %733, i64 %735
  %737 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %736, i32 0, i32 0
  %738 = load i64*, i64** %737, align 8
  %739 = load i64, i64* %738, align 8
  %740 = load i64, i64* @L, align 8
  %741 = icmp eq i64 %739, %740
  br i1 %741, label %742, label %752

742:                                              ; preds = %730
  %743 = load i64, i64* @L, align 8
  %744 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %745 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %744, i32 0, i32 2
  %746 = load %struct.TYPE_6__*, %struct.TYPE_6__** %745, align 8
  %747 = load i32, i32* %3, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %746, i64 %748
  %750 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %749, i32 0, i32 0
  %751 = load i64*, i64** %750, align 8
  store i64 %743, i64* %751, align 8
  br label %752

752:                                              ; preds = %742, %730
  br label %758

753:                                              ; preds = %718
  br label %754

754:                                              ; preds = %753
  %755 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %756 = load i32, i32* %13, align 4
  %757 = call i32 @iso_previousValidChar(%struct.TYPE_7__* %755, i32 %756)
  store i32 %757, i32* %13, align 4
  br label %703

758:                                              ; preds = %752, %703
  %759 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %760 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %759, i32 0, i32 1
  %761 = load i64, i64* %760, align 8
  %762 = load i64, i64* @L, align 8
  %763 = icmp eq i64 %761, %762
  br i1 %763, label %764, label %777

764:                                              ; preds = %758
  %765 = load i32, i32* %13, align 4
  %766 = icmp eq i32 %765, -1
  br i1 %766, label %767, label %777

767:                                              ; preds = %764
  %768 = load i64, i64* @L, align 8
  %769 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %770 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %769, i32 0, i32 2
  %771 = load %struct.TYPE_6__*, %struct.TYPE_6__** %770, align 8
  %772 = load i32, i32* %3, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %771, i64 %773
  %775 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %774, i32 0, i32 0
  %776 = load i64*, i64** %775, align 8
  store i64 %768, i64* %776, align 8
  br label %777

777:                                              ; preds = %767, %764, %758
  br label %778

778:                                              ; preds = %777, %687
  br label %779

779:                                              ; preds = %778
  %780 = load i32, i32* %3, align 4
  %781 = add nsw i32 %780, 1
  store i32 %781, i32* %3, align 4
  br label %681

782:                                              ; preds = %681
  ret void
}

declare dso_local i32 @iso_previousValidChar(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @iso_nextValidChar(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
