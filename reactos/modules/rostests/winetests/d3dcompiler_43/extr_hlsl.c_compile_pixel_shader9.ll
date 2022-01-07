; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_compile_pixel_shader9.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_compile_pixel_shader9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@D3D_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Pixel shader %s compilation failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Could not get constant table from compiled pixel shader\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"IDirect3DDevice9_CreatePixelShader returned: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32**)* @compile_pixel_shader9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @compile_pixel_shader9(i32* %0, i8* %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @ppD3DCompile(i8* %14, i32 %16, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %17, i32 0, i32 0, i32** %10, i32** %11)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @D3D_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i8*, i8** %7, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32*, i32** %11, align 8
  %28 = call i64 @ID3D10Blob_GetBufferPointer(i32* %27)
  %29 = inttoptr i64 %28 to i8*
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %30 ]
  %33 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %32)
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32* null, i32** %5, align 8
  br label %59

38:                                               ; preds = %31
  %39 = load i32*, i32** %10, align 8
  %40 = call i64 @ID3D10Blob_GetBufferPointer(i32* %39)
  %41 = load i32**, i32*** %9, align 8
  %42 = call i32 @D3DXGetShaderConstantTable(i64 %40, i32** %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @D3D_OK, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i64 @ID3D10Blob_GetBufferPointer(i32* %49)
  %51 = call i32 @IDirect3DDevice9_CreatePixelShader(i32* %48, i64 %50, i32** %12)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @SUCCEEDED(i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @ID3D10Blob_Release(i32* %56)
  %58 = load i32*, i32** %12, align 8
  store i32* %58, i32** %5, align 8
  br label %59

59:                                               ; preds = %38, %37
  %60 = load i32*, i32** %5, align 8
  ret i32* %60
}

declare dso_local i32 @ppD3DCompile(i8*, i32, i32*, i32*, i32*, i8*, i8*, i32, i32, i32**, i32**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @ID3D10Blob_GetBufferPointer(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @D3DXGetShaderConstantTable(i64, i32**) #1

declare dso_local i32 @IDirect3DDevice9_CreatePixelShader(i32*, i64, i32**) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @ID3D10Blob_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
