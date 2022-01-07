; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_Direct3D11CreateGenericResources.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_Direct3D11CreateGenericResources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__, i32, i32, i32, %struct.TYPE_20__, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32, i8*, i32, i32, i8*, i32, i32 }

@D3D11_QUERY_EVENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@D3D11_COLOR_WRITE_ENABLE_ALL = common dso_local global i32 0, align 4
@D3D11_BLEND_OP_ADD = common dso_local global i8* null, align 8
@D3D11_BLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@D3D11_BLEND_INV_SRC_ALPHA = common dso_local global i32 0, align 4
@D3D11_BLEND_ONE = common dso_local global i32 0, align 4
@D3D11_BLEND_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not create SPU blend state. (hr=0x%lX)\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@TRANSFER_FUNC_SRGB = common dso_local global i32 0, align 4
@COLOR_PRIMARIES_SRGB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to create the SPU pixel shader. (hr=0x%lX)\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed to create the vertex input layout. (hr=0x%lX)\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Failed to create the projection vertex shader. (hr=0x%lX)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Direct3D11 resources created\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @Direct3D11CreateGenericResources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Direct3D11CreateGenericResources(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %4, align 8
  %14 = bitcast %struct.TYPE_24__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load i32, i32* @D3D11_QUERY_EVENT, align 4
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 8
  %23 = call i32 @ID3D11Device_CreateQuery(i32 %20, %struct.TYPE_24__* %6, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = bitcast %struct.TYPE_25__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 16, i1 false)
  %25 = load i32, i32* @TRUE, align 4
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 7
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* @D3D11_COLOR_WRITE_ENABLE_ALL, align 4
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 6
  store i32 %30, i32* %34, align 8
  %35 = load i8*, i8** @D3D11_BLEND_OP_ADD, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 5
  store i8* %35, i8** %39, align 8
  %40 = load i32, i32* @D3D11_BLEND_SRC_ALPHA, align 4
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 4
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @D3D11_BLEND_INV_SRC_ALPHA, align 4
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  store i32 %45, i32* %49, align 8
  %50 = load i8*, i8** @D3D11_BLEND_OP_ADD, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 2
  store i8* %50, i8** %54, align 8
  %55 = load i32, i32* @D3D11_BLEND_ONE, align 4
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* @D3D11_BLEND_ZERO, align 4
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ID3D11Device_CreateBlendState(i32 %68, %struct.TYPE_25__* %8, i32** %7)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @FAILED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %1
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @msg_Err(%struct.TYPE_22__* %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %77, i32* %2, align 4
  br label %179

78:                                               ; preds = %1
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @ID3D11DeviceContext_OMSetBlendState(i32 %82, i32* %83, i32* null, i32 -1)
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @ID3D11BlendState_Release(i32* %85)
  %87 = call i32 @ZeroMemory(i32* %9, i32 4)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ID3D11Device_CreateDepthStencilState(i32 %91, i32* %9, i32** %10)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @SUCCEEDED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %78
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @ID3D11DeviceContext_OMSetDepthStencilState(i32 %100, i32* %101, i32 0)
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @ID3D11DepthStencilState_Release(i32* %103)
  br label %105

105:                                              ; preds = %96, %78
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %139

111:                                              ; preds = %105
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 6
  %122 = load i32, i32* @TRANSFER_FUNC_SRGB, align 4
  %123 = load i32, i32* @COLOR_PRIMARIES_SRGB, align 4
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 5
  %126 = call i32 @D3D11_CompilePixelShader(%struct.TYPE_22__* %112, i32* %114, i32 %117, %struct.TYPE_19__* %119, i32* %121, i32 %122, i32 %123, i32 1, %struct.TYPE_20__* %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i64 @FAILED(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %111
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 4
  %133 = call i32 @D3D11_ReleasePixelShader(i32* %132)
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @msg_Err(%struct.TYPE_22__* %134, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %137, i32* %2, align 4
  br label %179

138:                                              ; preds = %111
  br label %139

139:                                              ; preds = %138, %105
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 3
  %147 = call i32 @D3D11_CompileFlatVertexShader(%struct.TYPE_22__* %140, i32* %142, %struct.TYPE_19__* %144, i32* %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @FAILED(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %139
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @msg_Err(%struct.TYPE_22__* %152, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %155, i32* %2, align 4
  br label %179

156:                                              ; preds = %139
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = call i32 @D3D11_CompileProjectionVertexShader(%struct.TYPE_22__* %157, i32* %159, %struct.TYPE_19__* %161, i32* %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = call i64 @FAILED(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %156
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @msg_Err(%struct.TYPE_22__* %169, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %172, i32* %2, align 4
  br label %179

173:                                              ; preds = %156
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %175 = call i32 @UpdatePicQuadPosition(%struct.TYPE_22__* %174)
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %177 = call i32 @msg_Dbg(%struct.TYPE_22__* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %178 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %173, %168, %151, %130, %73
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ID3D11Device_CreateQuery(i32, %struct.TYPE_24__*, i32*) #2

declare dso_local i32 @ID3D11Device_CreateBlendState(i32, %struct.TYPE_25__*, i32**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @msg_Err(%struct.TYPE_22__*, i8*, i32) #2

declare dso_local i32 @ID3D11DeviceContext_OMSetBlendState(i32, i32*, i32*, i32) #2

declare dso_local i32 @ID3D11BlendState_Release(i32*) #2

declare dso_local i32 @ZeroMemory(i32*, i32) #2

declare dso_local i32 @ID3D11Device_CreateDepthStencilState(i32, i32*, i32**) #2

declare dso_local i64 @SUCCEEDED(i32) #2

declare dso_local i32 @ID3D11DeviceContext_OMSetDepthStencilState(i32, i32*, i32) #2

declare dso_local i32 @ID3D11DepthStencilState_Release(i32*) #2

declare dso_local i32 @D3D11_CompilePixelShader(%struct.TYPE_22__*, i32*, i32, %struct.TYPE_19__*, i32*, i32, i32, i32, %struct.TYPE_20__*) #2

declare dso_local i32 @D3D11_ReleasePixelShader(i32*) #2

declare dso_local i32 @D3D11_CompileFlatVertexShader(%struct.TYPE_22__*, i32*, %struct.TYPE_19__*, i32*) #2

declare dso_local i32 @D3D11_CompileProjectionVertexShader(%struct.TYPE_22__*, i32*, %struct.TYPE_19__*, i32*) #2

declare dso_local i32 @UpdatePicQuadPosition(%struct.TYPE_22__*) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_22__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
