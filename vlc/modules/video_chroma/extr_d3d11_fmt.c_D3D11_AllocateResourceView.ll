; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_D3D11_AllocateResourceView.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d11_fmt.c_D3D11_AllocateResourceView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@D3D11_MAX_SHADER_VIEW = common dso_local global i32 0, align 4
@D3D11_BIND_SHADER_RESOURCE = common dso_local global i32 0, align 4
@D3D11_SRV_DIMENSION_TEXTURE2D = common dso_local global i32 0, align 4
@D3D11_SRV_DIMENSION_TEXTURE2DARRAY = common dso_local global i32 0, align 4
@DXGI_FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Could not Create the Texture ResourceView %d slice %d. (hr=0x%lX)\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @D3D11_AllocateResourceView(i32* %0, i32* %1, %struct.TYPE_11__* %2, i32** %3, i32 %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  %18 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %21 = zext i32 %20 to i64
  %22 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  %23 = load i32**, i32*** %11, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ID3D11Texture2D_GetDesc(i32* %25, %struct.TYPE_12__* %17)
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @D3D11_BIND_SHADER_RESOURCE, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @assert(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %6
  %36 = load i32, i32* @D3D11_SRV_DIMENSION_TEXTURE2D, align 4
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %56

40:                                               ; preds = %6
  %41 = load i32, i32* @D3D11_SRV_DIMENSION_TEXTURE2DARRAY, align 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %56

56:                                               ; preds = %40, %35
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %102, %56
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %61
  %75 = load i32**, i32*** %13, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* null, i32** %78, align 8
  br label %101

79:                                               ; preds = %61
  %80 = load i32*, i32** %9, align 8
  %81 = load i32**, i32*** %11, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32**, i32*** %13, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = call i32 @ID3D11Device_CreateShaderResourceView(i32* %80, i32* %85, %struct.TYPE_13__* %16, i32** %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i64 @FAILED(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %79
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @msg_Err(i32* %95, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97, i32 %98)
  br label %105

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100, %74
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %57

105:                                              ; preds = %94, %57
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @D3D11_MAX_SHADER_VIEW, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %114, %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %15, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load i32**, i32*** %13, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @ID3D11ShaderResourceView_Release(i32* %119)
  %121 = load i32**, i32*** %13, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  store i32* null, i32** %124, align 8
  br label %110

125:                                              ; preds = %110
  %126 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %126, i32* %7, align 4
  br label %129

127:                                              ; preds = %105
  %128 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ID3D11Texture2D_GetDesc(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ID3D11Device_CreateShaderResourceView(i32*, i32*, %struct.TYPE_13__*, i32**) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @msg_Err(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @ID3D11ShaderResourceView_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
