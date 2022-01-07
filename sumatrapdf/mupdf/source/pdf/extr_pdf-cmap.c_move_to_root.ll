; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_move_to_root.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_move_to_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @move_to_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_to_root(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EMPTY, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %517

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %516, %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EMPTY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %517

24:                                               ; preds = %13
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @EMPTY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %144

34:                                               ; preds = %24
  %35 = load i32, i32* @EMPTY, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %34
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @EMPTY, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %55
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %76, i32* %86, align 4
  br label %87

87:                                               ; preds = %75, %55
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %88, i32* %93, align 4
  br label %143

94:                                               ; preds = %34
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i32 %110, i32* %115, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = load i32, i32* %7, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @EMPTY, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %94
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store i32 %125, i32* %135, align 4
  br label %136

136:                                              ; preds = %124, %94
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i32 %137, i32* %142, align 4
  br label %143

143:                                              ; preds = %136, %87
  br label %517

144:                                              ; preds = %24
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = load i32, i32* %4, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @EMPTY, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %194

160:                                              ; preds = %144
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = load i32, i32* %6, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %5, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %160
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = load i32, i32* %6, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  store i32 %170, i32* %175, align 4
  br label %193

176:                                              ; preds = %160
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %178 = load i32, i32* %6, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp eq i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* %4, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %189 = load i32, i32* %6, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  store i32 %187, i32* %192, align 4
  br label %193

193:                                              ; preds = %176, %169
  br label %194

194:                                              ; preds = %193, %144
  %195 = load i32, i32* %4, align 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %197 = load i32, i32* %7, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  store i32 %195, i32* %200, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %202 = load i32, i32* %7, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %4, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %357

209:                                              ; preds = %194
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %211 = load i32, i32* %4, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %217 = load i32, i32* %7, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  store i32 %215, i32* %220, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %222 = load i32, i32* %7, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @EMPTY, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %209
  %230 = load i32, i32* %7, align 4
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %233 = load i32, i32* %7, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  store i32 %230, i32* %240, align 4
  br label %241

241:                                              ; preds = %229, %209
  %242 = load i32, i32* %7, align 4
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %244 = load i32, i32* %4, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 2
  store i32 %242, i32* %247, align 4
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %249 = load i32, i32* %5, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %7, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %301

256:                                              ; preds = %241
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %259 = load i32, i32* %5, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  store i32 %257, i32* %262, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %264 = load i32, i32* %7, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %270 = load i32, i32* %5, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 1
  store i32 %268, i32* %273, align 4
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %275 = load i32, i32* %5, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @EMPTY, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %256
  %283 = load i32, i32* %5, align 4
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %286 = load i32, i32* %5, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  store i32 %283, i32* %293, align 4
  br label %294

294:                                              ; preds = %282, %256
  %295 = load i32, i32* %5, align 4
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %297 = load i32, i32* %7, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 2
  store i32 %295, i32* %300, align 4
  br label %356

301:                                              ; preds = %241
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %303 = load i32, i32* %5, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %7, align 4
  %309 = icmp eq i32 %307, %308
  %310 = zext i1 %309 to i32
  %311 = call i32 @assert(i32 %310)
  %312 = load i32, i32* %4, align 4
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %314 = load i32, i32* %5, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  store i32 %312, i32* %317, align 4
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %319 = load i32, i32* %4, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %325 = load i32, i32* %5, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 2
  store i32 %323, i32* %328, align 4
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %330 = load i32, i32* %5, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @EMPTY, align 4
  %336 = icmp ne i32 %334, %335
  br i1 %336, label %337, label %349

337:                                              ; preds = %301
  %338 = load i32, i32* %5, align 4
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %341 = load i32, i32* %5, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 0
  store i32 %338, i32* %348, align 4
  br label %349

349:                                              ; preds = %337, %301
  %350 = load i32, i32* %5, align 4
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %352 = load i32, i32* %4, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 1
  store i32 %350, i32* %355, align 4
  br label %356

356:                                              ; preds = %349, %294
  br label %515

357:                                              ; preds = %194
  %358 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %359 = load i32, i32* %7, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %4, align 4
  %365 = icmp eq i32 %363, %364
  %366 = zext i1 %365 to i32
  %367 = call i32 @assert(i32 %366)
  %368 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %369 = load i32, i32* %4, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %375 = load i32, i32* %7, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 2
  store i32 %373, i32* %378, align 4
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %380 = load i32, i32* %7, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @EMPTY, align 4
  %386 = icmp ne i32 %384, %385
  br i1 %386, label %387, label %399

387:                                              ; preds = %357
  %388 = load i32, i32* %7, align 4
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %390 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %391 = load i32, i32* %7, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 0
  store i32 %388, i32* %398, align 4
  br label %399

399:                                              ; preds = %387, %357
  %400 = load i32, i32* %7, align 4
  %401 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %402 = load i32, i32* %4, align 4
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 1
  store i32 %400, i32* %405, align 4
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %407 = load i32, i32* %5, align 4
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %7, align 4
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %414, label %459

414:                                              ; preds = %399
  %415 = load i32, i32* %4, align 4
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %417 = load i32, i32* %5, align 4
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 0
  store i32 %415, i32* %420, align 4
  %421 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %422 = load i32, i32* %4, align 4
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %428 = load i32, i32* %5, align 4
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 1
  store i32 %426, i32* %431, align 4
  %432 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %433 = load i32, i32* %5, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @EMPTY, align 4
  %439 = icmp ne i32 %437, %438
  br i1 %439, label %440, label %452

440:                                              ; preds = %414
  %441 = load i32, i32* %5, align 4
  %442 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %444 = load i32, i32* %5, align 4
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %442, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 0
  store i32 %441, i32* %451, align 4
  br label %452

452:                                              ; preds = %440, %414
  %453 = load i32, i32* %5, align 4
  %454 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %455 = load i32, i32* %4, align 4
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %454, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 2
  store i32 %453, i32* %458, align 4
  br label %514

459:                                              ; preds = %399
  %460 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %461 = load i32, i32* %5, align 4
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %460, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* %7, align 4
  %467 = icmp eq i32 %465, %466
  %468 = zext i1 %467 to i32
  %469 = call i32 @assert(i32 %468)
  %470 = load i32, i32* %7, align 4
  %471 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %472 = load i32, i32* %5, align 4
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 0
  store i32 %470, i32* %475, align 4
  %476 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %477 = load i32, i32* %7, align 4
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %483 = load i32, i32* %5, align 4
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 2
  store i32 %481, i32* %486, align 4
  %487 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %488 = load i32, i32* %5, align 4
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @EMPTY, align 4
  %494 = icmp ne i32 %492, %493
  br i1 %494, label %495, label %507

495:                                              ; preds = %459
  %496 = load i32, i32* %5, align 4
  %497 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %498 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %499 = load i32, i32* %5, align 4
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %497, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i32 0, i32 0
  store i32 %496, i32* %506, align 4
  br label %507

507:                                              ; preds = %495, %459
  %508 = load i32, i32* %5, align 4
  %509 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %510 = load i32, i32* %7, align 4
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %509, i64 %511
  %513 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %512, i32 0, i32 1
  store i32 %508, i32* %513, align 4
  br label %514

514:                                              ; preds = %507, %452
  br label %515

515:                                              ; preds = %514, %356
  br label %516

516:                                              ; preds = %515
  br i1 true, label %13, label %517

517:                                              ; preds = %11, %516, %143, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
