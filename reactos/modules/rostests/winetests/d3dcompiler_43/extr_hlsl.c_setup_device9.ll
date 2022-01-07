; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_setup_device9.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_setup_device9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DMULTISAMPLE_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"IDirect3DDevice9_CreateRenderTarget returned: %08x\0A\00", align 1
@D3DPOOL_SYSTEMMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"IDirect3DDevice9_CreateOffscreenPlainSurface returned: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"IDirect3DDevice9_SetRenderTarget returned: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"IDirect3DDevice9_SetVertexShader returned: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"IDirect3DDevice9_SetPixelShader returned: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32**, i32, i32, i32, i32*, i32*)* @setup_device9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_device9(i32* %0, i32** %1, i32** %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @D3DMULTISAMPLE_NONE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32**, i32*** %10, align 8
  %25 = call i64 @IDirect3DDevice9_CreateRenderTarget(i32* %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 0, i32 %23, i32** %24, i32* null)
  store i64 %25, i64* %17, align 8
  %26 = load i64, i64* %17, align 8
  %27 = load i64, i64* @D3D_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %17, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @D3DPOOL_SYSTEMMEM, align 4
  %37 = load i32**, i32*** %11, align 8
  %38 = call i64 @IDirect3DDevice9_CreateOffscreenPlainSurface(i32* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32** %37, i32* null)
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* @D3D_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %17, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32**, i32*** %10, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @IDirect3DDevice9_SetRenderTarget(i32* %45, i32 0, i32* %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @D3D_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i64 @IDirect3DDevice9_SetVertexShader(i32* %55, i32* %56)
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* @D3D_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %17, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = call i64 @IDirect3DDevice9_SetPixelShader(i32* %64, i32* %65)
  store i64 %66, i64* %17, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* @D3D_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %17, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  ret void
}

declare dso_local i64 @IDirect3DDevice9_CreateRenderTarget(i32*, i32, i32, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IDirect3DDevice9_CreateOffscreenPlainSurface(i32*, i32, i32, i32, i32, i32**, i32*) #1

declare dso_local i64 @IDirect3DDevice9_SetRenderTarget(i32*, i32, i32*) #1

declare dso_local i64 @IDirect3DDevice9_SetVertexShader(i32*, i32*) #1

declare dso_local i64 @IDirect3DDevice9_SetPixelShader(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
