; ModuleID = '/home/carl/AnghaBench/vlc/doc/libvlc/extr_d3d9_player.c_init_direct3d.c'
source_filename = "/home/carl/AnghaBench/vlc/doc/libvlc/extr_d3d9_player.c_init_direct3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.render_context = type { i32, i32, i32, i32, i8* }
%struct.TYPE_3__ = type { i8*, i32, i32, i32 }
%struct.CUSTOMVERTEX = type { float, float, float, float, i32, i32, i32 }

@D3D_SDK_VERSION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@D3DSWAPEFFECT_DISCARD = common dso_local global i32 0, align 4
@D3DADAPTER_DEFAULT = common dso_local global i32 0, align 4
@D3DDEVTYPE_HAL = common dso_local global i32 0, align 4
@D3DCREATE_MULTITHREADED = common dso_local global i32 0, align 4
@D3DCREATE_HARDWARE_VERTEXPROCESSING = common dso_local global i32 0, align 4
@D3DCREATE_PUREDEVICE = common dso_local global i32 0, align 4
@BORDER_LEFT = common dso_local global i32 0, align 4
@BORDER_TOP = common dso_local global i32 0, align 4
@BORDER_RIGHT = common dso_local global i32 0, align 4
@BORDER_BOTTOM = common dso_local global i32 0, align 4
@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@D3DUSAGE_WRITEONLY = common dso_local global i32 0, align 4
@CUSTOMFVF = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.render_context*, i8*)* @init_direct3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_direct3d(%struct.render_context* %0, i8* %1) #0 {
  %3 = alloca %struct.render_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca [4 x %struct.CUSTOMVERTEX], align 16
  %8 = alloca i32, align 4
  store %struct.render_context* %0, %struct.render_context** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.render_context*, %struct.render_context** %3, align 8
  %11 = getelementptr inbounds %struct.render_context, %struct.render_context* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @D3D_SDK_VERSION, align 4
  %13 = load %struct.render_context*, %struct.render_context** %3, align 8
  %14 = getelementptr inbounds %struct.render_context, %struct.render_context* %13, i32 0, i32 3
  %15 = call i32 @Direct3DCreate9Ex(i32 %12, i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 24, i1 false)
  %17 = load i32, i32* @TRUE, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @D3DSWAPEFFECT_DISCARD, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load %struct.render_context*, %struct.render_context** %3, align 8
  %24 = getelementptr inbounds %struct.render_context, %struct.render_context* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @D3DADAPTER_DEFAULT, align 4
  %27 = load i32, i32* @D3DDEVTYPE_HAL, align 4
  %28 = load i32, i32* @D3DCREATE_MULTITHREADED, align 4
  %29 = load i32, i32* @D3DCREATE_HARDWARE_VERTEXPROCESSING, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @D3DCREATE_PUREDEVICE, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.render_context*, %struct.render_context** %3, align 8
  %34 = getelementptr inbounds %struct.render_context, %struct.render_context* %33, i32 0, i32 1
  %35 = call i32 @IDirect3D9Ex_CreateDevice(i32 %25, i32 %26, i32 %27, i32* null, i32 %32, %struct.TYPE_3__* %6, i32* %34)
  %36 = load %struct.render_context*, %struct.render_context** %3, align 8
  %37 = getelementptr inbounds %struct.render_context, %struct.render_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.render_context*, %struct.render_context** %3, align 8
  %40 = getelementptr inbounds %struct.render_context, %struct.render_context* %39, i32 0, i32 2
  %41 = call i32 @IDirect3DDevice9_GetRenderTarget(i32 %38, i32 0, i32* %40)
  %42 = getelementptr inbounds [4 x %struct.CUSTOMVERTEX], [4 x %struct.CUSTOMVERTEX]* %7, i64 0, i64 0
  %43 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %42, i32 0, i32 0
  %44 = load i32, i32* @BORDER_LEFT, align 4
  %45 = sitofp i32 %44 to float
  store float %45, float* %43, align 4
  %46 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %42, i32 0, i32 1
  %47 = load i32, i32* @BORDER_TOP, align 4
  %48 = sitofp i32 %47 to float
  store float %48, float* %46, align 4
  %49 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %42, i32 0, i32 2
  store float 0.000000e+00, float* %49, align 4
  %50 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %42, i32 0, i32 3
  store float 1.000000e+00, float* %50, align 4
  %51 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %42, i32 0, i32 4
  %52 = call i32 @D3DCOLOR_ARGB(i32 255, i32 255, i32 255, i32 255)
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %42, i32 0, i32 5
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %42, i32 0, i32 6
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %42, i64 1
  %56 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %55, i32 0, i32 0
  %57 = load i32, i32* @BORDER_RIGHT, align 4
  %58 = sitofp i32 %57 to float
  store float %58, float* %56, align 4
  %59 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %55, i32 0, i32 1
  %60 = load i32, i32* @BORDER_TOP, align 4
  %61 = sitofp i32 %60 to float
  store float %61, float* %59, align 4
  %62 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %55, i32 0, i32 2
  store float 0.000000e+00, float* %62, align 4
  %63 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %55, i32 0, i32 3
  store float 1.000000e+00, float* %63, align 4
  %64 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %55, i32 0, i32 4
  %65 = call i32 @D3DCOLOR_ARGB(i32 255, i32 255, i32 255, i32 255)
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %55, i32 0, i32 5
  store i32 1, i32* %66, align 4
  %67 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %55, i32 0, i32 6
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %55, i64 1
  %69 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %68, i32 0, i32 0
  %70 = load i32, i32* @BORDER_RIGHT, align 4
  %71 = sitofp i32 %70 to float
  store float %71, float* %69, align 4
  %72 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %68, i32 0, i32 1
  %73 = load i32, i32* @BORDER_BOTTOM, align 4
  %74 = sitofp i32 %73 to float
  store float %74, float* %72, align 4
  %75 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %68, i32 0, i32 2
  store float 0.000000e+00, float* %75, align 4
  %76 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %68, i32 0, i32 3
  store float 1.000000e+00, float* %76, align 4
  %77 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %68, i32 0, i32 4
  %78 = call i32 @D3DCOLOR_ARGB(i32 255, i32 255, i32 255, i32 255)
  store i32 %78, i32* %77, align 4
  %79 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %68, i32 0, i32 5
  store i32 1, i32* %79, align 4
  %80 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %68, i32 0, i32 6
  store i32 1, i32* %80, align 4
  %81 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %68, i64 1
  %82 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %81, i32 0, i32 0
  %83 = load i32, i32* @BORDER_LEFT, align 4
  %84 = sitofp i32 %83 to float
  store float %84, float* %82, align 4
  %85 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %81, i32 0, i32 1
  %86 = load i32, i32* @BORDER_BOTTOM, align 4
  %87 = sitofp i32 %86 to float
  store float %87, float* %85, align 4
  %88 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %81, i32 0, i32 2
  store float 0.000000e+00, float* %88, align 4
  %89 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %81, i32 0, i32 3
  store float 1.000000e+00, float* %89, align 4
  %90 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %81, i32 0, i32 4
  %91 = call i32 @D3DCOLOR_ARGB(i32 255, i32 255, i32 255, i32 255)
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %81, i32 0, i32 5
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds %struct.CUSTOMVERTEX, %struct.CUSTOMVERTEX* %81, i32 0, i32 6
  store i32 1, i32* %93, align 4
  %94 = load %struct.render_context*, %struct.render_context** %3, align 8
  %95 = getelementptr inbounds %struct.render_context, %struct.render_context* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %98 = load i32, i32* @D3DUSAGE_WRITEONLY, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CUSTOMFVF, align 4
  %101 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %102 = load %struct.render_context*, %struct.render_context** %3, align 8
  %103 = getelementptr inbounds %struct.render_context, %struct.render_context* %102, i32 0, i32 0
  %104 = call i32 @IDirect3DDevice9Ex_CreateVertexBuffer(i32 %96, i32 112, i32 %99, i32 %100, i32 %101, i32* %103, i32* null)
  %105 = load %struct.render_context*, %struct.render_context** %3, align 8
  %106 = getelementptr inbounds %struct.render_context, %struct.render_context* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = bitcast i32* %8 to i8**
  %109 = call i32 @IDirect3DVertexBuffer9_Lock(i32 %107, i32 0, i32 0, i8** %108, i32 0)
  %110 = load i32, i32* %8, align 4
  %111 = getelementptr inbounds [4 x %struct.CUSTOMVERTEX], [4 x %struct.CUSTOMVERTEX]* %7, i64 0, i64 0
  %112 = call i32 @memcpy(i32 %110, %struct.CUSTOMVERTEX* %111, i32 112)
  %113 = load %struct.render_context*, %struct.render_context** %3, align 8
  %114 = getelementptr inbounds %struct.render_context, %struct.render_context* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @IDirect3DVertexBuffer9_Unlock(i32 %115)
  ret void
}

declare dso_local i32 @Direct3DCreate9Ex(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @IDirect3D9Ex_CreateDevice(i32, i32, i32, i32*, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @IDirect3DDevice9_GetRenderTarget(i32, i32, i32*) #1

declare dso_local i32 @D3DCOLOR_ARGB(i32, i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_CreateVertexBuffer(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @IDirect3DVertexBuffer9_Lock(i32, i32, i32, i8**, i32) #1

declare dso_local i32 @memcpy(i32, %struct.CUSTOMVERTEX*, i32) #1

declare dso_local i32 @IDirect3DVertexBuffer9_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
