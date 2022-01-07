; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_surface.c_D3D11_NV12.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d11/extr_d3d11_surface.c_D3D11_NV12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_27__ = type { i32, i32, i32**, i64 }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_32__ = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"missing source context\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@KNOWN_DXGI_INDEX = common dso_local global i64 0, align 8
@D3D11_MAP_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to map source surface. (hr=0x%lX)\00", align 1
@DXGI_FORMAT_NV12 = common dso_local global i64 0, align 8
@DXGI_FORMAT_P010 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Unsupported D3D11VA conversion from 0x%08X to NV12\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*)* @D3D11_NV12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @D3D11_NV12(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_31__, align 8
  %10 = alloca %struct.TYPE_32__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [2 x i32*], align 16
  %15 = alloca [2 x i64], align 16
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %6, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = call i32 (%struct.TYPE_28__*, i8*, ...) @msg_Err(%struct.TYPE_28__* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %148

23:                                               ; preds = %3
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  store %struct.TYPE_29__* %26, %struct.TYPE_29__** %7, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %28 = call %struct.TYPE_27__* @ActiveD3D11PictureSys(%struct.TYPE_26__* %27)
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %8, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = call i32 @vlc_mutex_lock(i32* %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %34 = call i64 @assert_staging(%struct.TYPE_28__* %32, %struct.TYPE_27__* %33)
  %35 = load i64, i64* @VLC_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  %40 = call i32 @vlc_mutex_unlock(i32* %39)
  br label %148

41:                                               ; preds = %23
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* @KNOWN_DXGI_INDEX, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %12, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @ID3D11DeviceContext_CopySubresourceRegion(i32 %53, i32 %56, i32 0, i32 0, i32 0, i32 0, i32* %57, i64 %58, i32* null)
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @D3D11_MAP_READ, align 4
  %67 = call i64 @ID3D11DeviceContext_Map(i32 %62, i32 %65, i32 0, i32 %66, i32 0, %struct.TYPE_32__* %10)
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i64 @FAILED(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %41
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 (%struct.TYPE_28__*, i8*, ...) @msg_Err(%struct.TYPE_28__* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 0
  %77 = call i32 @vlc_mutex_unlock(i32* %76)
  br label %148

78:                                               ; preds = %41
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ID3D11Texture2D_GetDesc(i32 %81, %struct.TYPE_31__* %9)
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DXGI_FORMAT_NV12, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DXGI_FORMAT_P010, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %132

92:                                               ; preds = %87, %78
  %93 = getelementptr inbounds [2 x i32*], [2 x i32*]* %14, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %93, align 8
  %96 = getelementptr inbounds i32*, i32** %93, i64 1
  %97 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %100, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %98, i64 %104
  store i32* %105, i32** %96, align 8
  %106 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %106, align 8
  %110 = getelementptr inbounds i64, i64* %106, i64 1
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %110, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %115 = getelementptr inbounds [2 x i32*], [2 x i32*]* %14, i64 0, i64 0
  %116 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %122, %126
  %128 = call i32 @__MIN(i32 %118, i64 %127)
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 2
  %131 = call i32 @Copy420_SP_to_SP(%struct.TYPE_26__* %114, i32** %115, i64* %116, i32 %128, i32* %130)
  br label %137

132:                                              ; preds = %87
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (%struct.TYPE_28__*, i8*, ...) @msg_Err(%struct.TYPE_28__* %133, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %135)
  br label %137

137:                                              ; preds = %132, %92
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ID3D11DeviceContext_Unmap(i32 %140, i32 %143, i32 0)
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 0
  %147 = call i32 @vlc_mutex_unlock(i32* %146)
  br label %148

148:                                              ; preds = %137, %71, %37, %20
  ret void
}

declare dso_local i32 @msg_Err(%struct.TYPE_28__*, i8*, ...) #1

declare dso_local %struct.TYPE_27__* @ActiveD3D11PictureSys(%struct.TYPE_26__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @assert_staging(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @ID3D11DeviceContext_CopySubresourceRegion(i32, i32, i32, i32, i32, i32, i32*, i64, i32*) #1

declare dso_local i64 @ID3D11DeviceContext_Map(i32, i32, i32, i32, i32, %struct.TYPE_32__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @ID3D11Texture2D_GetDesc(i32, %struct.TYPE_31__*) #1

declare dso_local i32 @Copy420_SP_to_SP(%struct.TYPE_26__*, i32**, i64*, i32, i32*) #1

declare dso_local i32 @__MIN(i32, i64) #1

declare dso_local i32 @ID3D11DeviceContext_Unmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
