; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_do_lzo_decompress.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_do_lzo_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }

@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @do_lzo_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lzo_decompress(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %17, i32* %2, align 4
  br label %354

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 17
  br i1 %20, label %21, label %66

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @min(i32 %24, i32 %32)
  %34 = call i32 @lzo_copy(%struct.TYPE_7__* %22, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %40, i32* %2, align 4
  br label %354

41:                                               ; preds = %21
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %50, i32* %2, align 4
  br label %354

51:                                               ; preds = %41
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %52)
  store i32 %53, i32* %4, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %59, i32* %2, align 4
  br label %354

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 16
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %64, i32* %2, align 4
  br label %354

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %18
  br label %67

67:                                               ; preds = %66, %253, %351
  %68 = load i32, i32* %4, align 4
  %69 = ashr i32 %68, 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %182

71:                                               ; preds = %67
  store i32 1, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = ashr i32 %72, 6
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = ashr i32 %76, 5
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %79)
  %81 = shl i32 %80, 3
  %82 = load i32, i32* %4, align 4
  %83 = ashr i32 %82, 2
  %84 = and i32 %83, 7
  %85 = add nsw i32 %81, %84
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %75
  %92 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %92, i32* %2, align 4
  br label %354

93:                                               ; preds = %75
  br label %181

94:                                               ; preds = %71
  %95 = load i32, i32* %4, align 4
  %96 = ashr i32 %95, 5
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %94
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @lzo_len(%struct.TYPE_7__* %99, i32 %100, i32 31)
  store i32 %101, i32* %5, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %107, i32* %2, align 4
  br label %354

108:                                              ; preds = %98
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %109)
  store i32 %110, i32* %4, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %116, i32* %2, align 4
  br label %354

117:                                              ; preds = %108
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %118)
  %120 = shl i32 %119, 6
  %121 = load i32, i32* %4, align 4
  %122 = ashr i32 %121, 2
  %123 = add nsw i32 %120, %122
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %117
  %130 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %130, i32* %2, align 4
  br label %354

131:                                              ; preds = %117
  br label %180

132:                                              ; preds = %94
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @lzo_len(%struct.TYPE_7__* %133, i32 %134, i32 7)
  store i32 %135, i32* %5, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %141, i32* %2, align 4
  br label %354

142:                                              ; preds = %132
  %143 = load i32, i32* %4, align 4
  %144 = and i32 %143, 8
  %145 = shl i32 %144, 11
  %146 = add nsw i32 16384, %145
  store i32 %146, i32* %6, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %148 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %147)
  store i32 %148, i32* %4, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %154, i32* %2, align 4
  br label %354

155:                                              ; preds = %142
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %157 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %156)
  %158 = shl i32 %157, 6
  %159 = load i32, i32* %4, align 4
  %160 = ashr i32 %159, 2
  %161 = add nsw i32 %158, %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %6, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %155
  %169 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %169, i32* %2, align 4
  br label %354

170:                                              ; preds = %155
  %171 = load i32, i32* %6, align 4
  %172 = icmp eq i32 %171, 16384
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 1
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %177, i32* %2, align 4
  br label %354

178:                                              ; preds = %173
  br label %352

179:                                              ; preds = %170
  br label %180

180:                                              ; preds = %179, %131
  br label %181

181:                                              ; preds = %180, %93
  br label %271

182:                                              ; preds = %67
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %182
  store i32 0, i32* %5, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %187 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %186)
  %188 = shl i32 %187, 2
  %189 = load i32, i32* %4, align 4
  %190 = ashr i32 %189, 2
  %191 = add nsw i32 %188, %190
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %185
  %198 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %198, i32* %2, align 4
  br label %354

199:                                              ; preds = %185
  br label %270

200:                                              ; preds = %182
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @lzo_len(%struct.TYPE_7__* %201, i32 %202, i32 15)
  store i32 %203, i32* %5, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %200
  %209 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %209, i32* %2, align 4
  br label %354

210:                                              ; preds = %200
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 3
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = sub nsw i64 %216, %219
  %221 = trunc i64 %220 to i32
  %222 = call i32 @min(i32 %213, i32 %221)
  %223 = call i32 @lzo_copy(%struct.TYPE_7__* %211, i32 %222)
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %210
  %229 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %229, i32* %2, align 4
  br label %354

230:                                              ; preds = %210
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %233, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %230
  %239 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %239, i32* %2, align 4
  br label %354

240:                                              ; preds = %230
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %242 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %241)
  store i32 %242, i32* %4, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %240
  %248 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %248, i32* %2, align 4
  br label %354

249:                                              ; preds = %240
  %250 = load i32, i32* %4, align 4
  %251 = ashr i32 %250, 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  br label %67

254:                                              ; preds = %249
  store i32 1, i32* %5, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %256 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %255)
  %257 = shl i32 %256, 2
  %258 = add nsw i32 2048, %257
  %259 = load i32, i32* %4, align 4
  %260 = ashr i32 %259, 2
  %261 = add nsw i32 %258, %260
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %6, align 4
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %254
  %268 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %268, i32* %2, align 4
  br label %354

269:                                              ; preds = %254
  br label %352

270:                                              ; preds = %199
  br label %271

271:                                              ; preds = %270, %181
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* %5, align 4
  %275 = add nsw i32 %274, 2
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = sub nsw i64 %278, %281
  %283 = trunc i64 %282 to i32
  %284 = call i32 @min(i32 %275, i32 %283)
  %285 = call i32 @lzo_copyback(%struct.TYPE_7__* %272, i32 %273, i32 %284)
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %271
  %291 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %291, i32* %2, align 4
  br label %354

292:                                              ; preds = %271
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = icmp eq i64 %295, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %292
  %301 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %301, i32* %2, align 4
  br label %354

302:                                              ; preds = %292
  %303 = load i32, i32* %4, align 4
  %304 = and i32 %303, 3
  store i32 %304, i32* %5, align 4
  %305 = load i32, i32* %5, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %337

307:                                              ; preds = %302
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %309 = load i32, i32* %5, align 4
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = sub nsw i64 %312, %315
  %317 = trunc i64 %316 to i32
  %318 = call i32 @min(i32 %309, i32 %317)
  %319 = call i32 @lzo_copy(%struct.TYPE_7__* %308, i32 %318)
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %307
  %325 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %325, i32* %2, align 4
  br label %354

326:                                              ; preds = %307
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 2
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %329, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %326
  %335 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %335, i32* %2, align 4
  br label %354

336:                                              ; preds = %326
  br label %342

337:                                              ; preds = %302
  %338 = load i32, i32* %7, align 4
  %339 = icmp ne i32 %338, 0
  %340 = xor i1 %339, true
  %341 = zext i1 %340 to i32
  store i32 %341, i32* %7, align 4
  br label %342

342:                                              ; preds = %337, %336
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %344 = call i32 @lzo_nextbyte(%struct.TYPE_7__* %343)
  store i32 %344, i32* %4, align 4
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %342
  %350 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %350, i32* %2, align 4
  br label %354

351:                                              ; preds = %342
  br label %67

352:                                              ; preds = %269, %178
  %353 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %353, i32* %2, align 4
  br label %354

354:                                              ; preds = %352, %349, %334, %324, %300, %290, %267, %247, %238, %228, %208, %197, %176, %168, %153, %140, %129, %115, %106, %91, %63, %58, %49, %39, %16
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local i32 @lzo_nextbyte(%struct.TYPE_7__*) #1

declare dso_local i32 @lzo_copy(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @lzo_len(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @lzo_copyback(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
