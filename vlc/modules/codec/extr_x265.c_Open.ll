; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_x265.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_x265.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32*, i32, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_24__*, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i64, i32, i64, i32*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i64, i32*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_19__, i64, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32 }

@VLC_CODEC_HEVC = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_CODEC_I420 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Width (%d) must be a multiple of %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Height (%d) must be a multiple of 8\00", align 1
@X265_RC_ABR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot open x265 encoder\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot get x265 headers\00", align 1
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@Encode = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %4, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VLC_CODEC_HEVC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %28, i32* %2, align 4
  br label %257

29:                                               ; preds = %21, %1
  %30 = load i32, i32* @VIDEO_ES, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 8
  %34 = load i64, i64* @VLC_CODEC_HEVC, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = call i8* @malloc(i64 72)
  %39 = bitcast i8* %38 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %5, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 4
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %41, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = icmp ne %struct.TYPE_24__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %257

46:                                               ; preds = %29
  %47 = load i32, i32* @VLC_CODEC_I420, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 3
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %6, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = call i32 @x265_param_default(%struct.TYPE_21__* %53)
  %55 = call i32 (...) @vlc_GetCPUCount()
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  store i32 16, i32* %61, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %46
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %73, %78
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %85

82:                                               ; preds = %46
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 3
  store i32 25, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %68
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = and i32 %102, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %85
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Err(%struct.TYPE_23__* %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %119 = call i32 @free(%struct.TYPE_24__* %118)
  %120 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %120, i32* %2, align 4
  br label %257

121:                                              ; preds = %85
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 7
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Err(%struct.TYPE_23__* %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %134 = call i32 @free(%struct.TYPE_24__* %133)
  %135 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %135, i32* %2, align 4
  br label %257

136:                                              ; preds = %121
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sdiv i32 %146, 1000
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load i32, i32* @X265_RC_ABR, align 4
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  br label %155

155:                                              ; preds = %142, %136
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %157 = call i32* @x265_encoder_open(%struct.TYPE_21__* %156)
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  store i32* %157, i32** %159, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %155
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %166 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Err(%struct.TYPE_23__* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %168 = call i32 @free(%struct.TYPE_24__* %167)
  %169 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %169, i32* %2, align 4
  br label %257

170:                                              ; preds = %155
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = call i64 @x265_encoder_headers(i32* %173, %struct.TYPE_22__** %7, i64* %8)
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %178 = call i32 (%struct.TYPE_23__*, i8*, ...) @msg_Err(%struct.TYPE_23__* %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %180 = call i32 @VLC_OBJECT(%struct.TYPE_23__* %179)
  %181 = call i32 @Close(i32 %180)
  %182 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %182, i32* %2, align 4
  br label %257

183:                                              ; preds = %170
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %184

184:                                              ; preds = %196, %183
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* %8, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %184
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %9, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %9, align 8
  br label %196

196:                                              ; preds = %188
  %197 = load i64, i64* %10, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %10, align 8
  br label %184

199:                                              ; preds = %184
  %200 = load i64, i64* %9, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 2
  store i64 %200, i64* %203, align 8
  %204 = load i64, i64* %9, align 8
  %205 = call i8* @malloc(i64 %204)
  %206 = bitcast i8* %205 to i32*
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 3
  store i32* %206, i32** %209, align 8
  store i32* %206, i32** %11, align 8
  %210 = load i32*, i32** %11, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %199
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %214 = call i32 @VLC_OBJECT(%struct.TYPE_23__* %213)
  %215 = call i32 @Close(i32 %214)
  %216 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %216, i32* %2, align 4
  br label %257

217:                                              ; preds = %199
  store i64 0, i64* %12, align 8
  br label %218

218:                                              ; preds = %242, %217
  %219 = load i64, i64* %12, align 8
  %220 = load i64, i64* %8, align 8
  %221 = icmp ult i64 %219, %220
  br i1 %221, label %222, label %245

222:                                              ; preds = %218
  %223 = load i32*, i32** %11, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %225 = load i64, i64* %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %230 = load i64, i64* %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @memcpy(i32* %223, i32 %228, i64 %233)
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %236 = load i64, i64* %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32*, i32** %11, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 %239
  store i32* %241, i32** %11, align 8
  br label %242

242:                                              ; preds = %222
  %243 = load i64, i64* %12, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %12, align 8
  br label %218

245:                                              ; preds = %218
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 1
  store i64 0, i64* %247, align 8
  %248 = load i32, i32* @VLC_TICK_INVALID, align 4
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* @Encode, align 4
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 8
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 0
  store i32* null, i32** %255, align 8
  %256 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %245, %212, %176, %164, %127, %109, %44, %27
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @x265_param_default(%struct.TYPE_21__*) #1

declare dso_local i32 @vlc_GetCPUCount(...) #1

declare dso_local i32 @msg_Err(%struct.TYPE_23__*, i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_24__*) #1

declare dso_local i32* @x265_encoder_open(%struct.TYPE_21__*) #1

declare dso_local i64 @x265_encoder_headers(i32*, %struct.TYPE_22__**, i64*) #1

declare dso_local i32 @Close(i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
