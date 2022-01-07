; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_surface.c_D3D11_YUY2.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_surface.c_D3D11_YUY2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_27__, i32* }
%struct.TYPE_27__ = type { i64, i64, i64 }
%struct.TYPE_30__ = type { i32, i32, i32**, i64 }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_35__ = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"missing source context\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@KNOWN_DXGI_INDEX = common dso_local global i64 0, align 8
@D3D11_MAP_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to map source surface. (hr=0x%lX)\00", align 1
@VLC_CODEC_I420 = common dso_local global i64 0, align 8
@DXGI_FORMAT_YUY2 = common dso_local global i64 0, align 8
@DXGI_FORMAT_NV12 = common dso_local global i64 0, align 8
@DXGI_FORMAT_P010 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Unsupported D3D11VA conversion from 0x%08X to YV12\00", align 1
@VLC_CODEC_I420_10L = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, %struct.TYPE_29__*, %struct.TYPE_29__*)* @D3D11_YUY2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @D3D11_YUY2(%struct.TYPE_31__* %0, %struct.TYPE_29__* %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_34__, align 8
  %10 = alloca %struct.TYPE_35__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [3 x i64], align 16
  %16 = alloca [3 x i32*], align 16
  %17 = alloca [2 x i32*], align 16
  %18 = alloca [2 x i64], align 16
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %6, align 8
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %25 = call i32 (%struct.TYPE_31__*, i8*, ...) @msg_Err(%struct.TYPE_31__* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %269

26:                                               ; preds = %3
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %28, align 8
  store %struct.TYPE_32__* %29, %struct.TYPE_32__** %7, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %31 = call %struct.TYPE_30__* @ActiveD3D11PictureSys(%struct.TYPE_29__* %30)
  store %struct.TYPE_30__* %31, %struct.TYPE_30__** %8, align 8
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %34 = call i32 @vlc_mutex_lock(i32* %33)
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %37 = call i64 @assert_staging(%struct.TYPE_31__* %35, %struct.TYPE_30__* %36)
  %38 = load i64, i64* @VLC_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 0
  %43 = call i32 @vlc_mutex_unlock(i32* %42)
  br label %269

44:                                               ; preds = %26
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 2
  %50 = load i32**, i32*** %49, align 8
  %51 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %12, align 8
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @ID3D11DeviceContext_CopySubresourceRegion(i32 %56, i32 %59, i32 0, i32 0, i32 0, i32 0, i32* %60, i64 %61, i32* null)
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @D3D11_MAP_READ, align 4
  %70 = call i64 @ID3D11DeviceContext_Map(i32 %65, i32 %68, i32 0, i32 %69, i32 0, %struct.TYPE_35__* %10)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i64 @FAILED(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %44
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 (%struct.TYPE_31__*, i8*, ...) @msg_Err(%struct.TYPE_31__* %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 0
  %80 = call i32 @vlc_mutex_unlock(i32* %79)
  br label %269

81:                                               ; preds = %44
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VLC_CODEC_I420, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %90 = call i32 @picture_SwapUV(%struct.TYPE_29__* %89)
  br label %91

91:                                               ; preds = %88, %81
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ID3D11Texture2D_GetDesc(i32 %94, %struct.TYPE_34__* %9)
  %96 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DXGI_FORMAT_YUY2, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %156

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sdiv i32 %102, 2
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %14, align 8
  %105 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %105, align 8
  %109 = getelementptr inbounds i64, i64* %105, i64 1
  %110 = load i64, i64* %14, align 8
  store i64 %110, i64* %109, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 1
  %112 = load i64, i64* %14, align 8
  store i64 %112, i64* %111, align 8
  %113 = getelementptr inbounds [3 x i32*], [3 x i32*]* %16, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %113, align 8
  %116 = getelementptr inbounds i32*, i32** %113, i64 1
  %117 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %120 = load i64, i64* %119, align 16
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = mul i64 %120, %122
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  store i32* %124, i32** %116, align 8
  %125 = getelementptr inbounds i32*, i32** %116, i64 1
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %129 = load i64, i64* %128, align 16
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = mul i64 %129, %131
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = mul i64 %135, %137
  %139 = udiv i64 %138, 2
  %140 = getelementptr inbounds i32, i32* %133, i64 %139
  store i32* %140, i32** %125, align 8
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %142 = getelementptr inbounds [3 x i32*], [3 x i32*]* %16, i64 0, i64 0
  %143 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %147, %151
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 2
  %155 = call i32 @Copy420_P_to_P(%struct.TYPE_29__* %141, i32** %142, i64* %143, i64 %152, i32* %154)
  br label %241

156:                                              ; preds = %91
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @DXGI_FORMAT_NV12, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @DXGI_FORMAT_P010, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %235

166:                                              ; preds = %161, %156
  %167 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %167, align 8
  %170 = getelementptr inbounds i32*, i32** %167, i64 1
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = mul i64 %175, %177
  %179 = getelementptr inbounds i32, i32* %172, i64 %178
  store i32* %179, i32** %170, align 8
  %180 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %181 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %180, align 8
  %184 = getelementptr inbounds i64, i64* %180, i64 1
  %185 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %10, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %184, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @DXGI_FORMAT_NV12, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %212

192:                                              ; preds = %166
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %194 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  %195 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %196 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %202, %206
  %208 = call i32 @__MIN(i32 %198, i64 %207)
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 2
  %211 = call i32 @Copy420_SP_to_P(%struct.TYPE_29__* %193, i32** %194, i64* %195, i32 %208, i32* %210)
  br label %232

212:                                              ; preds = %166
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %214 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  %215 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i64 0, i64 0
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %222, %226
  %228 = call i32 @__MIN(i32 %218, i64 %227)
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 2
  %231 = call i32 @Copy420_16_SP_to_P(%struct.TYPE_29__* %213, i32** %214, i64* %215, i32 %228, i32 6, i32* %230)
  br label %232

232:                                              ; preds = %212, %192
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %234 = call i32 @picture_SwapUV(%struct.TYPE_29__* %233)
  br label %240

235:                                              ; preds = %161
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i32 (%struct.TYPE_31__*, i8*, ...) @msg_Err(%struct.TYPE_31__* %236, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %238)
  br label %240

240:                                              ; preds = %235, %232
  br label %241

241:                                              ; preds = %240, %100
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @VLC_CODEC_I420, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %255, label %248

248:                                              ; preds = %241
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @VLC_CODEC_I420_10L, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %248, %241
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %257 = call i32 @picture_SwapUV(%struct.TYPE_29__* %256)
  br label %258

258:                                              ; preds = %255, %248
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @ID3D11DeviceContext_Unmap(i32 %261, i32 %264, i32 0)
  %266 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %266, i32 0, i32 0
  %268 = call i32 @vlc_mutex_unlock(i32* %267)
  br label %269

269:                                              ; preds = %258, %74, %40, %23
  ret void
}

declare dso_local i32 @msg_Err(%struct.TYPE_31__*, i8*, ...) #1

declare dso_local %struct.TYPE_30__* @ActiveD3D11PictureSys(%struct.TYPE_29__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @assert_staging(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @ID3D11DeviceContext_CopySubresourceRegion(i32, i32, i32, i32, i32, i32, i32*, i64, i32*) #1

declare dso_local i64 @ID3D11DeviceContext_Map(i32, i32, i32, i32, i32, %struct.TYPE_35__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @picture_SwapUV(%struct.TYPE_29__*) #1

declare dso_local i32 @ID3D11Texture2D_GetDesc(i32, %struct.TYPE_34__*) #1

declare dso_local i32 @Copy420_P_to_P(%struct.TYPE_29__*, i32**, i64*, i64, i32*) #1

declare dso_local i32 @Copy420_SP_to_P(%struct.TYPE_29__*, i32**, i64*, i32, i32*) #1

declare dso_local i32 @__MIN(i32, i64) #1

declare dso_local i32 @Copy420_16_SP_to_P(%struct.TYPE_29__*, i32**, i64*, i32, i32, i32*) #1

declare dso_local i32 @ID3D11DeviceContext_Unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
