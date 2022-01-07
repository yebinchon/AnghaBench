; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_UpdateSwapchain.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_UpdateSwapchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d11_local_swapchain = type { i32, i32**, %struct.TYPE_14__*, i32, i32, i32* }
%struct.TYPE_14__ = type { i64, i64, i32, i32* }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64, i32 }

@D3D11_FORMAT_SUPPORT_DISPLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not get the SwapChain format.\00", align 1
@DXGI_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to resize the backbuffer. (hr=0x%lX)\00", align 1
@IID_ID3D11Texture2D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Could not get the backbuffer for the Swapchain. (hr=0x%lX)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to create the target view. (hr=0x%lX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3d11_local_swapchain*, %struct.TYPE_13__*)* @UpdateSwapchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateSwapchain(%struct.d3d11_local_swapchain* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3d11_local_swapchain*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.d3d11_local_swapchain* %0, %struct.d3d11_local_swapchain** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %13 = bitcast %struct.TYPE_16__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  store i64 0, i64* %9, align 8
  %14 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %15 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %2
  store i32* null, i32** %10, align 8
  %21 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %22 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ID3D11RenderTargetView_GetResource(i32* %25, i32** %10)
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @ID3D11Texture2D_GetDesc(i32* %30, %struct.TYPE_16__* %8)
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @ID3D11Resource_Release(i32* %32)
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %36 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %35, i32 0, i32 2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %46 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %45, i32 0, i32 2
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %34, %2
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %263

71:                                               ; preds = %64, %57, %50
  store i64 0, i64* %11, align 8
  br label %72

72:                                               ; preds = %101, %71
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %75 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = call i64 @ARRAY_SIZE(i32** %76)
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %72
  %80 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %81 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %79
  %88 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %89 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %88, i32 0, i32 1
  %90 = load i32**, i32*** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @ID3D11RenderTargetView_Release(i32* %93)
  %95 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %96 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %87, %79
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %72

104:                                              ; preds = %72
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %12, align 8
  %105 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %106 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %109 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %108, i32 0, i32 3
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 8
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 10, i32 8
  %116 = load i32, i32* @D3D11_FORMAT_SUPPORT_DISPLAY, align 4
  %117 = call %struct.TYPE_14__* @FindD3D11Format(i32 %107, i32* %109, i32 0, i32 1, i32 %115, i32 0, i32 0, i32 0, i32 %116)
  store %struct.TYPE_14__* %117, %struct.TYPE_14__** %12, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %119 = icmp eq %struct.TYPE_14__* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %104
  %124 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %125 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %128 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %127, i32 0, i32 3
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 8
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 10, i32 8
  %135 = load i32, i32* @D3D11_FORMAT_SUPPORT_DISPLAY, align 4
  %136 = call %struct.TYPE_14__* @FindD3D11Format(i32 %126, i32* %128, i32 0, i32 0, i32 %134, i32 0, i32 0, i32 0, i32 %135)
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %12, align 8
  br label %137

137:                                              ; preds = %123, %104
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %139 = icmp eq %struct.TYPE_14__* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %145 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32, i8*, ...) @msg_Err(i32 %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %263

148:                                              ; preds = %137
  %149 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %150 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %148
  %154 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %155 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %154, i32 0, i32 2
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %158 = icmp ne %struct.TYPE_14__* %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %161 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @IDXGISwapChain_Release(i32* %162)
  %164 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %165 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %164, i32 0, i32 5
  store i32* null, i32** %165, align 8
  %166 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %167 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %159, %153, %148
  %169 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %170 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %169, i32 0, i32 5
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %191

173:                                              ; preds = %168
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %175 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %176 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %175, i32 0, i32 2
  store %struct.TYPE_14__* %174, %struct.TYPE_14__** %176, align 8
  %177 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @CreateSwapchain(%struct.d3d11_local_swapchain* %177, i64 %180, i64 %183)
  %185 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %186 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %173
  store i32 0, i32* %3, align 4
  br label %263

190:                                              ; preds = %173
  br label %213

191:                                              ; preds = %168
  %192 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %193 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* @DXGI_FORMAT_UNKNOWN, align 4
  %202 = call i32 @IDXGISwapChain_ResizeBuffers(i32* %194, i32 0, i64 %197, i64 %200, i32 %201, i32 0)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i64 @FAILED(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %191
  %207 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %208 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %7, align 4
  %211 = call i32 (i32, i8*, ...) @msg_Err(i32 %209, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %210)
  store i32 0, i32* %3, align 4
  br label %263

212:                                              ; preds = %191
  br label %213

213:                                              ; preds = %212, %190
  %214 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %215 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = bitcast i32** %6 to i32*
  %218 = call i32 @IDXGISwapChain_GetBuffer(i32* %216, i32 0, i32* @IID_ID3D11Texture2D, i32* %217)
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = call i64 @FAILED(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %213
  %223 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %224 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %7, align 4
  %227 = call i32 (i32, i8*, ...) @msg_Err(i32 %225, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %226)
  store i32 0, i32* %3, align 4
  br label %263

228:                                              ; preds = %213
  %229 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %230 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %229, i32 0, i32 3
  %231 = load i32*, i32** %6, align 8
  %232 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %233 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %232, i32 0, i32 2
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %236 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %235, i32 0, i32 1
  %237 = load i32**, i32*** %236, align 8
  %238 = call i32 @D3D11_CreateRenderTargets(i32* %230, i32* %231, %struct.TYPE_14__* %234, i32** %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32*, i32** %6, align 8
  %240 = call i32 @ID3D11Texture2D_Release(i32* %239)
  %241 = load i32, i32* %7, align 4
  %242 = call i64 @FAILED(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %228
  %245 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %246 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %7, align 4
  %249 = call i32 (i32, i8*, ...) @msg_Err(i32 %247, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %248)
  store i32 0, i32* %3, align 4
  br label %263

250:                                              ; preds = %228
  %251 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %252 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %251, i32 0, i32 3
  %253 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %254 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %253, i32 0, i32 2
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %257 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %256, i32 0, i32 1
  %258 = load i32**, i32*** %257, align 8
  %259 = call i32 @D3D11_ClearRenderTargets(i32* %252, %struct.TYPE_14__* %255, i32** %258)
  %260 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %4, align 8
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %262 = call i32 @SelectSwapchainColorspace(%struct.d3d11_local_swapchain* %260, %struct.TYPE_13__* %261)
  store i32 1, i32* %3, align 4
  br label %263

263:                                              ; preds = %250, %244, %222, %206, %189, %143, %70
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ID3D11RenderTargetView_GetResource(i32*, i32**) #2

declare dso_local i32 @ID3D11Texture2D_GetDesc(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @ID3D11Resource_Release(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @ARRAY_SIZE(i32**) #2

declare dso_local i32 @ID3D11RenderTargetView_Release(i32*) #2

declare dso_local %struct.TYPE_14__* @FindD3D11Format(i32, i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @msg_Err(i32, i8*, ...) #2

declare dso_local i32 @IDXGISwapChain_Release(i32*) #2

declare dso_local i32 @CreateSwapchain(%struct.d3d11_local_swapchain*, i64, i64) #2

declare dso_local i32 @IDXGISwapChain_ResizeBuffers(i32*, i32, i64, i64, i32, i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @IDXGISwapChain_GetBuffer(i32*, i32, i32*, i32*) #2

declare dso_local i32 @D3D11_CreateRenderTargets(i32*, i32*, %struct.TYPE_14__*, i32**) #2

declare dso_local i32 @ID3D11Texture2D_Release(i32*) #2

declare dso_local i32 @D3D11_ClearRenderTargets(i32*, %struct.TYPE_14__*, i32**) #2

declare dso_local i32 @SelectSwapchainColorspace(%struct.d3d11_local_swapchain*, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
