; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_draw_quad_with_shader9.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_draw_quad_with_shader9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DTS_PROJECTION = common dso_local global i32 0, align 4
@D3DCLEAR_TARGET = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"IDirect3DDevice9_Clear returned: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"IDirect3DDevice9_BeginScene returned: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"IDirect3DDevice9_SetStreamSource returned: %08x\0A\00", align 1
@D3DPT_TRIANGLESTRIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"IDirect3DDevice9_DrawPrimitive returned: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"IDirect3DDevice9_EndScene returned: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @draw_quad_with_shader9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_quad_with_shader9(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 @D3DXMatrixOrthoLH(i32* %6, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00, float 1.000000e+00)
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @D3DTS_PROJECTION, align 4
  %10 = call i32 @IDirect3DDevice9_SetTransform(i32* %8, i32 %9, i32* %6)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @D3DCLEAR_TARGET, align 4
  %13 = call i32 @D3DCOLOR_XRGB(i32 0, i32 0, i32 0)
  %14 = call i64 @IDirect3DDevice9_Clear(i32* %11, i32 0, i32* null, i32 %12, i32 %13, float 1.000000e+00, i32 0)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @D3D_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @IDirect3DDevice9_BeginScene(i32* %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @D3D_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @IDirect3DDevice9_SetStreamSource(i32* %29, i32 0, i32* %30, i32 0, i32 4)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @D3D_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @D3DPT_TRIANGLESTRIP, align 4
  %40 = call i64 @IDirect3DDevice9_DrawPrimitive(i32* %38, i32 %39, i32 0, i32 2)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @D3D_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = call i64 @IDirect3DDevice9_EndScene(i32* %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @D3D_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  ret void
}

declare dso_local i32 @D3DXMatrixOrthoLH(i32*, float, float, float, float) #1

declare dso_local i32 @IDirect3DDevice9_SetTransform(i32*, i32, i32*) #1

declare dso_local i64 @IDirect3DDevice9_Clear(i32*, i32, i32*, i32, i32, float, i32) #1

declare dso_local i32 @D3DCOLOR_XRGB(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IDirect3DDevice9_BeginScene(i32*) #1

declare dso_local i64 @IDirect3DDevice9_SetStreamSource(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @IDirect3DDevice9_DrawPrimitive(i32*, i32, i32, i32) #1

declare dso_local i64 @IDirect3DDevice9_EndScene(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
