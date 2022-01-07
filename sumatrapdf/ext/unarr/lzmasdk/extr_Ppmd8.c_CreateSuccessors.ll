; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_CreateSuccessors.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd8.c_CreateSuccessors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i64*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i64, i32, i64, i8* }

@PPMD8_MAX_ORDER = common dso_local global i32 0, align 4
@MAX_FREQ = common dso_local global i32 0, align 4
@UNIT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_23__*, i32, %struct.TYPE_22__*, %struct.TYPE_21__*)* @CreateSuccessors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @CreateSuccessors(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_22__* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = call i64 @SUCCESSOR(%struct.TYPE_22__* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* @PPMD8_MAX_ORDER, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca %struct.TYPE_22__*, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = load i32, i32* %15, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %15, align 4
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %31, i64 %40
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %41, align 8
  br label %42

42:                                               ; preds = %34, %4
  br label %43

43:                                               ; preds = %129, %42
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %135

48:                                               ; preds = %43
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %50 = call %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__* %49)
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %9, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %52 = icmp ne %struct.TYPE_22__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %54, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  br label %115

55:                                               ; preds = %48
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %55
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %62 = call %struct.TYPE_22__* @STATS(%struct.TYPE_21__* %61)
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %17, align 8
  br label %63

63:                                               ; preds = %74, %60
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %66, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 1
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %17, align 8
  br label %63

77:                                               ; preds = %63
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MAX_FREQ, align 4
  %82 = sub nsw i32 %81, 9
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %84, %77
  br label %114

94:                                               ; preds = %55
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %96 = call %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__* %95)
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %17, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %98 = call %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__* %97)
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %106, 24
  %108 = zext i1 %107 to i32
  %109 = and i32 %103, %108
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %94, %93
  br label %115

115:                                              ; preds = %114, %53
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %117 = call i64 @SUCCESSOR(%struct.TYPE_22__* %116)
  store i64 %117, i64* %16, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %12, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load i64, i64* %16, align 8
  %123 = call %struct.TYPE_21__* @CTX(i64 %122)
  store %struct.TYPE_21__* %123, %struct.TYPE_21__** %9, align 8
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %5, align 8
  store i32 1, i32* %18, align 4
  br label %291

128:                                              ; preds = %121
  br label %135

129:                                              ; preds = %115
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %131 = load i32, i32* %15, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %15, align 4
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %31, i64 %133
  store %struct.TYPE_22__* %130, %struct.TYPE_22__** %134, align 8
  br label %43

135:                                              ; preds = %128, %43
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %137 = load i64, i64* %12, align 8
  %138 = call i64 @Ppmd8_GetPtr(%struct.TYPE_23__* %136, i64 %137)
  %139 = inttoptr i64 %138 to i8**
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  store i8* %140, i8** %141, align 8
  %142 = load i64, i64* %12, align 8
  %143 = add nsw i64 %142, 1
  %144 = call i32 @SetSuccessor(%struct.TYPE_22__* %10, i64 %143)
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = icmp uge i8* %149, inttoptr (i64 64 to i8*)
  %151 = zext i1 %150 to i32
  %152 = mul nsw i32 16, %151
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = icmp uge i8* %154, inttoptr (i64 64 to i8*)
  %156 = zext i1 %155 to i32
  %157 = mul nsw i32 8, %156
  %158 = add nsw i32 %152, %157
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  store i8* %160, i8** %11, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %135
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %167 = call %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__* %166)
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store i32 %169, i32* %170, align 8
  br label %227

171:                                              ; preds = %135
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %173 = call %struct.TYPE_22__* @STATS(%struct.TYPE_21__* %172)
  store %struct.TYPE_22__* %173, %struct.TYPE_22__** %21, align 8
  br label %174

174:                                              ; preds = %182, %171
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %177, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %181
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 1
  store %struct.TYPE_22__* %184, %struct.TYPE_22__** %21, align 8
  br label %174

185:                                              ; preds = %174
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %19, align 4
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %193, %196
  %198 = load i32, i32* %19, align 4
  %199 = sext i32 %198 to i64
  %200 = sub nsw i64 %197, %199
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %20, align 4
  %202 = load i32, i32* %19, align 4
  %203 = mul nsw i32 2, %202
  %204 = load i32, i32* %20, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %185
  %207 = load i32, i32* %19, align 4
  %208 = mul nsw i32 5, %207
  %209 = load i32, i32* %20, align 4
  %210 = icmp sgt i32 %208, %209
  %211 = zext i1 %210 to i32
  br label %220

212:                                              ; preds = %185
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %20, align 4
  %215 = mul nsw i32 2, %214
  %216 = add nsw i32 %213, %215
  %217 = sub nsw i32 %216, 3
  %218 = load i32, i32* %20, align 4
  %219 = sdiv i32 %217, %218
  br label %220

220:                                              ; preds = %212, %206
  %221 = phi i32 [ %211, %206 ], [ %219, %212 ]
  %222 = add nsw i32 1, %221
  %223 = sext i32 %222 to i64
  %224 = inttoptr i64 %223 to i8*
  %225 = ptrtoint i8* %224 to i32
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  store i32 %225, i32* %226, align 8
  br label %227

227:                                              ; preds = %220, %165
  br label %228

228:                                              ; preds = %286, %227
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %231, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %228
  %237 = load i64, i64* @UNIT_SIZE, align 8
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %240, %237
  store i64 %241, i64* %239, align 8
  %242 = inttoptr i64 %241 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %242, %struct.TYPE_21__** %22, align 8
  br label %263

243:                                              ; preds = %228
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 2
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %252 = call i64 @RemoveNode(%struct.TYPE_23__* %251, i32 0)
  %253 = inttoptr i64 %252 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %253, %struct.TYPE_21__** %22, align 8
  br label %262

254:                                              ; preds = %243
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %256 = call i64 @AllocUnitsRare(%struct.TYPE_23__* %255, i32 0)
  %257 = inttoptr i64 %256 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %257, %struct.TYPE_21__** %22, align 8
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %259 = icmp ne %struct.TYPE_21__* %258, null
  br i1 %259, label %261, label %260

260:                                              ; preds = %254
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  store i32 1, i32* %18, align 4
  br label %291

261:                                              ; preds = %254
  br label %262

262:                                              ; preds = %261, %250
  br label %263

263:                                              ; preds = %262, %236
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  store i64 0, i64* %265, align 8
  %266 = load i8*, i8** %11, align 8
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 3
  store i8* %266, i8** %268, align 8
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %270 = call %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__* %269)
  %271 = bitcast %struct.TYPE_22__* %270 to i8*
  %272 = bitcast %struct.TYPE_22__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %271, i8* align 8 %272, i64 16, i1 false)
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %274 = call i64 @REF(%struct.TYPE_21__* %273)
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 2
  store i64 %274, i64* %276, align 8
  %277 = load i32, i32* %15, align 4
  %278 = add i32 %277, -1
  store i32 %278, i32* %15, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %31, i64 %279
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %280, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %283 = call i64 @REF(%struct.TYPE_21__* %282)
  %284 = call i32 @SetSuccessor(%struct.TYPE_22__* %281, i64 %283)
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %285, %struct.TYPE_21__** %9, align 8
  br label %286

286:                                              ; preds = %263
  %287 = load i32, i32* %15, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %228, label %289

289:                                              ; preds = %286
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %290, %struct.TYPE_21__** %5, align 8
  store i32 1, i32* %18, align 4
  br label %291

291:                                              ; preds = %289, %260, %126
  %292 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %292)
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %293
}

declare dso_local i64 @SUCCESSOR(%struct.TYPE_22__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @STATS(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @CTX(i64) #1

declare dso_local i64 @Ppmd8_GetPtr(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @SetSuccessor(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @RemoveNode(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @AllocUnitsRare(%struct.TYPE_23__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @REF(%struct.TYPE_21__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
