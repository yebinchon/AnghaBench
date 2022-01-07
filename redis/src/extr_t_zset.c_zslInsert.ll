; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslInsert.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }

@ZSKIPLIST_MAXLEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @zslInsert(%struct.TYPE_9__* %0, double %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @ZSKIPLIST_MAXLEVEL, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.TYPE_8__*, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @ZSKIPLIST_MAXLEVEL, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load double, double* %5, align 8
  %21 = call i32 @isnan(double %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @serverAssert(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %9, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %138, %3
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %141

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %19, i64 %47
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %44, %43
  %51 = phi i32 [ 0, %43 ], [ %49, %44 ]
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %19, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %111, %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %109

65:                                               ; preds = %55
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = load double, double* %5, align 8
  %77 = fcmp olt double %75, %76
  br i1 %77, label %107, label %78

78:                                               ; preds = %65
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load double, double* %87, align 8
  %89 = load double, double* %5, align 8
  %90 = fcmp oeq double %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %78
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i64 @sdscmp(i32 %101, i32 %102)
  %104 = icmp slt i64 %103, 0
  br label %105

105:                                              ; preds = %91, %78
  %106 = phi i1 [ false, %78 ], [ %104, %91 ]
  br label %107

107:                                              ; preds = %105, %65
  %108 = phi i1 [ true, %65 ], [ %106, %105 ]
  br label %109

109:                                              ; preds = %107, %55
  %110 = phi i1 [ false, %55 ], [ %108, %107 ]
  br i1 %110, label %111, label %133

111:                                              ; preds = %109
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %19, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %123, %119
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %9, align 8
  br label %55

133:                                              ; preds = %109
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %136
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %137, align 8
  br label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %11, align 4
  br label %33

141:                                              ; preds = %33
  %142 = call i32 (...) @zslRandomLevel()
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %186

148:                                              ; preds = %141
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %179, %148
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %182

156:                                              ; preds = %152
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %19, i64 %158
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %164
  store %struct.TYPE_8__* %162, %struct.TYPE_8__** %165, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %170
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store i32 %168, i32* %178, align 8
  br label %179

179:                                              ; preds = %156
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %152

182:                                              ; preds = %152
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %182, %141
  %187 = load i32, i32* %12, align 4
  %188 = load double, double* %5, align 8
  %189 = load i32, i32* %6, align 4
  %190 = call %struct.TYPE_8__* @zslCreateNode(i32 %187, double %188, i32 %189)
  store %struct.TYPE_8__* %190, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %191

191:                                              ; preds = %269, %186
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %272

195:                                              ; preds = %191
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %197
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  store %struct.TYPE_8__* %206, %struct.TYPE_8__** %213, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %216
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  store %struct.TYPE_8__* %214, %struct.TYPE_8__** %224, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %226
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds i32, i32* %19, i64 0
  %237 = load i32, i32* %236, align 16
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %19, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sub i32 %237, %241
  %243 = sub i32 %235, %242
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  store i32 %243, i32* %250, align 8
  %251 = getelementptr inbounds i32, i32* %19, i64 0
  %252 = load i32, i32* %251, align 16
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %19, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = sub i32 %252, %256
  %258 = add i32 %257, 1
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %260
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  store i32 %258, i32* %268, align 8
  br label %269

269:                                              ; preds = %195
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %11, align 4
  br label %191

272:                                              ; preds = %191
  %273 = load i32, i32* %12, align 4
  store i32 %273, i32* %11, align 4
  br label %274

274:                                              ; preds = %293, %272
  %275 = load i32, i32* %11, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %296

280:                                              ; preds = %274
  %281 = load i32, i32* %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %282
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 2
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = add i32 %291, 1
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %280
  %294 = load i32, i32* %11, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %11, align 4
  br label %274

296:                                              ; preds = %274
  %297 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 0
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %297, align 16
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 3
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %300, align 8
  %302 = icmp eq %struct.TYPE_8__* %298, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  br label %307

304:                                              ; preds = %296
  %305 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 0
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %305, align 16
  br label %307

307:                                              ; preds = %304, %303
  %308 = phi %struct.TYPE_8__* [ null, %303 ], [ %306, %304 ]
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 1
  store %struct.TYPE_8__* %308, %struct.TYPE_8__** %310, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %315, align 8
  %317 = icmp ne %struct.TYPE_8__* %316, null
  br i1 %317, label %318, label %327

318:                                              ; preds = %307
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i64 0
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 1
  store %struct.TYPE_8__* %319, %struct.TYPE_8__** %326, align 8
  br label %331

327:                                              ; preds = %307
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 2
  store %struct.TYPE_8__* %328, %struct.TYPE_8__** %330, align 8
  br label %331

331:                                              ; preds = %327, %318
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = add i32 %334, 1
  store i32 %335, i32* %333, align 4
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %337 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %337)
  ret %struct.TYPE_8__* %336
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @serverAssert(i32) #2

declare dso_local i32 @isnan(double) #2

declare dso_local i64 @sdscmp(i32, i32) #2

declare dso_local i32 @zslRandomLevel(...) #2

declare dso_local %struct.TYPE_8__* @zslCreateNode(i32, double, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
