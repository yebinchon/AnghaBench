; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_picture.c_picture_Setup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_picture.c_picture_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i64, i64, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picture_Setup(%struct.TYPE_17__* %0, %struct.TYPE_15__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_14__* @vlc_fourcc_GetChromaDescription(i32 %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %6, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %30, i32* %3, align 4
  br label %377

31:                                               ; preds = %2
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %52, %31
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = call i32 @ARRAY_SIZE(%struct.TYPE_16__* %38)
  %40 = icmp ult i32 %35, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i64 %46
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %8, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 5
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  store i32 2, i32* %57, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @video_format_Setup(i32* %59, i32 %62, i64 %65, i64 %68, i32 %71, i32 %74, i32 %77, i32 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %138

89:                                               ; preds = %55
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %89
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %138

102:                                              ; preds = %97
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %105, %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sle i64 %110, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %102
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %115
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %123, %127
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp sle i64 %128, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %120
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = call i32 @video_format_CopyCrop(i32* %135, %struct.TYPE_15__* %136)
  br label %138

138:                                              ; preds = %133, %120, %115, %102, %97, %89, %55
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %139

139:                                              ; preds = %192, %138
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ult i32 %140, %143
  br i1 %144, label %145, label %195

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 16, %155
  %157 = call i32 @LCM(i32 %146, i32 %156)
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 16, %167
  %169 = call i32 @LCM(i32 %158, i32 %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ult i32 %170, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %145
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %181, %145
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %12, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %139

195:                                              ; preds = %139
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @LCM(i32 %196, i32 32)
  store i32 %197, i32* %10, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sub i32 %201, 1
  %203 = call i32 @add_overflow(i64 %200, i32 %202, i32* %13)
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %195
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sub i32 %210, 1
  %212 = call i32 @add_overflow(i64 %209, i32 %211, i32* %14)
  %213 = call i64 @unlikely(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %206, %195
  %216 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %216, i32* %3, align 4
  br label %377

217:                                              ; preds = %206
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %9, align 4
  %220 = udiv i32 %218, %219
  %221 = load i32, i32* %9, align 4
  %222 = mul i32 %220, %221
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %10, align 4
  %225 = udiv i32 %223, %224
  %226 = load i32, i32* %10, align 4
  %227 = mul i32 %225, %226
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* @INT_MAX, align 4
  %230 = icmp ugt i32 %228, %229
  %231 = zext i1 %230 to i32
  %232 = call i64 @unlikely(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %241, label %234

234:                                              ; preds = %217
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* @INT_MAX, align 4
  %237 = icmp ugt i32 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i64 @unlikely(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %234, %217
  %242 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %242, i32* %3, align 4
  br label %377

243:                                              ; preds = %234
  store i32 0, i32* %15, align 4
  br label %244

244:                                              ; preds = %367, %243
  %245 = load i32, i32* %15, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ult i32 %245, %248
  br i1 %249, label %250, label %370

250:                                              ; preds = %244
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %252, align 8
  %254 = load i32, i32* %15, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i64 %255
  store %struct.TYPE_16__* %256, %struct.TYPE_16__** %16, align 8
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = load i32, i32* %15, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 1
  store %struct.TYPE_13__* %263, %struct.TYPE_13__** %17, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = load i32, i32* %15, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  store %struct.TYPE_13__* %270, %struct.TYPE_13__** %18, align 8
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp uge i32 %273, %276
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp uge i32 %282, %285
  %287 = zext i1 %286 to i32
  %288 = call i32 @assert(i32 %287)
  %289 = load i32, i32* %14, align 4
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = mul i32 %289, %292
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = udiv i32 %293, %296
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = sub nsw i32 %305, 1
  %307 = add nsw i32 %302, %306
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = sdiv i32 %307, %310
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = mul i32 %311, %314
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 2
  store i32 %315, i32* %317, align 8
  %318 = load i32, i32* %13, align 4
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = mul i32 %318, %321
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = udiv i32 %322, %325
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = mul i32 %326, %329
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 3
  store i32 %330, i32* %332, align 4
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = sub nsw i32 %338, 1
  %340 = add nsw i32 %335, %339
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = sdiv i32 %340, %343
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = mul i32 %344, %347
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = mul i32 %348, %351
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 4
  store i32 %352, i32* %354, align 8
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 8
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = urem i32 %362, 16
  %364 = icmp eq i32 %363, 0
  %365 = zext i1 %364 to i32
  %366 = call i32 @assert(i32 %365)
  br label %367

367:                                              ; preds = %250
  %368 = load i32, i32* %15, align 4
  %369 = add i32 %368, 1
  store i32 %369, i32* %15, align 4
  br label %244

370:                                              ; preds = %244
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 0
  store i32 %373, i32* %375, align 8
  %376 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %376, i32* %3, align 4
  br label %377

377:                                              ; preds = %370, %241, %215, %29
  %378 = load i32, i32* %3, align 4
  ret i32 %378
}

declare dso_local %struct.TYPE_14__* @vlc_fourcc_GetChromaDescription(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_16__*) #1

declare dso_local i32 @video_format_Setup(i32*, i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @video_format_CopyCrop(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @LCM(i32, i32) #1

declare dso_local i32 @add_overflow(i64, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
