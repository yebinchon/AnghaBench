; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_surface.c_D3D11_RGBA.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_surface.c_D3D11_RGBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@KNOWN_DXGI_INDEX = common dso_local global i64 0, align 8
@D3D11_MAP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to map source surface. (hr=0x%lX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_21__*)* @D3D11_RGBA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @D3D11_RGBA(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_25__, align 4
  %10 = alloca %struct.TYPE_26__, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %7, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = call %struct.TYPE_22__* @ActiveD3D11PictureSys(%struct.TYPE_21__* %22)
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %8, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = call i32 @vlc_mutex_lock(i32* %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = call i64 @assert_staging(%struct.TYPE_23__* %27, %struct.TYPE_22__* %28)
  %30 = load i64, i64* @VLC_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = call i32 @vlc_mutex_unlock(i32* %34)
  br label %111

36:                                               ; preds = %3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ID3D11DeviceContext_CopySubresourceRegion(i32 %39, i32 %42, i32 0, i32 0, i32 0, i32 0, i32 %48, i32 %51, i32* null)
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @D3D11_MAP_READ, align 4
  %60 = call i32 @ID3D11DeviceContext_Map(i32 %55, i32 %58, i32 0, i32 %59, i32 0, %struct.TYPE_26__* %10)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @FAILED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %36
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @msg_Err(%struct.TYPE_23__* %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = call i32 @vlc_mutex_unlock(i32* %69)
  br label %111

71:                                               ; preds = %36
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ID3D11Texture2D_GetDesc(i32 %74, %struct.TYPE_25__* %9)
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i64 0
  %80 = bitcast %struct.TYPE_20__* %12 to i8*
  %81 = bitcast %struct.TYPE_20__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 12, i1 false)
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = call i32 @plane_CopyPixels(%struct.TYPE_20__* %93, %struct.TYPE_20__* %12)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @ID3D11DeviceContext_Unmap(i32 %97, i32 %103, i32 %106)
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = call i32 @vlc_mutex_unlock(i32* %109)
  br label %111

111:                                              ; preds = %71, %64, %32
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_22__* @ActiveD3D11PictureSys(%struct.TYPE_21__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @assert_staging(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @ID3D11DeviceContext_CopySubresourceRegion(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ID3D11DeviceContext_Map(i32, i32, i32, i32, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @ID3D11Texture2D_GetDesc(i32, %struct.TYPE_25__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @plane_CopyPixels(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ID3D11DeviceContext_Unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
