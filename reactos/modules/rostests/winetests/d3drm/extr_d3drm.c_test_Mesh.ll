; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_Mesh.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_Mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DRM_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Cannot get IDirect3DRM interface (hr = %x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Cannot get IDirect3DRMMesh interface (hr = %x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@IID_IDirect3DRMObject = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to get IDirect3DRMObject, %#x.\0A\00", align 1
@IID_IDirect3DRMVisual = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to get IDirect3DRMVisual, %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Mesh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Mesh() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i64 @Direct3DRMCreate(i32** %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @D3DRM_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @IDirect3DRM_CreateMesh(i32* %12, i32** %3)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @D3DRM_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @test_class_name(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @test_object_name(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = bitcast i32** %4 to i8**
  %26 = call i64 @IDirect3DRMMesh_QueryInterface(i32* %24, i32* @IID_IDirect3DRMObject, i8** %25)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @SUCCEEDED(i64 %27)
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @IUnknown_Release(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = bitcast i32** %4 to i8**
  %35 = call i64 @IDirect3DRMMesh_QueryInterface(i32* %33, i32* @IID_IDirect3DRMVisual, i8** %34)
  store i64 %35, i64* %1, align 8
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @SUCCEEDED(i64 %36)
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @IUnknown_Release(i32* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @IDirect3DRMMesh_Release(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @IDirect3DRM_Release(i32* %44)
  ret void
}

declare dso_local i64 @Direct3DRMCreate(i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IDirect3DRM_CreateMesh(i32*, i32**) #1

declare dso_local i32 @test_class_name(i32*, i8*) #1

declare dso_local i32 @test_object_name(i32*) #1

declare dso_local i64 @IDirect3DRMMesh_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @SUCCEEDED(i64) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IDirect3DRMMesh_Release(i32*) #1

declare dso_local i32 @IDirect3DRM_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
