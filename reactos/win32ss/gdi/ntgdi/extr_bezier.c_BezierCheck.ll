; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_bezier.c_BezierCheck.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/ntgdi/extr_bezier.c_BezierCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BEZIERPIXEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @BezierCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BezierCheck(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %11, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %20, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @abs(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @abs(i32 %28)
  %30 = icmp sle i64 %27, %29
  br i1 %30, label %31, label %170

31:                                               ; preds = %2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %309

53:                                               ; preds = %41
  br label %67

54:                                               ; preds = %31
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %58, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %309

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %53
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %71, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %67
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %3, align 4
  br label %309

89:                                               ; preds = %77
  br label %103

90:                                               ; preds = %67
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 3
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %94, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %3, align 4
  br label %309

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %89
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @BEZIERSHIFTDOWN(i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %3, align 4
  br label %309

110:                                              ; preds = %103
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %114, %118
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sdiv i32 %120, %121
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %126, %130
  %132 = call i32 @BEZIERSHIFTDOWN(i32 %131)
  %133 = mul nsw i32 %122, %132
  %134 = sub nsw i32 %119, %133
  %135 = call i64 @abs(i32 %134)
  %136 = load i64, i64* @BEZIERPIXEL, align 8
  %137 = icmp sgt i64 %135, %136
  br i1 %137, label %166, label %138

138:                                              ; preds = %110
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %142, %146
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %6, align 4
  %150 = sdiv i32 %148, %149
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 2
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %154, %158
  %160 = call i32 @BEZIERSHIFTDOWN(i32 %159)
  %161 = mul nsw i32 %150, %160
  %162 = sub nsw i32 %147, %161
  %163 = call i64 @abs(i32 %162)
  %164 = load i64, i64* @BEZIERPIXEL, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %138, %110
  %167 = load i32, i32* @FALSE, align 4
  store i32 %167, i32* %3, align 4
  br label %309

168:                                              ; preds = %138
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %3, align 4
  br label %309

170:                                              ; preds = %2
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %174, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %170
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 1
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i64 3
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %184, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %180
  %191 = load i32, i32* @FALSE, align 4
  store i32 %191, i32* %3, align 4
  br label %309

192:                                              ; preds = %180
  br label %206

193:                                              ; preds = %170
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i64 1
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 3
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp sgt i32 %197, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %193
  %204 = load i32, i32* @FALSE, align 4
  store i32 %204, i32* %3, align 4
  br label %309

205:                                              ; preds = %193
  br label %206

206:                                              ; preds = %205, %192
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i64 2
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %210, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %206
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i64 2
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 3
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %220, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %216
  %227 = load i32, i32* @FALSE, align 4
  store i32 %227, i32* %3, align 4
  br label %309

228:                                              ; preds = %216
  br label %242

229:                                              ; preds = %206
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i64 2
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i64 3
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp sgt i32 %233, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %229
  %240 = load i32, i32* @FALSE, align 4
  store i32 %240, i32* %3, align 4
  br label %309

241:                                              ; preds = %229
  br label %242

242:                                              ; preds = %241, %228
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @BEZIERSHIFTDOWN(i32 %243)
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %242
  %248 = load i32, i32* @TRUE, align 4
  store i32 %248, i32* %3, align 4
  br label %309

249:                                              ; preds = %242
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i64 1
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i64 0
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %253, %257
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %7, align 4
  %261 = sdiv i32 %259, %260
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i64 1
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %265, %269
  %271 = call i32 @BEZIERSHIFTDOWN(i32 %270)
  %272 = mul nsw i32 %261, %271
  %273 = sub nsw i32 %258, %272
  %274 = call i64 @abs(i32 %273)
  %275 = load i64, i64* @BEZIERPIXEL, align 8
  %276 = icmp sgt i64 %274, %275
  br i1 %276, label %305, label %277

277:                                              ; preds = %249
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i64 2
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %281, %285
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* %7, align 4
  %289 = sdiv i32 %287, %288
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i64 2
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i64 0
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 %293, %297
  %299 = call i32 @BEZIERSHIFTDOWN(i32 %298)
  %300 = mul nsw i32 %289, %299
  %301 = sub nsw i32 %286, %300
  %302 = call i64 @abs(i32 %301)
  %303 = load i64, i64* @BEZIERPIXEL, align 8
  %304 = icmp sgt i64 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %277, %249
  %306 = load i32, i32* @FALSE, align 4
  store i32 %306, i32* %3, align 4
  br label %309

307:                                              ; preds = %277
  %308 = load i32, i32* @TRUE, align 4
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %307, %305, %247, %239, %226, %203, %190, %168, %166, %108, %100, %87, %64, %51
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @BEZIERSHIFTDOWN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
