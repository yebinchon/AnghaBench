; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_filters.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_filters.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_20__, %struct.TYPE_25__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32**, %struct.TYPE_21__*, i32, i32, i32, i32, i32**, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32*, i32, i32* }

@D3D11_VIDEO_PROCESSOR_FILTER_CONTRAST = common dso_local global i32 0, align 4
@D3D11_VIDEO_PROCESSOR_FILTER_BRIGHTNESS = common dso_local global i32 0, align 4
@D3D11_VIDEO_PROCESSOR_FILTER_HUE = common dso_local global i32 0, align 4
@D3D11_VIDEO_PROCESSOR_FILTER_SATURATION = common dso_local global i32 0, align 4
@KNOWN_DXGI_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_24__*, %struct.TYPE_22__*)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @Filter(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca [4 x i32*], align 16
  %11 = alloca [4 x i32*], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %6, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = call %struct.TYPE_23__* @ActiveD3D11PictureSys(%struct.TYPE_22__* %17)
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %23 = call i32 @D3D11_Assert_ProcessorInput(%struct.TYPE_24__* %19, i32* %21, %struct.TYPE_23__* %22)
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = call i32 @picture_Release(%struct.TYPE_22__* %27)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %251

29:                                               ; preds = %2
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = call %struct.TYPE_22__* @filter_NewPicture(%struct.TYPE_24__* %30)
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %8, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = icmp ne %struct.TYPE_22__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = call i32 @picture_Release(%struct.TYPE_22__* %35)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %251

37:                                               ; preds = %29
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %39, align 8
  store %struct.TYPE_23__* %40, %struct.TYPE_23__** %9, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %42 = icmp ne %struct.TYPE_23__* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = call i32 @picture_Release(%struct.TYPE_22__* %48)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %3, align 8
  br label %251

50:                                               ; preds = %37
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = call i32 @picture_CopyProperties(%struct.TYPE_22__* %51, %struct.TYPE_22__* %52)
  %54 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 0
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %54, align 8
  %58 = getelementptr inbounds i32*, i32** %54, i64 1
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 7
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %58, align 8
  %64 = getelementptr inbounds i32*, i32** %58, i64 1
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 7
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %64, align 8
  %70 = getelementptr inbounds i32*, i32** %64, i64 1
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 7
  %73 = load i32**, i32*** %72, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 0
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %70, align 8
  %76 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 0
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %76, align 8
  %82 = getelementptr inbounds i32*, i32** %76, i64 1
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %82, align 8
  %88 = getelementptr inbounds i32*, i32** %82, i64 1
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %88, align 8
  %94 = getelementptr inbounds i32*, i32** %88, i64 1
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %94, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = call i32 @d3d11_device_lock(i32* %101)
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %104 = load i32, i32* @D3D11_VIDEO_PROCESSOR_FILTER_CONTRAST, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 6
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = call i64 @ApplyFilter(%struct.TYPE_25__* %103, i32 %104, i32* %106, i32* %109, i32* %112, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %50
  %119 = load i64, i64* %12, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %13, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %13, align 8
  br label %123

123:                                              ; preds = %118, %50
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = load i32, i32* @D3D11_VIDEO_PROCESSOR_FILTER_BRIGHTNESS, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 5
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = call i64 @ApplyFilter(%struct.TYPE_25__* %124, i32 %125, i32* %127, i32* %130, i32* %133, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %123
  %140 = load i64, i64* %12, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %12, align 8
  %142 = load i64, i64* %13, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %13, align 8
  br label %144

144:                                              ; preds = %139, %123
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %146 = load i32, i32* @D3D11_VIDEO_PROCESSOR_FILTER_HUE, align 4
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 4
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = call i64 @ApplyFilter(%struct.TYPE_25__* %145, i32 %146, i32* %148, i32* %151, i32* %154, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %144
  %161 = load i64, i64* %12, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %12, align 8
  %163 = load i64, i64* %13, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %13, align 8
  br label %165

165:                                              ; preds = %160, %144
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %167 = load i32, i32* @D3D11_VIDEO_PROCESSOR_FILTER_SATURATION, align 4
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 3
  %170 = load i64, i64* %12, align 8
  %171 = getelementptr inbounds [4 x i32*], [4 x i32*]* %10, i64 0, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %12, align 8
  %174 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = call i64 @ApplyFilter(%struct.TYPE_25__* %166, i32 %167, i32* %169, i32* %172, i32* %175, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %165
  %182 = load i64, i64* %12, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %12, align 8
  %184 = load i64, i64* %13, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %13, align 8
  br label %186

186:                                              ; preds = %181, %165
  %187 = load i64, i64* %13, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %212

189:                                              ; preds = %186
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @ID3D11DeviceContext_CopySubresourceRegion(i32 %192, i32 %198, i32 %201, i32 0, i32 0, i32 0, i32 %207, i32 %210, i32* null)
  br label %244

212:                                              ; preds = %186
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = load i64, i64* %12, align 8
  %229 = getelementptr inbounds [4 x i32*], [4 x i32*]* %11, i64 0, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 1
  %233 = load i32**, i32*** %232, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 0
  %235 = load i32*, i32** %234, align 8
  %236 = icmp eq i32* %230, %235
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 1, i32 0
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @ID3D11DeviceContext_CopySubresourceRegion(i32 %215, i32 %221, i32 %224, i32 0, i32 0, i32 0, i32 %242, i32 0, i32* null)
  br label %244

244:                                              ; preds = %212, %189
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = call i32 @d3d11_device_unlock(i32* %246)
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %249 = call i32 @picture_Release(%struct.TYPE_22__* %248)
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %250, %struct.TYPE_22__** %3, align 8
  br label %251

251:                                              ; preds = %244, %47, %34, %26
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  ret %struct.TYPE_22__* %252
}

declare dso_local %struct.TYPE_23__* @ActiveD3D11PictureSys(%struct.TYPE_22__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @D3D11_Assert_ProcessorInput(%struct.TYPE_24__*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @filter_NewPicture(%struct.TYPE_24__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @d3d11_device_lock(i32*) #1

declare dso_local i64 @ApplyFilter(%struct.TYPE_25__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ID3D11DeviceContext_CopySubresourceRegion(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @d3d11_device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
