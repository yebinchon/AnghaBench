; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_deinterlace.c_RenderPic.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_deinterlace.c_RenderPic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_22__, %struct.TYPE_23__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_25__** }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_26__ = type { i32, i32*, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_29__ = type { i64, i64, i64, i64 }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32 }

@D3D11_VIDEO_FRAME_FORMAT_INTERLACED_TOP_FIELD_FIRST = common dso_local global i32 0, align 4
@D3D11_VIDEO_FRAME_FORMAT_INTERLACED_BOTTOM_FIELD_FIRST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@KNOWN_DXGI_INDEX = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32)* @RenderPic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RenderPic(%struct.TYPE_27__* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_30__, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca %struct.TYPE_26__*, align 8
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca %struct.TYPE_26__*, align 8
  %24 = alloca %struct.TYPE_29__, align 8
  %25 = alloca %struct.TYPE_31__, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @VLC_UNUSED(i32 %26)
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  store %struct.TYPE_28__* %30, %struct.TYPE_28__** %13, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %32 = call %struct.TYPE_26__* @ActiveD3D11PictureSys(%struct.TYPE_25__* %31)
  store %struct.TYPE_26__* %32, %struct.TYPE_26__** %14, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %36, i64 0
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %15, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %42, i64 1
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %16, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %48, i64 2
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  store %struct.TYPE_25__* %50, %struct.TYPE_25__** %17, align 8
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %5
  %54 = load i32, i32* @D3D11_VIDEO_FRAME_FORMAT_INTERLACED_TOP_FIELD_FIRST, align 4
  br label %57

55:                                               ; preds = %5
  %56 = load i32, i32* @D3D11_VIDEO_FRAME_FORMAT_INTERLACED_BOTTOM_FIELD_FIRST, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %18, align 4
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamFrameFormat(i32 %62, i32 %66, i32 0, i32 %67)
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FALSE, align 4
  %78 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamAutoProcessingMode(i32 %72, i32 %76, i32 0, i32 %77)
  %79 = bitcast %struct.TYPE_30__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %79, i8 0, i64 40, i1 false)
  %80 = load i32, i32* @TRUE, align 4
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 6
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 1, i32 0
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %88 = icmp ne %struct.TYPE_25__* %87, null
  br i1 %88, label %89, label %175

89:                                               ; preds = %57
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %91 = icmp ne %struct.TYPE_25__* %90, null
  br i1 %91, label %92, label %175

92:                                               ; preds = %89
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %94 = call %struct.TYPE_26__* @ActiveD3D11PictureSys(%struct.TYPE_25__* %93)
  store %struct.TYPE_26__* %94, %struct.TYPE_26__** %20, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %96 = icmp ne %struct.TYPE_26__* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %92
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %106 = call i32 @D3D11_Assert_ProcessorInput(%struct.TYPE_27__* %102, %struct.TYPE_22__* %104, %struct.TYPE_26__* %105)
  %107 = call i64 @FAILED(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101, %92
  %110 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %110, i32* %6, align 4
  br label %294

111:                                              ; preds = %101
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %113 = call %struct.TYPE_26__* @ActiveD3D11PictureSys(%struct.TYPE_25__* %112)
  store %struct.TYPE_26__* %113, %struct.TYPE_26__** %21, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %115 = icmp ne %struct.TYPE_26__* %114, null
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %111
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %125 = call i32 @D3D11_Assert_ProcessorInput(%struct.TYPE_27__* %121, %struct.TYPE_22__* %123, %struct.TYPE_26__* %124)
  %126 = call i64 @FAILED(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120, %111
  %129 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %129, i32* %6, align 4
  br label %294

130:                                              ; preds = %120
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %132 = icmp ne %struct.TYPE_25__* %131, null
  br i1 %132, label %133, label %165

133:                                              ; preds = %130
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %135 = call %struct.TYPE_26__* @ActiveD3D11PictureSys(%struct.TYPE_25__* %134)
  store %struct.TYPE_26__* %135, %struct.TYPE_26__** %22, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %137 = icmp ne %struct.TYPE_26__* %136, null
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %133
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %147 = call i32 @D3D11_Assert_ProcessorInput(%struct.TYPE_27__* %143, %struct.TYPE_22__* %145, %struct.TYPE_26__* %146)
  %148 = call i64 @FAILED(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %142, %133
  %151 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %151, i32* %6, align 4
  br label %294

152:                                              ; preds = %142
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 5
  store i32* %158, i32** %159, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 4
  store i32* %161, i32** %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 1
  store i32 1, i32* %163, align 4
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 2
  store i32 1, i32* %164, align 8
  br label %174

165:                                              ; preds = %130
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 3
  store i32 %168, i32* %169, align 4
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 4
  store i32* %171, i32** %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 1
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %165, %152
  br label %199

175:                                              ; preds = %89, %57
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %177 = call %struct.TYPE_26__* @ActiveD3D11PictureSys(%struct.TYPE_25__* %176)
  store %struct.TYPE_26__* %177, %struct.TYPE_26__** %23, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %179 = icmp ne %struct.TYPE_26__* %178, null
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %175
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %189 = call i32 @D3D11_Assert_ProcessorInput(%struct.TYPE_27__* %185, %struct.TYPE_22__* %187, %struct.TYPE_26__* %188)
  %190 = call i64 @FAILED(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184, %175
  %193 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %193, i32* %6, align 4
  br label %294

194:                                              ; preds = %184
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 3
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %194, %174
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 2
  store i64 %203, i64* %204, align 8
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  store i64 %208, i64* %209, align 8
  %210 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %211, %215
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 3
  store i64 %216, i64* %217, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %219, %223
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 1
  store i64 %224, i64* %225, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @TRUE, align 4
  %235 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamSourceRect(i32 %229, i32 %233, i32 0, i32 %234, %struct.TYPE_29__* %24)
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @TRUE, align 4
  %245 = call i32 @ID3D11VideoContext_VideoProcessorSetStreamDestRect(i32 %239, i32 %243, i32 0, i32 %244, %struct.TYPE_29__* %24)
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ID3D11VideoContext_VideoProcessorBlt(i32 %249, i32 %253, i32 %256, i32 0, i32 1, %struct.TYPE_30__* %19)
  store i32 %257, i32* %12, align 4
  %258 = load i32, i32* %12, align 4
  %259 = call i64 @FAILED(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %199
  %262 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %262, i32* %6, align 4
  br label %294

263:                                              ; preds = %199
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 0
  store i32 1, i32* %264, align 4
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 1
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  store i32 %269, i32* %265, align 4
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 2
  store i32 0, i32* %270, align 4
  %271 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 3
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %271, align 4
  %276 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 4
  store i32 0, i32* %276, align 4
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @ID3D11DeviceContext_CopySubresourceRegion(i32 %279, i32 %285, i32 %288, i32 0, i32 0, i32 0, i32 %291, i32 0, %struct.TYPE_31__* %25)
  %293 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %293, i32* %6, align 4
  br label %294

294:                                              ; preds = %263, %261, %192, %150, %128, %109
  %295 = load i32, i32* %6, align 4
  ret i32 %295
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local %struct.TYPE_26__* @ActiveD3D11PictureSys(%struct.TYPE_25__*) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamFrameFormat(i32, i32, i32, i32) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamAutoProcessingMode(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @D3D11_Assert_ProcessorInput(%struct.TYPE_27__*, %struct.TYPE_22__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamSourceRect(i32, i32, i32, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorSetStreamDestRect(i32, i32, i32, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @ID3D11VideoContext_VideoProcessorBlt(i32, i32, i32, i32, i32, %struct.TYPE_30__*) #1

declare dso_local i32 @ID3D11DeviceContext_CopySubresourceRegion(i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
