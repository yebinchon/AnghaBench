; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_test_fail.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3dcompiler_43/extr_hlsl.c_test_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_fail.tests = internal global [7 x i8*] [i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [60 x i8] c"float4 test(float2 pos: TEXCOORD0) : COLOR\0A{\0A   return y;\0A}\00", align 1
@.str.1 = private unnamed_addr constant [123 x i8] c"float4 test(float2 pos: TEXCOORD0) : COLOR\0A{\0A  float4 x = float4(0, 0, 0, 0);\0A  x.xzzx = float4(1, 2, 3, 4);\0A  return x;\0A}\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"float4 test(float2 pos: TEXCOORD0) : COLOR\0A{\0A  float4 x = pos;\0A  return x;\0A}\00", align 1
@.str.3 = private unnamed_addr constant [118 x i8] c"float4 test(float2 pos, TEXCOORD0) ; COLOR\0A{\0A  pos = float4 x;\0A  mul(float4(5, 4, 3, 2), mvp) = x;\0A  return float4;\0A}\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"float4 563r(float2 45s: TEXCOORD0) : COLOR\0A{\0A  float2 x = 45s;\0A  return float4(x.x, x.y, 0, 0);\0A}\00", align 1
@.str.5 = private unnamed_addr constant [92 x i8] c"float4 test(float2 pos: TEXCOORD0) : COLOR\0A{\0A   struct { int b,c; } x = {0};\0A   return y;\0A}\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"float4 test(float2 pos: TEXCOORD0) : COLOR\0A{\0A   struct {} x = {};\0A   return y;\0A}\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ps_2_0\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Test %u, got unexpected hr %#x.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Test %u, expected non-NULL error blob.\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Test %u, expected no compiled shader blob.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @test_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fail(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %48, %3
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @test_fail.tests, i64 0, i64 0))
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %11
  store i32* null, i32** %8, align 8
  store i32* null, i32** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* @test_fail.tests, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* @test_fail.tests, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32 @ppD3DCompile(i8* %19, i32 %24, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0, i32** %7, i32** %8)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @E_FAIL, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i8*, i32, ...) @ok(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ID3D10Blob_Release(i32* %46)
  br label %48

48:                                               ; preds = %15
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %11

51:                                               ; preds = %11
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @ppD3DCompile(i8*, i32, i32*, i32*, i32*, i8*, i8*, i32, i32, i32**, i32**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @ID3D10Blob_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
