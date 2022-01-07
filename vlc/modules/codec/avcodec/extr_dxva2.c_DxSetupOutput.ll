; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_dxva2.c_DxSetupOutput.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_dxva2.c_DxSetupOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@GPU_MANUFACTURER_INTEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"GPU blacklisted for %s codec\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"IDirectXVideoDecoderService_GetDecoderRenderTargets failed\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s is supported for output\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%d is supported for output (%4.4s)\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@d3d_formats = common dso_local global %struct.TYPE_24__* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Using decoder output '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, i32*)* @DxSetupOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DxSetupOutput(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_25__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @VLC_UNUSED(i32* %23)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %8, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @IDirect3D9_GetAdapterIdentifier(i32 %31, i32 %35, i32 0, %struct.TYPE_25__* %9)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %4, align 4
  br label %216

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 65535
  store i32 %46, i32* %11, align 4
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @GPU_MANUFACTURER_INTEL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 16
  %56 = icmp sge i32 %55, 100
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 16
  %62 = sub nsw i32 %61, 100
  %63 = mul nsw i32 %62, 1000
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %57, %51, %42
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @directx_va_canUseDecoder(%struct.TYPE_21__* %67, i64 %69, i32 %71, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %66
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @msg_Warn(%struct.TYPE_21__* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %84, i32* %4, align 4
  br label %216

85:                                               ; preds = %66
  %86 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %86, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64* null, i64** %14, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @IDirectXVideoDecoderService_GetDecoderRenderTargets(i32 %89, i32 %92, i32* %13, i64** %14)
  %94 = call i64 @FAILED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = call i32 @msg_Err(%struct.TYPE_21__* %97, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %99, i32* %4, align 4
  br label %216

100:                                              ; preds = %85
  store i32 0, i32* %15, align 4
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load i64*, i64** %14, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %16, align 8
  %111 = load i64, i64* %16, align 8
  %112 = call %struct.TYPE_24__* @D3dFindFormat(i64 %111)
  store %struct.TYPE_24__* %112, %struct.TYPE_24__** %17, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %114 = icmp ne %struct.TYPE_24__* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %105
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (%struct.TYPE_21__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_21__* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %119)
  br label %126

121:                                              ; preds = %105
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %123 = load i64, i64* %16, align 8
  %124 = bitcast i64* %16 to i8*
  %125 = call i32 (%struct.TYPE_21__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_21__* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %123, i8* %124)
  br label %126

126:                                              ; preds = %121, %115
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %101

130:                                              ; preds = %101
  store i32 0, i32* %18, align 4
  br label %131

131:                                              ; preds = %209, %130
  %132 = load i32, i32* %18, align 4
  %133 = icmp ult i32 %132, 2
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @VLC_SUCCESS, align 4
  %137 = icmp ne i32 %135, %136
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi i1 [ false, %131 ], [ %137, %134 ]
  br i1 %139, label %140, label %212

140:                                              ; preds = %138
  store i32 0, i32* %19, align 4
  br label %141

141:                                              ; preds = %205, %140
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** @d3d_formats, align 8
  %143 = load i32, i32* %19, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %208

149:                                              ; preds = %141
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** @d3d_formats, align 8
  %151 = load i32, i32* %19, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i64 %152
  store %struct.TYPE_24__* %153, %struct.TYPE_24__** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %154

154:                                              ; preds = %174, %149
  %155 = load i32, i32* %21, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp ult i32 %158, %159
  br label %161

161:                                              ; preds = %157, %154
  %162 = phi i1 [ false, %154 ], [ %160, %157 ]
  br i1 %162, label %163, label %177

163:                                              ; preds = %161
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %14, align 8
  %168 = load i32, i32* %22, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %166, %171
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %21, align 4
  br label %174

174:                                              ; preds = %163
  %175 = load i32, i32* %22, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %22, align 4
  br label %154

177:                                              ; preds = %161
  %178 = load i32, i32* %21, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  br label %205

181:                                              ; preds = %177
  %182 = load i32, i32* %18, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %187, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %205

193:                                              ; preds = %184, %181
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 (%struct.TYPE_21__*, i8*, i64, ...) @msg_Dbg(%struct.TYPE_21__* %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %197)
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %204, i32* %12, align 4
  br label %208

205:                                              ; preds = %192, %180
  %206 = load i32, i32* %19, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %19, align 4
  br label %141

208:                                              ; preds = %193, %141
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %18, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %18, align 4
  br label %131

212:                                              ; preds = %138
  %213 = load i64*, i64** %14, align 8
  %214 = call i32 @CoTaskMemFree(i64* %213)
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %212, %96, %78, %40
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @IDirect3D9_GetAdapterIdentifier(i32, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @directx_va_canUseDecoder(%struct.TYPE_21__*, i64, i32, i32, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @IDirectXVideoDecoderService_GetDecoderRenderTargets(i32, i32, i32*, i64**) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*) #1

declare dso_local %struct.TYPE_24__* @D3dFindFormat(i64) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*, i64, ...) #1

declare dso_local i32 @CoTaskMemFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
