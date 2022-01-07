; ModuleID = '/home/carl/AnghaBench/vlc/doc/libvlc/extr_d3d9_player.c_Swap.c'
source_filename = "/home/carl/AnghaBench/vlc/doc/libvlc/extr_d3d9_player.c_Swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.render_context = type { i32, i32, i32, i64, i32 }

@D3DCLEAR_TARGET = common dso_local global i32 0, align 4
@CUSTOMFVF = common dso_local global i32 0, align 4
@D3DPT_TRIANGLEFAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.render_context*)* @Swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Swap(%struct.render_context* %0) #0 {
  %2 = alloca %struct.render_context*, align 8
  store %struct.render_context* %0, %struct.render_context** %2, align 8
  %3 = load %struct.render_context*, %struct.render_context** %2, align 8
  %4 = getelementptr inbounds %struct.render_context, %struct.render_context* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.render_context*, %struct.render_context** %2, align 8
  %7 = getelementptr inbounds %struct.render_context, %struct.render_context* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @IDirect3DDevice9_SetRenderTarget(i32 %5, i32 0, i32 %8)
  %10 = load %struct.render_context*, %struct.render_context** %2, align 8
  %11 = getelementptr inbounds %struct.render_context, %struct.render_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @D3DCLEAR_TARGET, align 4
  %14 = call i32 @D3DCOLOR_XRGB(i32 255, i32 120, i32 0)
  %15 = call i32 @IDirect3DDevice9_Clear(i32 %12, i32 0, i32* null, i32 %13, i32 %14, float 1.000000e+00, i32 0)
  %16 = load %struct.render_context*, %struct.render_context** %2, align 8
  %17 = getelementptr inbounds %struct.render_context, %struct.render_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IDirect3DDevice9_BeginScene(i32 %18)
  %20 = load %struct.render_context*, %struct.render_context** %2, align 8
  %21 = getelementptr inbounds %struct.render_context, %struct.render_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.render_context*, %struct.render_context** %2, align 8
  %24 = getelementptr inbounds %struct.render_context, %struct.render_context* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = call i32 @IDirect3DDevice9_SetTexture(i32 %22, i32 0, i32* %26)
  %28 = load %struct.render_context*, %struct.render_context** %2, align 8
  %29 = getelementptr inbounds %struct.render_context, %struct.render_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.render_context*, %struct.render_context** %2, align 8
  %32 = getelementptr inbounds %struct.render_context, %struct.render_context* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @IDirect3DDevice9_SetStreamSource(i32 %30, i32 0, i32 %33, i32 0, i32 4)
  %35 = load %struct.render_context*, %struct.render_context** %2, align 8
  %36 = getelementptr inbounds %struct.render_context, %struct.render_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CUSTOMFVF, align 4
  %39 = call i32 @IDirect3DDevice9_SetFVF(i32 %37, i32 %38)
  %40 = load %struct.render_context*, %struct.render_context** %2, align 8
  %41 = getelementptr inbounds %struct.render_context, %struct.render_context* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @D3DPT_TRIANGLEFAN, align 4
  %44 = call i32 @IDirect3DDevice9_DrawPrimitive(i32 %42, i32 %43, i32 0, i32 2)
  %45 = load %struct.render_context*, %struct.render_context** %2, align 8
  %46 = getelementptr inbounds %struct.render_context, %struct.render_context* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IDirect3DDevice9_EndScene(i32 %47)
  %49 = load %struct.render_context*, %struct.render_context** %2, align 8
  %50 = getelementptr inbounds %struct.render_context, %struct.render_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.render_context*, %struct.render_context** %2, align 8
  %53 = getelementptr inbounds %struct.render_context, %struct.render_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @IDirect3DDevice9_Present(i32 %51, i32* null, i32* null, i32 %54, i32* null)
  ret void
}

declare dso_local i32 @IDirect3DDevice9_SetRenderTarget(i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_Clear(i32, i32, i32*, i32, i32, float, i32) #1

declare dso_local i32 @D3DCOLOR_XRGB(i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_BeginScene(i32) #1

declare dso_local i32 @IDirect3DDevice9_SetTexture(i32, i32, i32*) #1

declare dso_local i32 @IDirect3DDevice9_SetStreamSource(i32, i32, i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_SetFVF(i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_DrawPrimitive(i32, i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_EndScene(i32) #1

declare dso_local i32 @IDirect3DDevice9_Present(i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
