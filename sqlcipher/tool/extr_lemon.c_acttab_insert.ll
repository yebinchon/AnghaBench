; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_acttab_insert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_acttab_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.lookahead_action*, %struct.lookahead_action* }
%struct.lookahead_action = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acttab_insert(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %94

30:                                               ; preds = %2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = add nsw i32 %42, 20
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 9
  %48 = load %struct.lookahead_action*, %struct.lookahead_action** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 8, %52
  %54 = trunc i64 %53 to i32
  %55 = call i64 @realloc(%struct.lookahead_action* %48, i32 %54)
  %56 = inttoptr i64 %55 to %struct.lookahead_action*
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 9
  store %struct.lookahead_action* %56, %struct.lookahead_action** %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 9
  %61 = load %struct.lookahead_action*, %struct.lookahead_action** %60, align 8
  %62 = icmp eq %struct.lookahead_action* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %30
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #4
  unreachable

67:                                               ; preds = %30
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %90, %67
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 9
  %78 = load %struct.lookahead_action*, %struct.lookahead_action** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %78, i64 %80
  %82 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 9
  %85 = load %struct.lookahead_action*, %struct.lookahead_action** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %85, i64 %87
  %89 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %88, i32 0, i32 1
  store i32 -1, i32* %89, align 4
  br label %90

90:                                               ; preds = %75
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %69

93:                                               ; preds = %69
  br label %94

94:                                               ; preds = %93, %2
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  br label %102

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32 [ %100, %97 ], [ 0, %101 ]
  store i32 %103, i32* %9, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %270, %102
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %273

112:                                              ; preds = %108
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 9
  %115 = load %struct.lookahead_action*, %struct.lookahead_action** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %115, i64 %117
  %119 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %269

125:                                              ; preds = %112
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 9
  %128 = load %struct.lookahead_action*, %struct.lookahead_action** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %128, i64 %130
  %132 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %270

139:                                              ; preds = %125
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %209, %139
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %212

146:                                              ; preds = %140
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 8
  %149 = load %struct.lookahead_action*, %struct.lookahead_action** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %149, i64 %151
  %153 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %154, %157
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %158, %159
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %146
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp sge i32 %164, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %146
  br label %212

170:                                              ; preds = %163
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 8
  %173 = load %struct.lookahead_action*, %struct.lookahead_action** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %173, i64 %175
  %177 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 9
  %181 = load %struct.lookahead_action*, %struct.lookahead_action** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %181, i64 %183
  %185 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %178, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %170
  br label %212

189:                                              ; preds = %170
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 8
  %192 = load %struct.lookahead_action*, %struct.lookahead_action** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %192, i64 %194
  %196 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 9
  %200 = load %struct.lookahead_action*, %struct.lookahead_action** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %200, i64 %202
  %204 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %197, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %189
  br label %212

208:                                              ; preds = %189
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %140

212:                                              ; preds = %207, %188, %169, %140
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %270

219:                                              ; preds = %212
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %258, %219
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %261

226:                                              ; preds = %220
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 9
  %229 = load %struct.lookahead_action*, %struct.lookahead_action** %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %229, i64 %231
  %233 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %226
  br label %258

237:                                              ; preds = %226
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 9
  %240 = load %struct.lookahead_action*, %struct.lookahead_action** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %240, i64 %242
  %244 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %6, align 4
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %246, %249
  %251 = load i32, i32* %5, align 4
  %252 = sub nsw i32 %250, %251
  %253 = icmp eq i32 %245, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %237
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %254, %237
  br label %258

258:                                              ; preds = %257, %236
  %259 = load i32, i32* %6, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %6, align 4
  br label %220

261:                                              ; preds = %220
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %262, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  br label %273

268:                                              ; preds = %261
  br label %269

269:                                              ; preds = %268, %112
  br label %270

270:                                              ; preds = %269, %218, %138
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, -1
  store i32 %272, i32* %5, align 4
  br label %108

273:                                              ; preds = %267, %108
  %274 = load i32, i32* %5, align 4
  %275 = load i32, i32* %9, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %396

277:                                              ; preds = %273
  %278 = load i32, i32* %4, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  br label %285

284:                                              ; preds = %277
  br label %285

285:                                              ; preds = %284, %280
  %286 = phi i32 [ %283, %280 ], [ 0, %284 ]
  store i32 %286, i32* %5, align 4
  br label %287

287:                                              ; preds = %392, %285
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = sub nsw i32 %291, %294
  %296 = icmp slt i32 %288, %295
  br i1 %296, label %297, label %395

297:                                              ; preds = %287
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 9
  %300 = load %struct.lookahead_action*, %struct.lookahead_action** %299, align 8
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %300, i64 %302
  %304 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %391

307:                                              ; preds = %297
  store i32 0, i32* %6, align 4
  br label %308

308:                                              ; preds = %344, %307
  %309 = load i32, i32* %6, align 4
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %347

314:                                              ; preds = %308
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 8
  %317 = load %struct.lookahead_action*, %struct.lookahead_action** %316, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %317, i64 %319
  %321 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = sub nsw i32 %322, %325
  %327 = load i32, i32* %5, align 4
  %328 = add nsw i32 %326, %327
  store i32 %328, i32* %7, align 4
  %329 = load i32, i32* %7, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %314
  br label %347

332:                                              ; preds = %314
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 9
  %335 = load %struct.lookahead_action*, %struct.lookahead_action** %334, align 8
  %336 = load i32, i32* %7, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %335, i64 %337
  %339 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = icmp sge i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %332
  br label %347

343:                                              ; preds = %332
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %6, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %6, align 4
  br label %308

347:                                              ; preds = %342, %331, %308
  %348 = load i32, i32* %6, align 4
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp slt i32 %348, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %347
  br label %392

354:                                              ; preds = %347
  store i32 0, i32* %6, align 4
  br label %355

355:                                              ; preds = %380, %354
  %356 = load i32, i32* %6, align 4
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %383

361:                                              ; preds = %355
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 9
  %364 = load %struct.lookahead_action*, %struct.lookahead_action** %363, align 8
  %365 = load i32, i32* %6, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %364, i64 %366
  %368 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %6, align 4
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = add nsw i32 %370, %373
  %375 = load i32, i32* %5, align 4
  %376 = sub nsw i32 %374, %375
  %377 = icmp eq i32 %369, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %361
  br label %383

379:                                              ; preds = %361
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %6, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %6, align 4
  br label %355

383:                                              ; preds = %378, %355
  %384 = load i32, i32* %6, align 4
  %385 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = icmp eq i32 %384, %387
  br i1 %388, label %389, label %390

389:                                              ; preds = %383
  br label %395

390:                                              ; preds = %383
  br label %391

391:                                              ; preds = %390, %297
  br label %392

392:                                              ; preds = %391, %353
  %393 = load i32, i32* %5, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %5, align 4
  br label %287

395:                                              ; preds = %389, %287
  br label %396

396:                                              ; preds = %395, %273
  store i32 0, i32* %6, align 4
  br label %397

397:                                              ; preds = %443, %396
  %398 = load i32, i32* %6, align 4
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = icmp slt i32 %398, %401
  br i1 %402, label %403, label %446

403:                                              ; preds = %397
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 8
  %406 = load %struct.lookahead_action*, %struct.lookahead_action** %405, align 8
  %407 = load i32, i32* %6, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %406, i64 %408
  %410 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = sub nsw i32 %411, %414
  %416 = load i32, i32* %5, align 4
  %417 = add nsw i32 %415, %416
  store i32 %417, i32* %7, align 4
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 9
  %420 = load %struct.lookahead_action*, %struct.lookahead_action** %419, align 8
  %421 = load i32, i32* %7, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %420, i64 %422
  %424 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 8
  %426 = load %struct.lookahead_action*, %struct.lookahead_action** %425, align 8
  %427 = load i32, i32* %6, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.lookahead_action, %struct.lookahead_action* %426, i64 %428
  %430 = bitcast %struct.lookahead_action* %423 to i8*
  %431 = bitcast %struct.lookahead_action* %429 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %430, i8* align 4 %431, i64 8, i1 false)
  %432 = load i32, i32* %7, align 4
  %433 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = icmp sge i32 %432, %435
  br i1 %436, label %437, label %442

437:                                              ; preds = %403
  %438 = load i32, i32* %7, align 4
  %439 = add nsw i32 %438, 1
  %440 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 8
  br label %442

442:                                              ; preds = %437, %403
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %6, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %6, align 4
  br label %397

446:                                              ; preds = %397
  %447 = load i32, i32* %4, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %468

449:                                              ; preds = %446
  %450 = load i32, i32* %5, align 4
  %451 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %451, i32 0, i32 7
  %453 = load i32, i32* %452, align 4
  %454 = add nsw i32 %450, %453
  %455 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = icmp sge i32 %454, %457
  br i1 %458, label %459, label %468

459:                                              ; preds = %449
  %460 = load i32, i32* %5, align 4
  %461 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %462 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %461, i32 0, i32 7
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 %460, %463
  %465 = add nsw i32 %464, 1
  %466 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i32 0, i32 2
  store i32 %465, i32* %467, align 8
  br label %468

468:                                              ; preds = %459, %449, %446
  %469 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 0
  store i32 0, i32* %470, align 8
  %471 = load i32, i32* %5, align 4
  %472 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 8
  %475 = sub nsw i32 %471, %474
  ret i32 %475
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @realloc(%struct.lookahead_action*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
