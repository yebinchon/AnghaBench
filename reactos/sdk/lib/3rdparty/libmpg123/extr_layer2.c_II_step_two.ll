; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer2.c_II_step_two.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer2.c_II_step_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32**, %struct.al_table* }
%struct.al_table = type { i32, i32 }

@SBLIMIT = common dso_local global i32 0, align 4
@grp_3tab = common dso_local global i32* null, align 8
@grp_5tab = common dso_local global i32* null, align 8
@grp_9tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_4__*, i32)* @II_step_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @II_step_two(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.al_table*, align 8
  %19 = alloca %struct.al_table*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [10 x i32*], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [10 x i32*], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store i32 %4, i32* %10, align 4
  %34 = load i32, i32* @SBLIMIT, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %15, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %16, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %17, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load %struct.al_table*, %struct.al_table** %46, align 8
  store %struct.al_table* %47, %struct.al_table** %19, align 8
  %48 = load i32*, i32** %6, align 8
  store i32* %48, i32** %20, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %306, %5
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %314

53:                                               ; preds = %49
  %54 = load %struct.al_table*, %struct.al_table** %19, align 8
  %55 = getelementptr inbounds %struct.al_table, %struct.al_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %22, align 4
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %302, %53
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %305

61:                                               ; preds = %57
  %62 = load i32*, i32** %20, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %20, align 8
  %64 = load i32, i32* %62, align 4
  store i32 %64, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %266

66:                                               ; preds = %61
  %67 = load %struct.al_table*, %struct.al_table** %19, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.al_table, %struct.al_table* %67, i64 %69
  store %struct.al_table* %70, %struct.al_table** %18, align 8
  %71 = getelementptr inbounds %struct.al_table, %struct.al_table* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load %struct.al_table*, %struct.al_table** %18, align 8
  %74 = getelementptr inbounds %struct.al_table, %struct.al_table* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %21, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %153

77:                                               ; preds = %66
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %23, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i64 @getbits(%struct.TYPE_4__* %93, i32 %94)
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %21, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @DOUBLE_TO_REAL_15(i32 %98)
  %100 = load i32, i32* %23, align 4
  %101 = call i32 @REAL_MUL_SCALE_LAYER12(i32 %99, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = mul nuw i64 4, %35
  %106 = mul nsw i64 %104, %105
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = mul nsw i64 0, %35
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %101, i32* %112, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i64 @getbits(%struct.TYPE_4__* %113, i32 %114)
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %116, %117
  %119 = call i32 @DOUBLE_TO_REAL_15(i32 %118)
  %120 = load i32, i32* %23, align 4
  %121 = call i32 @REAL_MUL_SCALE_LAYER12(i32 %119, i32 %120)
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = mul nuw i64 4, %35
  %126 = mul nsw i64 %124, %125
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = mul nsw i64 1, %35
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %121, i32* %132, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i64 @getbits(%struct.TYPE_4__* %133, i32 %134)
  %136 = trunc i64 %135 to i32
  %137 = load i32, i32* %21, align 4
  %138 = add nsw i32 %136, %137
  %139 = call i32 @DOUBLE_TO_REAL_15(i32 %138)
  %140 = load i32, i32* %23, align 4
  %141 = call i32 @REAL_MUL_SCALE_LAYER12(i32 %139, i32 %140)
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = mul nuw i64 4, %35
  %146 = mul nsw i64 %144, %145
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = mul nsw i64 2, %35
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %141, i32* %152, align 4
  br label %263

153:                                              ; preds = %66
  %154 = getelementptr inbounds [10 x i32*], [10 x i32*]* %24, i64 0, i64 0
  store i32* null, i32** %154, align 8
  %155 = getelementptr inbounds i32*, i32** %154, i64 1
  store i32* null, i32** %155, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i64 1
  store i32* null, i32** %156, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  %158 = load i32*, i32** @grp_3tab, align 8
  store i32* %158, i32** %157, align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 1
  store i32* null, i32** %159, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 1
  %161 = load i32*, i32** @grp_5tab, align 8
  store i32* %161, i32** %160, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 1
  store i32* null, i32** %162, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 1
  store i32* null, i32** %163, align 8
  %164 = getelementptr inbounds i32*, i32** %163, i64 1
  store i32* null, i32** %164, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 1
  %166 = load i32*, i32** @grp_9tab, align 8
  store i32* %166, i32** %165, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %27, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i64 @getbits(%struct.TYPE_4__* %172, i32 %173)
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %25, align 4
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [10 x i32*], [10 x i32*]* %24, i64 0, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %25, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %25, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %25, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32* %188, i32** %26, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 4
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32*, i32** %26, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %26, align 8
  %194 = load i32, i32* %192, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32*, i32** %191, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %27, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @REAL_SCALE_LAYER12(i32 %201)
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = mul nuw i64 4, %35
  %207 = mul nsw i64 %205, %206
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = mul nsw i64 0, %35
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %202, i32* %213, align 4
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 4
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32*, i32** %26, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** %26, align 8
  %219 = load i32, i32* %217, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %216, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %27, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @REAL_SCALE_LAYER12(i32 %226)
  %228 = load i32*, i32** %7, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = mul nuw i64 4, %35
  %232 = mul nsw i64 %230, %231
  %233 = getelementptr inbounds i32, i32* %228, i64 %232
  %234 = mul nsw i64 1, %35
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %227, i32* %238, align 4
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 4
  %241 = load i32**, i32*** %240, align 8
  %242 = load i32*, i32** %26, align 8
  %243 = load i32, i32* %242, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i32*, i32** %241, i64 %244
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %27, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @REAL_SCALE_LAYER12(i32 %250)
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = mul nuw i64 4, %35
  %256 = mul nsw i64 %254, %255
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  %258 = mul nsw i64 2, %35
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %251, i32* %262, align 4
  br label %263

263:                                              ; preds = %153, %77
  %264 = load i32*, i32** %8, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  store i32* %265, i32** %8, align 8
  br label %301

266:                                              ; preds = %61
  %267 = call i32 @DOUBLE_TO_REAL(double 0.000000e+00)
  %268 = load i32*, i32** %7, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = mul nuw i64 4, %35
  %272 = mul nsw i64 %270, %271
  %273 = getelementptr inbounds i32, i32* %268, i64 %272
  %274 = mul nsw i64 2, %35
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %267, i32* %278, align 4
  %279 = load i32*, i32** %7, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = mul nuw i64 4, %35
  %283 = mul nsw i64 %281, %282
  %284 = getelementptr inbounds i32, i32* %279, i64 %283
  %285 = mul nsw i64 1, %35
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %267, i32* %289, align 4
  %290 = load i32*, i32** %7, align 8
  %291 = load i32, i32* %12, align 4
  %292 = sext i32 %291 to i64
  %293 = mul nuw i64 4, %35
  %294 = mul nsw i64 %292, %293
  %295 = getelementptr inbounds i32, i32* %290, i64 %294
  %296 = mul nsw i64 0, %35
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  %298 = load i32, i32* %11, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32 %267, i32* %300, align 4
  br label %301

301:                                              ; preds = %266, %263
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %12, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %12, align 4
  br label %57

305:                                              ; preds = %57
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %11, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* %22, align 4
  %310 = shl i32 1, %309
  %311 = load %struct.al_table*, %struct.al_table** %19, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds %struct.al_table, %struct.al_table* %311, i64 %312
  store %struct.al_table* %313, %struct.al_table** %19, align 8
  br label %49

314:                                              ; preds = %49
  %315 = load i32, i32* %17, align 4
  store i32 %315, i32* %11, align 4
  br label %316

316:                                              ; preds = %783, %314
  %317 = load i32, i32* %11, align 4
  %318 = load i32, i32* %16, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %791

320:                                              ; preds = %316
  %321 = load %struct.al_table*, %struct.al_table** %19, align 8
  %322 = getelementptr inbounds %struct.al_table, %struct.al_table* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  store i32 %323, i32* %22, align 4
  %324 = load i32*, i32** %20, align 8
  %325 = getelementptr inbounds i32, i32* %324, i32 1
  store i32* %325, i32** %20, align 8
  %326 = load i32*, i32** %20, align 8
  %327 = getelementptr inbounds i32, i32* %326, i32 1
  store i32* %327, i32** %20, align 8
  %328 = load i32, i32* %326, align 4
  store i32 %328, i32* %14, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %726

330:                                              ; preds = %320
  %331 = load %struct.al_table*, %struct.al_table** %19, align 8
  %332 = load i32, i32* %14, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.al_table, %struct.al_table* %331, i64 %333
  store %struct.al_table* %334, %struct.al_table** %18, align 8
  %335 = getelementptr inbounds %struct.al_table, %struct.al_table* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %13, align 4
  %337 = load %struct.al_table*, %struct.al_table** %18, align 8
  %338 = getelementptr inbounds %struct.al_table, %struct.al_table* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %21, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %547

341:                                              ; preds = %330
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 4
  %344 = load i32**, i32*** %343, align 8
  %345 = load i32, i32* %13, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32*, i32** %344, i64 %346
  %348 = load i32*, i32** %347, align 8
  %349 = load i32*, i32** %8, align 8
  %350 = load i32, i32* %10, align 4
  %351 = add nsw i32 %350, 3
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %348, i64 %355
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* %28, align 4
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %359 = load i32, i32* %13, align 4
  %360 = call i64 @getbits(%struct.TYPE_4__* %358, i32 %359)
  %361 = trunc i64 %360 to i32
  %362 = load i32, i32* %21, align 4
  %363 = add nsw i32 %361, %362
  %364 = call i32 @DOUBLE_TO_REAL_15(i32 %363)
  %365 = load i32*, i32** %7, align 8
  %366 = mul nuw i64 4, %35
  %367 = mul nsw i64 0, %366
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = mul nsw i64 0, %35
  %370 = getelementptr inbounds i32, i32* %368, i64 %369
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  store i32 %364, i32* %373, align 4
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %375 = load i32, i32* %13, align 4
  %376 = call i64 @getbits(%struct.TYPE_4__* %374, i32 %375)
  %377 = trunc i64 %376 to i32
  %378 = load i32, i32* %21, align 4
  %379 = add nsw i32 %377, %378
  %380 = call i32 @DOUBLE_TO_REAL_15(i32 %379)
  %381 = load i32*, i32** %7, align 8
  %382 = mul nuw i64 4, %35
  %383 = mul nsw i64 0, %382
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = mul nsw i64 1, %35
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  %387 = load i32, i32* %11, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  store i32 %380, i32* %389, align 4
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %391 = load i32, i32* %13, align 4
  %392 = call i64 @getbits(%struct.TYPE_4__* %390, i32 %391)
  %393 = trunc i64 %392 to i32
  %394 = load i32, i32* %21, align 4
  %395 = add nsw i32 %393, %394
  %396 = call i32 @DOUBLE_TO_REAL_15(i32 %395)
  %397 = load i32*, i32** %7, align 8
  %398 = mul nuw i64 4, %35
  %399 = mul nsw i64 0, %398
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = mul nsw i64 2, %35
  %402 = getelementptr inbounds i32, i32* %400, i64 %401
  %403 = load i32, i32* %11, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  store i32 %396, i32* %405, align 4
  %406 = load i32*, i32** %7, align 8
  %407 = mul nuw i64 4, %35
  %408 = mul nsw i64 0, %407
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  %410 = mul nsw i64 0, %35
  %411 = getelementptr inbounds i32, i32* %409, i64 %410
  %412 = load i32, i32* %11, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* %28, align 4
  %417 = call i32 @REAL_MUL_SCALE_LAYER12(i32 %415, i32 %416)
  %418 = load i32*, i32** %7, align 8
  %419 = mul nuw i64 4, %35
  %420 = mul nsw i64 1, %419
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = mul nsw i64 0, %35
  %423 = getelementptr inbounds i32, i32* %421, i64 %422
  %424 = load i32, i32* %11, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  store i32 %417, i32* %426, align 4
  %427 = load i32*, i32** %7, align 8
  %428 = mul nuw i64 4, %35
  %429 = mul nsw i64 0, %428
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = mul nsw i64 1, %35
  %432 = getelementptr inbounds i32, i32* %430, i64 %431
  %433 = load i32, i32* %11, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %28, align 4
  %438 = call i32 @REAL_MUL_SCALE_LAYER12(i32 %436, i32 %437)
  %439 = load i32*, i32** %7, align 8
  %440 = mul nuw i64 4, %35
  %441 = mul nsw i64 1, %440
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = mul nsw i64 1, %35
  %444 = getelementptr inbounds i32, i32* %442, i64 %443
  %445 = load i32, i32* %11, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  store i32 %438, i32* %447, align 4
  %448 = load i32*, i32** %7, align 8
  %449 = mul nuw i64 4, %35
  %450 = mul nsw i64 0, %449
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = mul nsw i64 2, %35
  %453 = getelementptr inbounds i32, i32* %451, i64 %452
  %454 = load i32, i32* %11, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %453, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* %28, align 4
  %459 = call i32 @REAL_MUL_SCALE_LAYER12(i32 %457, i32 %458)
  %460 = load i32*, i32** %7, align 8
  %461 = mul nuw i64 4, %35
  %462 = mul nsw i64 1, %461
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  %464 = mul nsw i64 2, %35
  %465 = getelementptr inbounds i32, i32* %463, i64 %464
  %466 = load i32, i32* %11, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  store i32 %459, i32* %468, align 4
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 4
  %471 = load i32**, i32*** %470, align 8
  %472 = load i32, i32* %13, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32*, i32** %471, i64 %473
  %475 = load i32*, i32** %474, align 8
  %476 = load i32*, i32** %8, align 8
  %477 = load i32, i32* %10, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %475, i64 %481
  %483 = load i32, i32* %482, align 4
  store i32 %483, i32* %28, align 4
  %484 = load i32*, i32** %7, align 8
  %485 = mul nuw i64 4, %35
  %486 = mul nsw i64 0, %485
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = mul nsw i64 0, %35
  %489 = getelementptr inbounds i32, i32* %487, i64 %488
  %490 = load i32, i32* %11, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %489, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* %28, align 4
  %495 = call i32 @REAL_MUL_SCALE_LAYER12(i32 %493, i32 %494)
  %496 = load i32*, i32** %7, align 8
  %497 = mul nuw i64 4, %35
  %498 = mul nsw i64 0, %497
  %499 = getelementptr inbounds i32, i32* %496, i64 %498
  %500 = mul nsw i64 0, %35
  %501 = getelementptr inbounds i32, i32* %499, i64 %500
  %502 = load i32, i32* %11, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, i32* %501, i64 %503
  store i32 %495, i32* %504, align 4
  %505 = load i32*, i32** %7, align 8
  %506 = mul nuw i64 4, %35
  %507 = mul nsw i64 0, %506
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = mul nsw i64 1, %35
  %510 = getelementptr inbounds i32, i32* %508, i64 %509
  %511 = load i32, i32* %11, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %510, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* %28, align 4
  %516 = call i32 @REAL_MUL_SCALE_LAYER12(i32 %514, i32 %515)
  %517 = load i32*, i32** %7, align 8
  %518 = mul nuw i64 4, %35
  %519 = mul nsw i64 0, %518
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = mul nsw i64 1, %35
  %522 = getelementptr inbounds i32, i32* %520, i64 %521
  %523 = load i32, i32* %11, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  store i32 %516, i32* %525, align 4
  %526 = load i32*, i32** %7, align 8
  %527 = mul nuw i64 4, %35
  %528 = mul nsw i64 0, %527
  %529 = getelementptr inbounds i32, i32* %526, i64 %528
  %530 = mul nsw i64 2, %35
  %531 = getelementptr inbounds i32, i32* %529, i64 %530
  %532 = load i32, i32* %11, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = load i32, i32* %28, align 4
  %537 = call i32 @REAL_MUL_SCALE_LAYER12(i32 %535, i32 %536)
  %538 = load i32*, i32** %7, align 8
  %539 = mul nuw i64 4, %35
  %540 = mul nsw i64 0, %539
  %541 = getelementptr inbounds i32, i32* %538, i64 %540
  %542 = mul nsw i64 2, %35
  %543 = getelementptr inbounds i32, i32* %541, i64 %542
  %544 = load i32, i32* %11, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %543, i64 %545
  store i32 %537, i32* %546, align 4
  br label %723

547:                                              ; preds = %330
  %548 = getelementptr inbounds [10 x i32*], [10 x i32*]* %29, i64 0, i64 0
  store i32* null, i32** %548, align 8
  %549 = getelementptr inbounds i32*, i32** %548, i64 1
  store i32* null, i32** %549, align 8
  %550 = getelementptr inbounds i32*, i32** %549, i64 1
  store i32* null, i32** %550, align 8
  %551 = getelementptr inbounds i32*, i32** %550, i64 1
  %552 = load i32*, i32** @grp_3tab, align 8
  store i32* %552, i32** %551, align 8
  %553 = getelementptr inbounds i32*, i32** %551, i64 1
  store i32* null, i32** %553, align 8
  %554 = getelementptr inbounds i32*, i32** %553, i64 1
  %555 = load i32*, i32** @grp_5tab, align 8
  store i32* %555, i32** %554, align 8
  %556 = getelementptr inbounds i32*, i32** %554, i64 1
  store i32* null, i32** %556, align 8
  %557 = getelementptr inbounds i32*, i32** %556, i64 1
  store i32* null, i32** %557, align 8
  %558 = getelementptr inbounds i32*, i32** %557, i64 1
  store i32* null, i32** %558, align 8
  %559 = getelementptr inbounds i32*, i32** %558, i64 1
  %560 = load i32*, i32** @grp_9tab, align 8
  store i32* %560, i32** %559, align 8
  %561 = load i32*, i32** %8, align 8
  %562 = load i32, i32* %10, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %561, i64 %563
  %565 = load i32, i32* %564, align 4
  store i32 %565, i32* %32, align 4
  %566 = load i32*, i32** %8, align 8
  %567 = load i32, i32* %10, align 4
  %568 = add nsw i32 %567, 3
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %566, i64 %569
  %571 = load i32, i32* %570, align 4
  store i32 %571, i32* %33, align 4
  %572 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %573 = load i32, i32* %13, align 4
  %574 = call i64 @getbits(%struct.TYPE_4__* %572, i32 %573)
  %575 = trunc i64 %574 to i32
  store i32 %575, i32* %30, align 4
  %576 = load i32, i32* %21, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [10 x i32*], [10 x i32*]* %29, i64 0, i64 %577
  %579 = load i32*, i32** %578, align 8
  %580 = load i32, i32* %30, align 4
  %581 = zext i32 %580 to i64
  %582 = getelementptr inbounds i32, i32* %579, i64 %581
  %583 = load i32, i32* %30, align 4
  %584 = zext i32 %583 to i64
  %585 = getelementptr inbounds i32, i32* %582, i64 %584
  %586 = load i32, i32* %30, align 4
  %587 = zext i32 %586 to i64
  %588 = getelementptr inbounds i32, i32* %585, i64 %587
  store i32* %588, i32** %31, align 8
  %589 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %590 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %589, i32 0, i32 4
  %591 = load i32**, i32*** %590, align 8
  %592 = load i32*, i32** %31, align 8
  %593 = load i32, i32* %592, align 4
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds i32*, i32** %591, i64 %594
  %596 = load i32*, i32** %595, align 8
  %597 = load i32, i32* %32, align 4
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds i32, i32* %596, i64 %598
  %600 = load i32, i32* %599, align 4
  %601 = call i32 @REAL_SCALE_LAYER12(i32 %600)
  %602 = load i32*, i32** %7, align 8
  %603 = mul nuw i64 4, %35
  %604 = mul nsw i64 0, %603
  %605 = getelementptr inbounds i32, i32* %602, i64 %604
  %606 = mul nsw i64 0, %35
  %607 = getelementptr inbounds i32, i32* %605, i64 %606
  %608 = load i32, i32* %11, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %607, i64 %609
  store i32 %601, i32* %610, align 4
  %611 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %612 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %611, i32 0, i32 4
  %613 = load i32**, i32*** %612, align 8
  %614 = load i32*, i32** %31, align 8
  %615 = getelementptr inbounds i32, i32* %614, i32 1
  store i32* %615, i32** %31, align 8
  %616 = load i32, i32* %614, align 4
  %617 = zext i32 %616 to i64
  %618 = getelementptr inbounds i32*, i32** %613, i64 %617
  %619 = load i32*, i32** %618, align 8
  %620 = load i32, i32* %33, align 4
  %621 = zext i32 %620 to i64
  %622 = getelementptr inbounds i32, i32* %619, i64 %621
  %623 = load i32, i32* %622, align 4
  %624 = call i32 @REAL_SCALE_LAYER12(i32 %623)
  %625 = load i32*, i32** %7, align 8
  %626 = mul nuw i64 4, %35
  %627 = mul nsw i64 1, %626
  %628 = getelementptr inbounds i32, i32* %625, i64 %627
  %629 = mul nsw i64 0, %35
  %630 = getelementptr inbounds i32, i32* %628, i64 %629
  %631 = load i32, i32* %11, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32, i32* %630, i64 %632
  store i32 %624, i32* %633, align 4
  %634 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %635 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %634, i32 0, i32 4
  %636 = load i32**, i32*** %635, align 8
  %637 = load i32*, i32** %31, align 8
  %638 = load i32, i32* %637, align 4
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds i32*, i32** %636, i64 %639
  %641 = load i32*, i32** %640, align 8
  %642 = load i32, i32* %32, align 4
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds i32, i32* %641, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = call i32 @REAL_SCALE_LAYER12(i32 %645)
  %647 = load i32*, i32** %7, align 8
  %648 = mul nuw i64 4, %35
  %649 = mul nsw i64 0, %648
  %650 = getelementptr inbounds i32, i32* %647, i64 %649
  %651 = mul nsw i64 1, %35
  %652 = getelementptr inbounds i32, i32* %650, i64 %651
  %653 = load i32, i32* %11, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %652, i64 %654
  store i32 %646, i32* %655, align 4
  %656 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %657 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %656, i32 0, i32 4
  %658 = load i32**, i32*** %657, align 8
  %659 = load i32*, i32** %31, align 8
  %660 = getelementptr inbounds i32, i32* %659, i32 1
  store i32* %660, i32** %31, align 8
  %661 = load i32, i32* %659, align 4
  %662 = zext i32 %661 to i64
  %663 = getelementptr inbounds i32*, i32** %658, i64 %662
  %664 = load i32*, i32** %663, align 8
  %665 = load i32, i32* %33, align 4
  %666 = zext i32 %665 to i64
  %667 = getelementptr inbounds i32, i32* %664, i64 %666
  %668 = load i32, i32* %667, align 4
  %669 = call i32 @REAL_SCALE_LAYER12(i32 %668)
  %670 = load i32*, i32** %7, align 8
  %671 = mul nuw i64 4, %35
  %672 = mul nsw i64 1, %671
  %673 = getelementptr inbounds i32, i32* %670, i64 %672
  %674 = mul nsw i64 1, %35
  %675 = getelementptr inbounds i32, i32* %673, i64 %674
  %676 = load i32, i32* %11, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i32, i32* %675, i64 %677
  store i32 %669, i32* %678, align 4
  %679 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %680 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %679, i32 0, i32 4
  %681 = load i32**, i32*** %680, align 8
  %682 = load i32*, i32** %31, align 8
  %683 = load i32, i32* %682, align 4
  %684 = zext i32 %683 to i64
  %685 = getelementptr inbounds i32*, i32** %681, i64 %684
  %686 = load i32*, i32** %685, align 8
  %687 = load i32, i32* %32, align 4
  %688 = zext i32 %687 to i64
  %689 = getelementptr inbounds i32, i32* %686, i64 %688
  %690 = load i32, i32* %689, align 4
  %691 = call i32 @REAL_SCALE_LAYER12(i32 %690)
  %692 = load i32*, i32** %7, align 8
  %693 = mul nuw i64 4, %35
  %694 = mul nsw i64 0, %693
  %695 = getelementptr inbounds i32, i32* %692, i64 %694
  %696 = mul nsw i64 2, %35
  %697 = getelementptr inbounds i32, i32* %695, i64 %696
  %698 = load i32, i32* %11, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32, i32* %697, i64 %699
  store i32 %691, i32* %700, align 4
  %701 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %702 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %701, i32 0, i32 4
  %703 = load i32**, i32*** %702, align 8
  %704 = load i32*, i32** %31, align 8
  %705 = load i32, i32* %704, align 4
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds i32*, i32** %703, i64 %706
  %708 = load i32*, i32** %707, align 8
  %709 = load i32, i32* %33, align 4
  %710 = zext i32 %709 to i64
  %711 = getelementptr inbounds i32, i32* %708, i64 %710
  %712 = load i32, i32* %711, align 4
  %713 = call i32 @REAL_SCALE_LAYER12(i32 %712)
  %714 = load i32*, i32** %7, align 8
  %715 = mul nuw i64 4, %35
  %716 = mul nsw i64 1, %715
  %717 = getelementptr inbounds i32, i32* %714, i64 %716
  %718 = mul nsw i64 2, %35
  %719 = getelementptr inbounds i32, i32* %717, i64 %718
  %720 = load i32, i32* %11, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds i32, i32* %719, i64 %721
  store i32 %713, i32* %722, align 4
  br label %723

723:                                              ; preds = %547, %341
  %724 = load i32*, i32** %8, align 8
  %725 = getelementptr inbounds i32, i32* %724, i64 6
  store i32* %725, i32** %8, align 8
  br label %782

726:                                              ; preds = %320
  %727 = call i32 @DOUBLE_TO_REAL(double 0.000000e+00)
  %728 = load i32*, i32** %7, align 8
  %729 = mul nuw i64 4, %35
  %730 = mul nsw i64 1, %729
  %731 = getelementptr inbounds i32, i32* %728, i64 %730
  %732 = mul nsw i64 2, %35
  %733 = getelementptr inbounds i32, i32* %731, i64 %732
  %734 = load i32, i32* %11, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %733, i64 %735
  store i32 %727, i32* %736, align 4
  %737 = load i32*, i32** %7, align 8
  %738 = mul nuw i64 4, %35
  %739 = mul nsw i64 1, %738
  %740 = getelementptr inbounds i32, i32* %737, i64 %739
  %741 = mul nsw i64 1, %35
  %742 = getelementptr inbounds i32, i32* %740, i64 %741
  %743 = load i32, i32* %11, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds i32, i32* %742, i64 %744
  store i32 %727, i32* %745, align 4
  %746 = load i32*, i32** %7, align 8
  %747 = mul nuw i64 4, %35
  %748 = mul nsw i64 1, %747
  %749 = getelementptr inbounds i32, i32* %746, i64 %748
  %750 = mul nsw i64 0, %35
  %751 = getelementptr inbounds i32, i32* %749, i64 %750
  %752 = load i32, i32* %11, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i32, i32* %751, i64 %753
  store i32 %727, i32* %754, align 4
  %755 = load i32*, i32** %7, align 8
  %756 = mul nuw i64 4, %35
  %757 = mul nsw i64 0, %756
  %758 = getelementptr inbounds i32, i32* %755, i64 %757
  %759 = mul nsw i64 2, %35
  %760 = getelementptr inbounds i32, i32* %758, i64 %759
  %761 = load i32, i32* %11, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i32, i32* %760, i64 %762
  store i32 %727, i32* %763, align 4
  %764 = load i32*, i32** %7, align 8
  %765 = mul nuw i64 4, %35
  %766 = mul nsw i64 0, %765
  %767 = getelementptr inbounds i32, i32* %764, i64 %766
  %768 = mul nsw i64 1, %35
  %769 = getelementptr inbounds i32, i32* %767, i64 %768
  %770 = load i32, i32* %11, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i32, i32* %769, i64 %771
  store i32 %727, i32* %772, align 4
  %773 = load i32*, i32** %7, align 8
  %774 = mul nuw i64 4, %35
  %775 = mul nsw i64 0, %774
  %776 = getelementptr inbounds i32, i32* %773, i64 %775
  %777 = mul nsw i64 0, %35
  %778 = getelementptr inbounds i32, i32* %776, i64 %777
  %779 = load i32, i32* %11, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds i32, i32* %778, i64 %780
  store i32 %727, i32* %781, align 4
  br label %782

782:                                              ; preds = %726, %723
  br label %783

783:                                              ; preds = %782
  %784 = load i32, i32* %11, align 4
  %785 = add nsw i32 %784, 1
  store i32 %785, i32* %11, align 4
  %786 = load i32, i32* %22, align 4
  %787 = shl i32 1, %786
  %788 = load %struct.al_table*, %struct.al_table** %19, align 8
  %789 = sext i32 %787 to i64
  %790 = getelementptr inbounds %struct.al_table, %struct.al_table* %788, i64 %789
  store %struct.al_table* %790, %struct.al_table** %19, align 8
  br label %316

791:                                              ; preds = %316
  %792 = load i32, i32* %16, align 4
  %793 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %794 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %793, i32 0, i32 3
  %795 = load i32, i32* %794, align 4
  %796 = icmp sgt i32 %792, %795
  br i1 %796, label %797, label %801

797:                                              ; preds = %791
  %798 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %799 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %798, i32 0, i32 3
  %800 = load i32, i32* %799, align 4
  store i32 %800, i32* %16, align 4
  br label %801

801:                                              ; preds = %797, %791
  %802 = load i32, i32* %16, align 4
  store i32 %802, i32* %11, align 4
  br label %803

803:                                              ; preds = %851, %801
  %804 = load i32, i32* %11, align 4
  %805 = load i32, i32* @SBLIMIT, align 4
  %806 = icmp slt i32 %804, %805
  br i1 %806, label %807, label %854

807:                                              ; preds = %803
  store i32 0, i32* %12, align 4
  br label %808

808:                                              ; preds = %847, %807
  %809 = load i32, i32* %12, align 4
  %810 = load i32, i32* %15, align 4
  %811 = icmp slt i32 %809, %810
  br i1 %811, label %812, label %850

812:                                              ; preds = %808
  %813 = call i32 @DOUBLE_TO_REAL(double 0.000000e+00)
  %814 = load i32*, i32** %7, align 8
  %815 = load i32, i32* %12, align 4
  %816 = sext i32 %815 to i64
  %817 = mul nuw i64 4, %35
  %818 = mul nsw i64 %816, %817
  %819 = getelementptr inbounds i32, i32* %814, i64 %818
  %820 = mul nsw i64 2, %35
  %821 = getelementptr inbounds i32, i32* %819, i64 %820
  %822 = load i32, i32* %11, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds i32, i32* %821, i64 %823
  store i32 %813, i32* %824, align 4
  %825 = load i32*, i32** %7, align 8
  %826 = load i32, i32* %12, align 4
  %827 = sext i32 %826 to i64
  %828 = mul nuw i64 4, %35
  %829 = mul nsw i64 %827, %828
  %830 = getelementptr inbounds i32, i32* %825, i64 %829
  %831 = mul nsw i64 1, %35
  %832 = getelementptr inbounds i32, i32* %830, i64 %831
  %833 = load i32, i32* %11, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds i32, i32* %832, i64 %834
  store i32 %813, i32* %835, align 4
  %836 = load i32*, i32** %7, align 8
  %837 = load i32, i32* %12, align 4
  %838 = sext i32 %837 to i64
  %839 = mul nuw i64 4, %35
  %840 = mul nsw i64 %838, %839
  %841 = getelementptr inbounds i32, i32* %836, i64 %840
  %842 = mul nsw i64 0, %35
  %843 = getelementptr inbounds i32, i32* %841, i64 %842
  %844 = load i32, i32* %11, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds i32, i32* %843, i64 %845
  store i32 %813, i32* %846, align 4
  br label %847

847:                                              ; preds = %812
  %848 = load i32, i32* %12, align 4
  %849 = add nsw i32 %848, 1
  store i32 %849, i32* %12, align 4
  br label %808

850:                                              ; preds = %808
  br label %851

851:                                              ; preds = %850
  %852 = load i32, i32* %11, align 4
  %853 = add nsw i32 %852, 1
  store i32 %853, i32* %11, align 4
  br label %803

854:                                              ; preds = %803
  ret void
}

declare dso_local i32 @REAL_MUL_SCALE_LAYER12(i32, i32) #1

declare dso_local i32 @DOUBLE_TO_REAL_15(i32) #1

declare dso_local i64 @getbits(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @REAL_SCALE_LAYER12(i32) #1

declare dso_local i32 @DOUBLE_TO_REAL(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
