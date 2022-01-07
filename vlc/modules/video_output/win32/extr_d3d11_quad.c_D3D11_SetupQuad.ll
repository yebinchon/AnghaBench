; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_D3D11_SetupQuad.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_D3D11_SetupQuad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, float, float, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_20__*, i32, %struct.TYPE_22__*, %struct.TYPE_21__, %struct.TYPE_27__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { float, float }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_27__ = type { float, double, double, double, float*, float*, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_20__*, i64 }

@PS_CONST_LUMI_BOUNDS = common dso_local global i32 0, align 4
@D3D11_SetupQuad.IDENTITY_4X4 = internal constant [16 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@D3D11_SetupQuad.COLORSPACE_BT601_YUV_TO_FULL_RGBA = internal constant [16 x float] [float 0x3FF2A150A0000000, float 0.000000e+00, float 0x3FF9895360000000, float 0.000000e+00, float 0x3FF2A150A0000000, float 0xBFD912A220000000, float 0xBFEA03D4C0000000, float 0.000000e+00, float 0x3FF2A150A0000000, float 0x4000234AA0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@D3D11_SetupQuad.COLORSPACE_FULL_RGBA_TO_BT601_YUV = internal constant [16 x float] [float 0x3FD322D0E0000000, float 0x3FE2C8B440000000, float 0x3FBD2F1AA0000000, float 0.000000e+00, float 0xBFC5992420000000, float 0xBFD5336DE0000000, float 5.000000e-01, float 0.000000e+00, float 5.000000e-01, float 0xBFDACBC8C0000000, float 0xBFB4D0DD00000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@D3D11_SetupQuad.COLORSPACE_BT709_YUV_TO_FULL_RGBA = internal constant [16 x float] [float 0x3FF2A150A0000000, float 0.000000e+00, float 0x3FFCAF1140000000, float 0.000000e+00, float 0x3FF2A150A0000000, float 0xBFCB4BBB00000000, float 0xBFE10D97E0000000, float 0.000000e+00, float 0x3FF2A150A0000000, float 0x4000E632E0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@D3D11_SetupQuad.COLORSPACE_BT2020_YUV_TO_FULL_RGBA = internal constant [16 x float] [float 0x3FF2A150A0000000, float 0.000000e+00, float 0x3FFADBD960000000, float 0.000000e+00, float 0x3FF2A150A0000000, float 0xBFC041C4C0000000, float 0xBFDC392460000000, float 0.000000e+00, float 0x3FF2A150A0000000, float 0x4001225980000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@PS_CONST_COLORSPACE = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@D3D11_MAX_SHADER_VIEW = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @D3D11_SetupQuad(i32* %0, %struct.TYPE_26__* %1, %struct.TYPE_23__* %2, %struct.TYPE_25__* %3, %struct.TYPE_24__* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_27__, align 8
  %20 = alloca float*, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %25 = call i32 @IsRGBShader(%struct.TYPE_20__* %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = sitofp i64 %28 to float
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %32 = call float @GetFormatLuminance(i32* %30, %struct.TYPE_23__* %31)
  %33 = fdiv float %29, %32
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  store float %33, float* %36, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 1
  store double 1.000000e+00, double* %39, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %7
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 2
  store double 1.000000e+00, double* %50, align 8
  br label %66

51:                                               ; preds = %7
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sitofp i32 %55 to float
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %56, %60
  %62 = fpext float %61 to double
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 2
  store double %62, double* %65, align 8
  br label %66

66:                                               ; preds = %51, %47
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 2
  %69 = load float, float* %68, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 3
  %72 = load float, float* %71, align 4
  %73 = fcmp oeq float %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 3
  store double 1.000000e+00, double* %77, align 8
  br label %91

78:                                               ; preds = %66
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 2
  %81 = load float, float* %80, align 4
  %82 = fsub float %81, 1.000000e+00
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 3
  %85 = load float, float* %84, align 4
  %86 = fdiv float %82, %85
  %87 = fpext float %86 to double
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 3
  store double %87, double* %90, align 8
  br label %91

91:                                               ; preds = %78, %74
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %95 = load i32, i32* @PS_CONST_LUMI_BOUNDS, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 4
  %98 = call i32 @ShaderUpdateConstants(i32* %92, %struct.TYPE_26__* %93, %struct.TYPE_25__* %94, i32 %95, %struct.TYPE_27__* %97)
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %91
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %110 [
    i32 8, label %107
    i32 10, label %108
    i32 12, label %109
  ]

107:                                              ; preds = %101
  store float 0x3FB0101020000000, float* %17, align 4
  store float 0x3FE0101020000000, float* %18, align 4
  br label %111

108:                                              ; preds = %101
  store float 0x3FB0040100000000, float* %17, align 4
  store float 0x3FE0040100000000, float* %18, align 4
  br label %111

109:                                              ; preds = %101
  store float 0x3FB0010020000000, float* %17, align 4
  store float 0x3FE0010020000000, float* %18, align 4
  br label %111

110:                                              ; preds = %101
  store float 6.250000e-02, float* %17, align 4
  store float 5.000000e-01, float* %18, align 4
  br label %111

111:                                              ; preds = %110, %109, %108, %107
  br label %112

112:                                              ; preds = %111, %91
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 4
  %114 = load float*, float** %113, align 8
  %115 = call i32 @memcpy(float* %114, float* getelementptr inbounds ([16 x float], [16 x float]* @D3D11_SetupQuad.IDENTITY_4X4, i64 0, i64 0), i32 8)
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = call i32 @IsRGBShader(%struct.TYPE_20__* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %140, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store float* getelementptr inbounds ([16 x float], [16 x float]* @D3D11_SetupQuad.IDENTITY_4X4, i64 0, i64 0), float** %20, align 8
  br label %139

125:                                              ; preds = %121
  store float* getelementptr inbounds ([16 x float], [16 x float]* @D3D11_SetupQuad.COLORSPACE_FULL_RGBA_TO_BT601_YUV, i64 0, i64 0), float** %20, align 8
  %126 = load float, float* %17, align 4
  %127 = fneg float %126
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 4
  %129 = load float*, float** %128, align 8
  %130 = getelementptr inbounds float, float* %129, i64 3
  store float %127, float* %130, align 4
  %131 = load float, float* %18, align 4
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 4
  %133 = load float*, float** %132, align 8
  %134 = getelementptr inbounds float, float* %133, i64 7
  store float %131, float* %134, align 4
  %135 = load float, float* %18, align 4
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 4
  %137 = load float*, float** %136, align 8
  %138 = getelementptr inbounds float, float* %137, i64 11
  store float %135, float* %138, align 4
  br label %139

139:                                              ; preds = %125, %124
  br label %177

140:                                              ; preds = %112
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store float* getelementptr inbounds ([16 x float], [16 x float]* @D3D11_SetupQuad.IDENTITY_4X4, i64 0, i64 0), float** %20, align 8
  br label %176

144:                                              ; preds = %140
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %151 [
    i32 129, label %148
    i32 131, label %149
    i32 130, label %150
    i32 128, label %152
  ]

148:                                              ; preds = %144
  store float* getelementptr inbounds ([16 x float], [16 x float]* @D3D11_SetupQuad.COLORSPACE_BT709_YUV_TO_FULL_RGBA, i64 0, i64 0), float** %20, align 8
  br label %160

149:                                              ; preds = %144
  store float* getelementptr inbounds ([16 x float], [16 x float]* @D3D11_SetupQuad.COLORSPACE_BT2020_YUV_TO_FULL_RGBA, i64 0, i64 0), float** %20, align 8
  br label %160

150:                                              ; preds = %144
  store float* getelementptr inbounds ([16 x float], [16 x float]* @D3D11_SetupQuad.COLORSPACE_BT601_YUV_TO_FULL_RGBA, i64 0, i64 0), float** %20, align 8
  br label %160

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %144, %151
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 3
  %155 = load float, float* %154, align 4
  %156 = fcmp ogt float %155, 5.760000e+02
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store float* getelementptr inbounds ([16 x float], [16 x float]* @D3D11_SetupQuad.COLORSPACE_BT709_YUV_TO_FULL_RGBA, i64 0, i64 0), float** %20, align 8
  br label %159

158:                                              ; preds = %152
  store float* getelementptr inbounds ([16 x float], [16 x float]* @D3D11_SetupQuad.COLORSPACE_BT601_YUV_TO_FULL_RGBA, i64 0, i64 0), float** %20, align 8
  br label %159

159:                                              ; preds = %158, %157
  br label %160

160:                                              ; preds = %159, %150, %149, %148
  %161 = load float, float* %17, align 4
  %162 = fneg float %161
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 4
  %164 = load float*, float** %163, align 8
  %165 = getelementptr inbounds float, float* %164, i64 3
  store float %162, float* %165, align 4
  %166 = load float, float* %18, align 4
  %167 = fneg float %166
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 4
  %169 = load float*, float** %168, align 8
  %170 = getelementptr inbounds float, float* %169, i64 7
  store float %167, float* %170, align 4
  %171 = load float, float* %18, align 4
  %172 = fneg float %171
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 4
  %174 = load float*, float** %173, align 8
  %175 = getelementptr inbounds float, float* %174, i64 11
  store float %172, float* %175, align 4
  br label %176

176:                                              ; preds = %160, %143
  br label %177

177:                                              ; preds = %176, %139
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 5
  %179 = load float*, float** %178, align 8
  %180 = load float*, float** %20, align 8
  %181 = call i32 @memcpy(float* %179, float* %180, i32 8)
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %184, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %177
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @GetPrimariesTransform(i32 %191, i32 %194, i32 %197)
  br label %199

199:                                              ; preds = %189, %177
  %200 = load i32*, i32** %9, align 8
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %203 = load i32, i32* @PS_CONST_COLORSPACE, align 4
  %204 = call i32 @ShaderUpdateConstants(i32* %200, %struct.TYPE_26__* %201, %struct.TYPE_25__* %202, i32 %203, %struct.TYPE_27__* %19)
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  store i32 %209, i32* %212, align 4
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 8
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @ID3D11DeviceContext_AddRef(i32 %222)
  %224 = load i32*, i32** %9, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %227 = load i32*, i32** %14, align 8
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @D3D11_UpdateQuadPosition(i32* %224, %struct.TYPE_26__* %225, %struct.TYPE_25__* %226, i32* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %199
  %232 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %232, i32* %8, align 4
  br label %262

233:                                              ; preds = %199
  store i64 0, i64* %21, align 8
  br label %234

234:                                              ; preds = %251, %233
  %235 = load i64, i64* %21, align 8
  %236 = load i64, i64* @D3D11_MAX_SHADER_VIEW, align 8
  %237 = icmp ult i64 %235, %236
  br i1 %237, label %238, label %254

238:                                              ; preds = %234
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %240, align 8
  %242 = load i64, i64* %21, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  store float 0.000000e+00, float* %244, align 4
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %246, align 8
  %248 = load i64, i64* %21, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 1
  store float 1.000000e+00, float* %250, align 4
  br label %251

251:                                              ; preds = %238
  %252 = load i64, i64* %21, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %21, align 8
  br label %234

254:                                              ; preds = %234
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %256, align 8
  %258 = call i32 @DxgiResourceCount(%struct.TYPE_20__* %257)
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 8
  %261 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %254, %231
  %263 = load i32, i32* %8, align 4
  ret i32 %263
}

declare dso_local i32 @IsRGBShader(%struct.TYPE_20__*) #1

declare dso_local float @GetFormatLuminance(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @ShaderUpdateConstants(i32*, %struct.TYPE_26__*, %struct.TYPE_25__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @GetPrimariesTransform(i32, i32, i32) #1

declare dso_local i32 @ID3D11DeviceContext_AddRef(i32) #1

declare dso_local i32 @D3D11_UpdateQuadPosition(i32*, %struct.TYPE_26__*, %struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @DxgiResourceCount(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
