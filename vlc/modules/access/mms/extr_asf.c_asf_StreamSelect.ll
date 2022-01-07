; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_asf.c_asf_StreamSelect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_asf.c_asf_StreamSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i64 }

@ASF_CODEC_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@ASF_CODEC_TYPE_AUDIO = common dso_local global i64 0, align 8
@ASF_CODEC_TYPE_VIDEO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asf_StreamSelect(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %11, align 4
  %20 = icmp ult i32 %19, 128
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ASF_CODEC_TYPE_UNKNOWN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %32, %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %18

44:                                               ; preds = %18
  br label %389

45:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %57, %45
  %47 = load i32, i32* %11, align 4
  %48 = icmp ult i32 %47, 128
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %46

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %386, %61
  %63 = load i32, i32* %11, align 4
  %64 = icmp ult i32 %63, 128
  br i1 %64, label %65, label %389

65:                                               ; preds = %62
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ASF_CODEC_TYPE_UNKNOWN, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %386

77:                                               ; preds = %65
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ASF_CODEC_TYPE_AUDIO, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %230

88:                                               ; preds = %77
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %230

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %164, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %102, %110
  br i1 %111, label %112, label %139

112:                                              ; preds = %94
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %114, %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %123, %131
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %164, label %136

136:                                              ; preds = %112
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %136, %94
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %147, %155
  br i1 %156, label %157, label %230

157:                                              ; preds = %139
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %230

160:                                              ; preds = %157
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %230

164:                                              ; preds = %160, %136, %112, %91
  %165 = load i32, i32* %12, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %198

167:                                              ; preds = %164
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store i32 0, i32* %174, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %167
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = sub nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %14, align 4
  br label %197

197:                                              ; preds = %184, %167
  br label %198

198:                                              ; preds = %197, %164
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  store i32 1, i32* %205, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %198
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %223
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %14, align 4
  br label %228

228:                                              ; preds = %215, %198
  %229 = load i32, i32* %11, align 4
  store i32 %229, i32* %12, align 4
  br label %384

230:                                              ; preds = %160, %157, %139, %88, %77
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @ASF_CODEC_TYPE_VIDEO, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %383

241:                                              ; preds = %230
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %383

244:                                              ; preds = %241
  %245 = load i32, i32* %13, align 4
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %317, label %247

247:                                              ; preds = %244
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = load i32, i32* %11, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %255, %263
  br i1 %264, label %265, label %292

265:                                              ; preds = %247
  %266 = load i32, i32* %14, align 4
  %267 = sext i32 %266 to i64
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = load i32, i32* %11, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %267, %275
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = sub nsw i64 %276, %284
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = icmp slt i64 %285, %287
  br i1 %288, label %317, label %289

289:                                              ; preds = %265
  %290 = load i32, i32* %7, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %317

292:                                              ; preds = %289, %247
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = load i32, i32* %11, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp slt i64 %300, %308
  br i1 %309, label %310, label %383

310:                                              ; preds = %292
  %311 = load i32, i32* %7, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %383

313:                                              ; preds = %310
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %7, align 4
  %316 = icmp sgt i32 %314, %315
  br i1 %316, label %317, label %383

317:                                              ; preds = %313, %289, %265, %244
  %318 = load i32, i32* %13, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %351

320:                                              ; preds = %317
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = load i32, i32* %13, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 1
  store i32 0, i32* %327, align 8
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %329, align 8
  %331 = load i32, i32* %13, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = icmp sgt i64 %335, 0
  br i1 %336, label %337, label %350

337:                                              ; preds = %320
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_4__*, %struct.TYPE_4__** %339, align 8
  %341 = load i32, i32* %13, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 2
  %345 = load i64, i64* %344, align 8
  %346 = load i32, i32* %14, align 4
  %347 = sext i32 %346 to i64
  %348 = sub nsw i64 %347, %345
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %14, align 4
  br label %350

350:                                              ; preds = %337, %320
  br label %351

351:                                              ; preds = %350, %317
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %353, align 8
  %355 = load i32, i32* %11, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 1
  store i32 1, i32* %358, align 8
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %360, align 8
  %362 = load i32, i32* %11, align 4
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = icmp sgt i64 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %351
  %369 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** %370, align 8
  %372 = load i32, i32* %11, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = load i32, i32* %14, align 4
  %378 = sext i32 %377 to i64
  %379 = add nsw i64 %378, %376
  %380 = trunc i64 %379 to i32
  store i32 %380, i32* %14, align 4
  br label %381

381:                                              ; preds = %368, %351
  %382 = load i32, i32* %11, align 4
  store i32 %382, i32* %13, align 4
  br label %383

383:                                              ; preds = %381, %313, %310, %292, %241, %230
  br label %384

384:                                              ; preds = %383, %228
  br label %385

385:                                              ; preds = %384
  br label %386

386:                                              ; preds = %385, %76
  %387 = load i32, i32* %11, align 4
  %388 = add i32 %387, 1
  store i32 %388, i32* %11, align 4
  br label %62

389:                                              ; preds = %44, %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
