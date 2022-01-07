; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_d3d11va.c_DxSetupOutput.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_d3d11va.c_DxSetupOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32* }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"format %s is supported for output\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"GPU blacklisted for %s codec\00", align 1
@DXGI_FORMAT_P016 = common dso_local global i32 0, align 4
@DXGI_FORMAT_P010 = common dso_local global i32 0, align 4
@DXGI_FORMAT_NV12 = common dso_local global i32 0, align 4
@DXGI_FORMAT_420_OPAQUE = common dso_local global i32 0, align 4
@DXGI_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s output is supported for decoder %s.\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Can't get a decoder output format %s for decoder %s.\00", align 1
@D3D11_FORMAT_SUPPORT_SHADER_LOAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Format %s needs a processor but is not supported\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Failed to get configuration for decoder %s. (hr=0x%lX)\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"No decoder configuration possible for %s %dx%d\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Using output format %s for decoder %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"Output format from picture source not supported.\00", align 1
@D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_29__*, %struct.TYPE_28__*)* @DxSetupOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DxSetupOutput(%struct.TYPE_26__* %0, %struct.TYPE_29__* %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_31__, align 4
  %14 = alloca [6 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_32__, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %47, %3
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 188
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ID3D11VideoDevice_CheckVideoDecoderFormat(i32 %29, i32* %32, i32 %33, i32* %10)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @SUCCEEDED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @DxgiFormatToStr(i32 %43)
  %45 = call i32 (%struct.TYPE_26__*, i8*, ...) @msg_Dbg(%struct.TYPE_26__* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %38, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @D3D11DeviceAdapter(i32 %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %59, i32* %4, align 4
  br label %295

60:                                               ; preds = %50
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @IDXGIAdapter_GetDesc(i32* %61, %struct.TYPE_31__* %13)
  store i32 %62, i32* %9, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @IDXGIAdapter_Release(i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %69, i32* %4, align 4
  br label %295

70:                                               ; preds = %60
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @directx_va_canUseDecoder(%struct.TYPE_26__* %71, i32 %73, i32 %75, i32* %78, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %70
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @msg_Warn(%struct.TYPE_26__* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %92, i32* %4, align 4
  br label %295

93:                                               ; preds = %70
  store i32 0, i32* %15, align 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_30__* @GetDirectRenderingFormat(%struct.TYPE_26__* %94, i32 %97)
  store %struct.TYPE_30__* %98, %struct.TYPE_30__** %16, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %100 = icmp eq %struct.TYPE_30__* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.TYPE_30__* @GetDirectDecoderFormat(%struct.TYPE_26__* %102, i32 %105)
  store %struct.TYPE_30__* %106, %struct.TYPE_30__** %16, align 8
  br label %107

107:                                              ; preds = %101, %93
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %109 = icmp ne %struct.TYPE_30__* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %107
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 10
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @DXGI_FORMAT_P016, align 4
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %127
  store i32 %124, i32* %128, align 4
  br label %129

129:                                              ; preds = %123, %118
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 10
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @DXGI_FORMAT_P010, align 4
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %138
  store i32 %135, i32* %139, align 4
  br label %140

140:                                              ; preds = %134, %129
  %141 = load i32, i32* @DXGI_FORMAT_NV12, align 4
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %144
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* @DXGI_FORMAT_420_OPAQUE, align 4
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %149
  store i32 %146, i32* %150, align 4
  %151 = load i32, i32* @DXGI_FORMAT_UNKNOWN, align 4
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %154
  store i32 %151, i32* %155, align 4
  store i32 0, i32* %15, align 4
  br label %156

156:                                              ; preds = %288, %140
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @DXGI_FORMAT_UNKNOWN, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %291

163:                                              ; preds = %156
  store i32 0, i32* %17, align 4
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @ID3D11VideoDevice_CheckVideoDecoderFormat(i32 %166, i32* %169, i32 %173, i32* %17)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i64 @SUCCEEDED(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %163
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @DxgiFormatToStr(i32 %186)
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (%struct.TYPE_26__*, i8*, ...) @msg_Dbg(%struct.TYPE_26__* %182, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %190)
  br label %203

192:                                              ; preds = %178, %163
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @DxgiFormatToStr(i32 %197)
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (%struct.TYPE_26__*, i8*, ...) @msg_Dbg(%struct.TYPE_26__* %193, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %198, i32 %201)
  br label %288

203:                                              ; preds = %181
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @D3D11_FORMAT_SUPPORT_SHADER_LOAD, align 4
  %213 = call i32 @DeviceSupportsFormat(i32 %207, i32 %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %203
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @DxgiFormatToStr(i32 %220)
  %222 = call i32 (%struct.TYPE_26__*, i8*, ...) @msg_Dbg(%struct.TYPE_26__* %216, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %215, %203
  %224 = call i32 @ZeroMemory(%struct.TYPE_32__* %18, i32 16)
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 3
  store i32 %228, i32* %229, align 4
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 2
  store i32 %232, i32* %233, align 4
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 1
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  store i32 %241, i32* %242, align 4
  store i64 0, i64* %19, align 8
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @ID3D11VideoDevice_GetVideoDecoderConfigCount(i32 %245, %struct.TYPE_32__* %18, i64* %19)
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = call i64 @FAILED(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %223
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %9, align 4
  %256 = call i32 (%struct.TYPE_26__*, i8*, i32, i32, ...) @msg_Err(%struct.TYPE_26__* %251, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %254, i32 %255)
  br label %288

257:                                              ; preds = %223
  %258 = load i64, i64* %19, align 8
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %257
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @DxgiFormatToStr(i32 %263)
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (%struct.TYPE_26__*, i8*, i32, i32, ...) @msg_Err(%struct.TYPE_26__* %261, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %264, i32 %266, i32 %268)
  br label %288

270:                                              ; preds = %257
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @DxgiFormatToStr(i32 %275)
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (%struct.TYPE_26__*, i8*, ...) @msg_Dbg(%struct.TYPE_26__* %271, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %276, i32 %279)
  %281 = load i32, i32* %15, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %287, i32* %4, align 4
  br label %295

288:                                              ; preds = %260, %250, %192
  %289 = load i32, i32* %15, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %15, align 4
  br label %156

291:                                              ; preds = %156
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %293 = call i32 (%struct.TYPE_26__*, i8*, ...) @msg_Dbg(%struct.TYPE_26__* %292, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %294 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %294, i32* %4, align 4
  br label %295

295:                                              ; preds = %291, %270, %86, %68, %58
  %296 = load i32, i32* %4, align 4
  ret i32 %296
}

declare dso_local i32 @ID3D11VideoDevice_CheckVideoDecoderFormat(i32, i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_26__*, i8*, ...) #1

declare dso_local i32 @DxgiFormatToStr(i32) #1

declare dso_local i32* @D3D11DeviceAdapter(i32) #1

declare dso_local i32 @IDXGIAdapter_GetDesc(i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @IDXGIAdapter_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @directx_va_canUseDecoder(%struct.TYPE_26__*, i32, i32, i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local %struct.TYPE_30__* @GetDirectRenderingFormat(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_30__* @GetDirectDecoderFormat(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @DeviceSupportsFormat(i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ID3D11VideoDevice_GetVideoDecoderConfigCount(i32, %struct.TYPE_32__*, i64*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_26__*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
