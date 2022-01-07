; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_DeinterlaceX2.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vaapi/extr_filters.c_DeinterlaceX2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__, %struct.TYPE_23__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_23__ = type { %struct.deint_data* }
%struct.deint_data = type { i32, %struct.TYPE_19__*, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_21__* }

@METADATA_SIZE = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@Deinterlace_UpdateFilterParams = common dso_local global i32 0, align 4
@Deinterlace_UpdateReferenceFrames = common dso_local global i32 0, align 4
@Deinterlace_UpdatePipelineParams = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_22__*, %struct.TYPE_21__*)* @DeinterlaceX2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @DeinterlaceX2(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.deint_data*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x %struct.TYPE_21__*], align 16
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %6, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load %struct.deint_data*, %struct.deint_data** %20, align 8
  store %struct.deint_data* %21, %struct.deint_data** %7, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %8, align 8
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %45, %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @METADATA_SIZE, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %31 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sub i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i64 %35
  %37 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %38 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i64 %41
  %43 = bitcast %struct.TYPE_19__* %36 to i8*
  %44 = bitcast %struct.TYPE_19__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %53 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = load i32, i32* @METADATA_SIZE, align 4
  %56 = sub i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  store i32 %51, i32* %59, align 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %64 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = load i32, i32* @METADATA_SIZE, align 4
  %67 = sub i32 %66, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  store i32 %62, i32* %70, align 4
  %71 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = call %struct.TYPE_21__* @Deinterlace_UpdateHistory(%struct.deint_data* %71, %struct.TYPE_21__* %72)
  store %struct.TYPE_21__* %73, %struct.TYPE_21__** %10, align 8
  %74 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %75 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %79 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %48
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %259

84:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %104, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @METADATA_SIZE, align 4
  %88 = sub i32 %87, 1
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %85
  %91 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %92 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* @VLC_TICK_INVALID, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %107

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %12, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %85

107:                                              ; preds = %102, %85
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @METADATA_SIZE, align 4
  %110 = sub i32 %109, 1
  %111 = icmp ult i32 %108, %110
  br i1 %111, label %112, label %148

112:                                              ; preds = %107
  store i32 0, i32* %13, align 4
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %130, %112
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @METADATA_SIZE, align 4
  %117 = sub i32 %116, 1
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %114
  %120 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %121 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %120, i32 0, i32 1
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %119
  %131 = load i32, i32* %14, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %114

133:                                              ; preds = %114
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %138 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %137, i32 0, i32 1
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sub i32 %136, %144
  %146 = load i32, i32* %13, align 4
  %147 = udiv i32 %145, %146
  store i32 %147, i32* %11, align 4
  br label %162

148:                                              ; preds = %107
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @vlc_tick_from_samples(i64 %156, i32 %159)
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %153, %148
  br label %162

162:                                              ; preds = %161, %133
  %163 = bitcast [2 x %struct.TYPE_21__*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %163, i8 0, i64 16, i1 false)
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %197, %162
  %165 = load i32, i32* %12, align 4
  %166 = icmp ult i32 %165, 2
  br i1 %166, label %167, label %200

167:                                              ; preds = %164
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.deint_data*, %struct.deint_data** %7, align 8
  %170 = getelementptr inbounds %struct.deint_data, %struct.deint_data* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %173 = load i32, i32* @Deinterlace_UpdateFilterParams, align 4
  %174 = load i32, i32* @Deinterlace_UpdateReferenceFrames, align 4
  %175 = load i32, i32* @Deinterlace_UpdatePipelineParams, align 4
  %176 = call %struct.TYPE_21__* @Filter(%struct.TYPE_22__* %171, %struct.TYPE_21__* %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %12, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 %178
  store %struct.TYPE_21__* %176, %struct.TYPE_21__** %179, align 8
  %180 = load i32, i32* %12, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 %181
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  %184 = icmp ne %struct.TYPE_21__* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %167
  br label %238

186:                                              ; preds = %167
  %187 = load i32, i32* %12, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 %188
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 2
  store i32 1, i32* %191, align 8
  %192 = load i32, i32* %12, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 %193
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  store i32 1, i32* %196, align 4
  br label %197

197:                                              ; preds = %186
  %198 = load i32, i32* %12, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %164

200:                                              ; preds = %164
  %201 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 1
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %201, align 8
  %203 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 0
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 16
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 3
  store %struct.TYPE_21__* %202, %struct.TYPE_21__** %205, align 8
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 0
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %209, align 16
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  %212 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 0
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %212, align 16
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = zext i32 %215 to i64
  %217 = load i64, i64* @VLC_TICK_INVALID, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %200
  %220 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 0
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %220, align 16
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = add i32 %223, %224
  %226 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 1
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 8
  br label %235

229:                                              ; preds = %200
  %230 = load i64, i64* @VLC_TICK_INVALID, align 8
  %231 = trunc i64 %230 to i32
  %232 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 1
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  store i32 %231, i32* %234, align 8
  br label %235

235:                                              ; preds = %229, %219
  %236 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 0
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 16
  store %struct.TYPE_21__* %237, %struct.TYPE_21__** %3, align 8
  br label %259

238:                                              ; preds = %185
  store i32 0, i32* %12, align 4
  br label %239

239:                                              ; preds = %255, %238
  %240 = load i32, i32* %12, align 4
  %241 = icmp ult i32 %240, 2
  br i1 %241, label %242, label %258

242:                                              ; preds = %239
  %243 = load i32, i32* %12, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 %244
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %245, align 8
  %247 = icmp ne %struct.TYPE_21__* %246, null
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = load i32, i32* %12, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds [2 x %struct.TYPE_21__*], [2 x %struct.TYPE_21__*]* %15, i64 0, i64 %250
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %251, align 8
  %253 = call i32 @picture_Release(%struct.TYPE_21__* %252)
  br label %254

254:                                              ; preds = %248, %242
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %12, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %12, align 4
  br label %239

258:                                              ; preds = %239
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %3, align 8
  br label %259

259:                                              ; preds = %258, %235, %83
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  ret %struct.TYPE_21__* %260
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_21__* @Deinterlace_UpdateHistory(%struct.deint_data*, %struct.TYPE_21__*) #2

declare dso_local i32 @vlc_tick_from_samples(i64, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_21__* @Filter(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32, i32) #2

declare dso_local i32 @picture_Release(%struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
