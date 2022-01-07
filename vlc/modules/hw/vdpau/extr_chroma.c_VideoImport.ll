; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_VideoImport.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_chroma.c_VideoImport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_19__, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32*, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i8*, i32 }

@VDP_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"video %s %s failure: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"surface\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"creation\00", align 1
@VLC_CODEC_I420 = common dso_local global i64 0, align 8
@VLC_CODEC_I422 = common dso_local global i64 0, align 8
@VLC_CODEC_I444 = common dso_local global i64 0, align 8
@VLC_CODEC_YV12 = common dso_local global i64 0, align 8
@VLC_CODEC_NV12 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@VLC_CODEC_VDPAU_VIDEO_420 = common dso_local global i64 0, align 8
@VLC_CODEC_VDPAU_VIDEO_422 = common dso_local global i64 0, align 8
@VLC_CODEC_VDPAU_VIDEO_444 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_24__*, %struct.TYPE_23__*)* @VideoImport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @VideoImport(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [3 x i8*], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %6, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %291

23:                                               ; preds = %2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @vdp_video_surface_create(i32* %26, i32 %29, i32 %32, i32 %37, i32 %42, i32* %7)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @VDP_STATUS_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %23
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @vdp_get_error_string(i32* %51, i64 %52)
  %54 = call i32 @msg_Err(%struct.TYPE_24__* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %291

55:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %101, %55
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %104

62:                                               ; preds = %56
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %75, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %70, i64 %85
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %88
  store i8* %86, i8** %89, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %99
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %62
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %56

104:                                              ; preds = %56
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VLC_CODEC_I420, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %125, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @VLC_CODEC_I422, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @VLC_CODEC_I444, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %154

125:                                              ; preds = %118, %111, %104
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i64 2
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 1
  store i8* %131, i8** %132, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i64 1
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 2
  store i8* %138, i8** %139, align 16
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i64 2
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %145, i32* %146, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %125, %118
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @VLC_CODEC_I420, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %175, label %161

161:                                              ; preds = %154
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @VLC_CODEC_YV12, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %175, label %168

168:                                              ; preds = %161
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @VLC_CODEC_NV12, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %213

175:                                              ; preds = %168, %161, %154
  store i32 1, i32* %12, align 4
  br label %176

176:                                              ; preds = %209, %175
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %212

182:                                              ; preds = %176
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = bitcast i8* %186 to i32*
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sdiv i32 %192, 2
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %193, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %187, i64 %203
  %205 = bitcast i32* %204 to i8*
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %207
  store i8* %205, i8** %208, align 8
  br label %209

209:                                              ; preds = %182
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %12, align 4
  br label %176

212:                                              ; preds = %176
  br label %213

213:                                              ; preds = %212, %168
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %7, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %222 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %223 = call i64 @vdp_video_surface_put_bits_y_cb_cr(i32* %216, i32 %217, i32 %220, i8** %221, i32* %222)
  store i64 %223, i64* %8, align 8
  %224 = load i64, i64* %8, align 8
  %225 = load i64, i64* @VDP_STATUS_OK, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %213
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* %8, align 8
  %233 = call i32 @vdp_get_error_string(i32* %231, i64 %232)
  %234 = call i32 @msg_Err(%struct.TYPE_24__* %228, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %233)
  br label %285

235:                                              ; preds = %213
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 1
  %238 = bitcast %struct.TYPE_22__* %13 to i8*
  %239 = bitcast %struct.TYPE_22__* %237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %238, i8* align 8 %239, i64 8, i1 false)
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  switch i32 %242, label %252 [
    i32 130, label %243
    i32 129, label %246
    i32 128, label %249
  ]

243:                                              ; preds = %235
  %244 = load i64, i64* @VLC_CODEC_VDPAU_VIDEO_420, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %244, i64* %245, align 8
  br label %254

246:                                              ; preds = %235
  %247 = load i64, i64* @VLC_CODEC_VDPAU_VIDEO_422, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %247, i64* %248, align 8
  br label %254

249:                                              ; preds = %235
  %250 = load i64, i64* @VLC_CODEC_VDPAU_VIDEO_444, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i64 %250, i64* %251, align 8
  br label %254

252:                                              ; preds = %235
  %253 = call i32 (...) @vlc_assert_unreachable()
  br label %254

254:                                              ; preds = %252, %249, %246, %243
  %255 = call %struct.TYPE_23__* @picture_NewFromFormat(%struct.TYPE_22__* %13)
  store %struct.TYPE_23__* %255, %struct.TYPE_23__** %14, align 8
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %257 = icmp eq %struct.TYPE_23__* %256, null
  %258 = zext i1 %257 to i32
  %259 = call i64 @unlikely(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %285

262:                                              ; preds = %254
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %265 = call i32 @picture_CopyProperties(%struct.TYPE_23__* %263, %struct.TYPE_23__* %264)
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %267 = call i32 @picture_Release(%struct.TYPE_23__* %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %273 = call i64 @vlc_vdp_video_attach(i32* %270, i32 %271, %struct.TYPE_23__* %272)
  store i64 %273, i64* %8, align 8
  %274 = load i64, i64* %8, align 8
  %275 = load i64, i64* @VDP_STATUS_OK, align 8
  %276 = icmp ne i64 %274, %275
  %277 = zext i1 %276 to i32
  %278 = call i64 @unlikely(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %262
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %282 = call i32 @picture_Release(%struct.TYPE_23__* %281)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %14, align 8
  br label %283

283:                                              ; preds = %280, %262
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %284, %struct.TYPE_23__** %3, align 8
  br label %294

285:                                              ; preds = %261, %227
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %7, align 4
  %290 = call i32 @vdp_video_surface_destroy(i32* %288, i32 %289)
  br label %291

291:                                              ; preds = %285, %47, %22
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %293 = call i32 @picture_Release(%struct.TYPE_23__* %292)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %294

294:                                              ; preds = %291, %283
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  ret %struct.TYPE_23__* %295
}

declare dso_local i64 @vdp_video_surface_create(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_24__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @vdp_get_error_string(i32*, i64) #1

declare dso_local i64 @vdp_video_surface_put_bits_y_cb_cr(i32*, i32, i32, i8**, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local %struct.TYPE_23__* @picture_NewFromFormat(%struct.TYPE_22__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_23__*) #1

declare dso_local i64 @vlc_vdp_video_attach(i32*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @vdp_video_surface_destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
