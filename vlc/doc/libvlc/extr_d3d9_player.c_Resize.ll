; ModuleID = '/home/carl/AnghaBench/vlc/doc/libvlc/extr_d3d9_player.c_Resize.c'
source_filename = "/home/carl/AnghaBench/vlc/doc/libvlc/extr_d3d9_player.c_Resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.render_context = type { i32*, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@D3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@libvlc_video_colorspace_BT709 = common dso_local global i32 0, align 4
@libvlc_video_primaries_BT709 = common dso_local global i32 0, align 4
@libvlc_video_transfer_func_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.render_context*, i32, i32, i32*, %struct.TYPE_5__*)* @Resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Resize(%struct.render_context* %0, i32 %1, i32 %2, i32* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.render_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 4
  store %struct.render_context* %0, %struct.render_context** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %14 = load %struct.render_context*, %struct.render_context** %7, align 8
  %15 = getelementptr inbounds %struct.render_context, %struct.render_context* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @IDirect3D9Ex_GetAdapterDisplayMode(i32 %16, i32 0, %struct.TYPE_6__* %13)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.render_context*, %struct.render_context** %7, align 8
  %19 = getelementptr inbounds %struct.render_context, %struct.render_context* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load %struct.render_context*, %struct.render_context** %7, align 8
  %24 = getelementptr inbounds %struct.render_context, %struct.render_context* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @IDirect3DTexture9_Release(i32* %25)
  %27 = load %struct.render_context*, %struct.render_context** %7, align 8
  %28 = getelementptr inbounds %struct.render_context, %struct.render_context* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load %struct.render_context*, %struct.render_context** %7, align 8
  %30 = getelementptr inbounds %struct.render_context, %struct.render_context* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %22, %5
  %32 = load %struct.render_context*, %struct.render_context** %7, align 8
  %33 = getelementptr inbounds %struct.render_context, %struct.render_context* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.render_context*, %struct.render_context** %7, align 8
  %38 = getelementptr inbounds %struct.render_context, %struct.render_context* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @IDirect3DTexture9_Release(i32* %39)
  %41 = load %struct.render_context*, %struct.render_context** %7, align 8
  %42 = getelementptr inbounds %struct.render_context, %struct.render_context* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.render_context*, %struct.render_context** %7, align 8
  %45 = getelementptr inbounds %struct.render_context, %struct.render_context* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.render_context*, %struct.render_context** %7, align 8
  %50 = getelementptr inbounds %struct.render_context, %struct.render_context* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @IDirect3DSurface9_Release(i32* %51)
  %53 = load %struct.render_context*, %struct.render_context** %7, align 8
  %54 = getelementptr inbounds %struct.render_context, %struct.render_context* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.render_context*, %struct.render_context** %7, align 8
  %57 = getelementptr inbounds %struct.render_context, %struct.render_context* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.render_context*, %struct.render_context** %7, align 8
  %62 = getelementptr inbounds %struct.render_context, %struct.render_context* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @IDirect3DDevice9_Release(i32* %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.render_context*, %struct.render_context** %7, align 8
  %68 = getelementptr inbounds %struct.render_context, %struct.render_context* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.render_context*, %struct.render_context** %7, align 8
  %70 = getelementptr inbounds %struct.render_context, %struct.render_context* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @IDirect3DDevice9_AddRef(i32* %71)
  %73 = load %struct.render_context*, %struct.render_context** %7, align 8
  %74 = getelementptr inbounds %struct.render_context, %struct.render_context* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @D3DUSAGE_RENDERTARGET, align 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %82 = load %struct.render_context*, %struct.render_context** %7, align 8
  %83 = getelementptr inbounds %struct.render_context, %struct.render_context* %82, i32 0, i32 4
  %84 = load %struct.render_context*, %struct.render_context** %7, align 8
  %85 = getelementptr inbounds %struct.render_context, %struct.render_context* %84, i32 0, i32 3
  %86 = call i32 @IDirect3DDevice9_CreateTexture(i32* %75, i32 %76, i32 %77, i32 1, i32 %78, i32 %80, i32 %81, i32** %83, i32** %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i64 @FAILED(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %149

91:                                               ; preds = %65
  %92 = load %struct.render_context*, %struct.render_context** %7, align 8
  %93 = getelementptr inbounds %struct.render_context, %struct.render_context* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @D3DUSAGE_RENDERTARGET, align 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %101 = load %struct.render_context*, %struct.render_context** %7, align 8
  %102 = getelementptr inbounds %struct.render_context, %struct.render_context* %101, i32 0, i32 2
  %103 = load %struct.render_context*, %struct.render_context** %7, align 8
  %104 = getelementptr inbounds %struct.render_context, %struct.render_context* %103, i32 0, i32 3
  %105 = call i32 @IDirect3DDevice9_CreateTexture(i32* %94, i32 %95, i32 %96, i32 1, i32 %97, i32 %99, i32 %100, i32** %102, i32** %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i64 @FAILED(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %149

110:                                              ; preds = %91
  %111 = load %struct.render_context*, %struct.render_context** %7, align 8
  %112 = getelementptr inbounds %struct.render_context, %struct.render_context* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.render_context*, %struct.render_context** %7, align 8
  %115 = getelementptr inbounds %struct.render_context, %struct.render_context* %114, i32 0, i32 0
  %116 = call i32 @IDirect3DTexture9_GetSurfaceLevel(i32* %113, i32 0, i32** %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i64 @FAILED(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 0, i32* %6, align 4
  br label %149

121:                                              ; preds = %110
  %122 = load %struct.render_context*, %struct.render_context** %7, align 8
  %123 = getelementptr inbounds %struct.render_context, %struct.render_context* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.render_context*, %struct.render_context** %7, align 8
  %126 = getelementptr inbounds %struct.render_context, %struct.render_context* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @IDirect3DDevice9_SetRenderTarget(i32* %124, i32 0, i32* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i64 @FAILED(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %149

133:                                              ; preds = %121
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  %140 = load i32, i32* @libvlc_video_colorspace_BT709, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @libvlc_video_primaries_BT709, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @libvlc_video_transfer_func_SRGB, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  store i32 1, i32* %6, align 4
  br label %149

149:                                              ; preds = %133, %132, %120, %109, %90
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @IDirect3D9Ex_GetAdapterDisplayMode(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @IDirect3DTexture9_Release(i32*) #1

declare dso_local i32 @IDirect3DSurface9_Release(i32*) #1

declare dso_local i32 @IDirect3DDevice9_Release(i32*) #1

declare dso_local i32 @IDirect3DDevice9_AddRef(i32*) #1

declare dso_local i32 @IDirect3DDevice9_CreateTexture(i32*, i32, i32, i32, i32, i32, i32, i32**, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DTexture9_GetSurfaceLevel(i32*, i32, i32**) #1

declare dso_local i32 @IDirect3DDevice9_SetRenderTarget(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
