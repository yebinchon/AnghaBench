; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_write.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i32*, i32, %struct.TYPE_13__*, i64, i64 }
%struct.TYPE_13__ = type { i32, i64, i32*, i32, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FA_WRITE = common dso_local global i32 0, align 4
@FR_DENIED = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i32 0, align 4
@FA__DIRTY = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@FA__WRITTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_write(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %15, align 8
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = call i64 @validate(%struct.TYPE_12__* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @FR_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @LEAVE_FF(%struct.TYPE_13__* %28, i64 %29)
  br label %31

31:                                               ; preds = %25, %4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @LEAVE_FF(%struct.TYPE_13__* %39, i64 %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @FA_WRITE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load i64, i64* @FR_DENIED, align 8
  %56 = call i32 @LEAVE_FF(%struct.TYPE_13__* %54, i64 %55)
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %397, %68
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %414

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = call i64 @SS(%struct.TYPE_13__* %79)
  %81 = urem i64 %76, %80
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %354

83:                                               ; preds = %72
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 7
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = call i64 @SS(%struct.TYPE_13__* %90)
  %92 = udiv i64 %87, %91
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 7
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = and i64 %92, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %164, label %104

104:                                              ; preds = %83
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = call i32 @create_chain(%struct.TYPE_13__* %118, i32 0)
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %115, %109
  br label %129

121:                                              ; preds = %104
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @create_chain(%struct.TYPE_13__* %124, i32 %127)
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %121, %120
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %414

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 7
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = load i32, i32* @FR_INT_ERR, align 4
  %141 = call i32 @ABORT(%struct.TYPE_13__* %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %133
  %143 = load i32, i32* %11, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 7
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = load i32, i32* @FR_DISK_ERR, align 4
  %150 = call i32 @ABORT(%struct.TYPE_13__* %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %142
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %151
  br label %164

164:                                              ; preds = %163, %83
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @FA__DIRTY, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %200

171:                                              ; preds = %164
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i64 @disk_write(i32 %176, i32* %179, i32 %183, i32 1)
  %185 = load i64, i64* @RES_OK, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %171
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 7
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = load i32, i32* @FR_DISK_ERR, align 4
  %192 = call i32 @ABORT(%struct.TYPE_13__* %190, i32 %191)
  br label %193

193:                                              ; preds = %187, %171
  %194 = load i32, i32* @FA__DIRTY, align 4
  %195 = xor i32 %194, -1
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %193, %164
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 7
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @clust2sect(%struct.TYPE_13__* %203, i32 %206)
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %200
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 7
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  %214 = load i32, i32* @FR_INT_ERR, align 4
  %215 = call i32 @ABORT(%struct.TYPE_13__* %213, i32 %214)
  br label %216

216:                                              ; preds = %210, %200
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 7
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = call i64 @SS(%struct.TYPE_13__* %224)
  %226 = udiv i64 %221, %225
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %314

230:                                              ; preds = %216
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %231, %232
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 7
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp sgt i32 %233, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %230
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 7
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sub nsw i32 %245, %246
  store i32 %247, i32* %14, align 4
  br label %248

248:                                              ; preds = %240, %230
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 7
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %15, align 8
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %14, align 4
  %257 = call i64 @disk_write(i32 %253, i32* %254, i32 %255, i32 %256)
  %258 = load i64, i64* @RES_OK, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %248
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 7
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %262, align 8
  %264 = load i32, i32* @FR_DISK_ERR, align 4
  %265 = call i32 @ABORT(%struct.TYPE_13__* %263, i32 %264)
  br label %266

266:                                              ; preds = %260, %248
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = sub nsw i64 %269, %271
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = icmp slt i64 %272, %274
  br i1 %275, label %276, label %305

276:                                              ; preds = %266
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 5
  %279 = load i32*, i32** %278, align 8
  %280 = load i32*, i32** %15, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = sub nsw i64 %283, %285
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 7
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %288, align 8
  %290 = call i64 @SS(%struct.TYPE_13__* %289)
  %291 = mul i64 %286, %290
  %292 = getelementptr inbounds i32, i32* %280, i64 %291
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 7
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %294, align 8
  %296 = call i64 @SS(%struct.TYPE_13__* %295)
  %297 = trunc i64 %296 to i32
  %298 = call i32 @mem_cpy(i32* %279, i32* %292, i32 %297)
  %299 = load i32, i32* @FA__DIRTY, align 4
  %300 = xor i32 %299, -1
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = and i32 %303, %300
  store i32 %304, i32* %302, align 8
  br label %305

305:                                              ; preds = %276, %266
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 7
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %307, align 8
  %309 = call i64 @SS(%struct.TYPE_13__* %308)
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = mul i64 %309, %311
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %13, align 4
  br label %397

314:                                              ; preds = %216
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = icmp ne i64 %317, %319
  br i1 %320, label %321, label %349

321:                                              ; preds = %314
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = icmp slt i32 %324, %327
  br i1 %328, label %329, label %348

329:                                              ; preds = %321
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 7
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 5
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %12, align 4
  %339 = call i64 @disk_read(i32 %334, i32* %337, i32 %338, i32 1)
  %340 = load i64, i64* @RES_OK, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %348

342:                                              ; preds = %329
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 7
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %344, align 8
  %346 = load i32, i32* @FR_DISK_ERR, align 4
  %347 = call i32 @ABORT(%struct.TYPE_13__* %345, i32 %346)
  br label %348

348:                                              ; preds = %342, %329, %321
  br label %349

349:                                              ; preds = %348, %314
  %350 = load i32, i32* %12, align 4
  %351 = sext i32 %350 to i64
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 4
  store i64 %351, i64* %353, align 8
  br label %354

354:                                              ; preds = %349, %72
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 7
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %356, align 8
  %358 = call i64 @SS(%struct.TYPE_13__* %357)
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 7
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %364, align 8
  %366 = call i64 @SS(%struct.TYPE_13__* %365)
  %367 = urem i64 %362, %366
  %368 = sub i64 %358, %367
  %369 = trunc i64 %368 to i32
  store i32 %369, i32* %13, align 4
  %370 = load i32, i32* %13, align 4
  %371 = load i32, i32* %8, align 4
  %372 = icmp sgt i32 %370, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %354
  %374 = load i32, i32* %8, align 4
  store i32 %374, i32* %13, align 4
  br label %375

375:                                              ; preds = %373, %354
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 5
  %378 = load i32*, i32** %377, align 8
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 7
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %384, align 8
  %386 = call i64 @SS(%struct.TYPE_13__* %385)
  %387 = urem i64 %382, %386
  %388 = getelementptr inbounds i32, i32* %378, i64 %387
  %389 = load i32*, i32** %15, align 8
  %390 = load i32, i32* %13, align 4
  %391 = call i32 @mem_cpy(i32* %388, i32* %389, i32 %390)
  %392 = load i32, i32* @FA__DIRTY, align 4
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  br label %397

397:                                              ; preds = %375, %305
  %398 = load i32, i32* %13, align 4
  %399 = load i32*, i32** %15, align 8
  %400 = sext i32 %398 to i64
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  store i32* %401, i32** %15, align 8
  %402 = load i32, i32* %13, align 4
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %405, %402
  store i32 %406, i32* %404, align 4
  %407 = load i32, i32* %13, align 4
  %408 = load i32*, i32** %9, align 8
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %409, %407
  store i32 %410, i32* %408, align 4
  %411 = load i32, i32* %13, align 4
  %412 = load i32, i32* %8, align 4
  %413 = sub nsw i32 %412, %411
  store i32 %413, i32* %8, align 4
  br label %69

414:                                              ; preds = %132, %69
  %415 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 8
  %421 = icmp sgt i32 %417, %420
  br i1 %421, label %422, label %428

422:                                              ; preds = %414
  %423 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %426, i32 0, i32 6
  store i32 %425, i32* %427, align 8
  br label %428

428:                                              ; preds = %422, %414
  %429 = load i32, i32* @FA__WRITTEN, align 4
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = or i32 %432, %429
  store i32 %433, i32* %431, align 8
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 7
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %435, align 8
  %437 = load i64, i64* @FR_OK, align 8
  %438 = call i32 @LEAVE_FF(%struct.TYPE_13__* %436, i64 %437)
  %439 = load i64, i64* %5, align 8
  ret i64 %439
}

declare dso_local i64 @validate(%struct.TYPE_12__*) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @SS(%struct.TYPE_13__*) #1

declare dso_local i32 @create_chain(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ABORT(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @disk_write(i32, i32*, i32, i32) #1

declare dso_local i32 @clust2sect(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mem_cpy(i32*, i32*, i32) #1

declare dso_local i64 @disk_read(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
