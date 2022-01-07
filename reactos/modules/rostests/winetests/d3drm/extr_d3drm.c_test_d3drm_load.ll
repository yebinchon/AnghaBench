; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_d3drm_load.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/d3drm/extr_d3drm.c_test_d3drm_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IID_IDirect3DRMMeshBuilder = common dso_local global i32 0, align 4
@IID_IDirect3DRMFrame = common dso_local global i32 0, align 4
@IID_IDirect3DRMMaterial = common dso_local global i32 0, align 4
@__const.test_d3drm_load.req_refiids = private unnamed_addr constant [3 x i32*] [i32* @IID_IDirect3DRMMeshBuilder, i32* @IID_IDirect3DRMFrame, i32* @IID_IDirect3DRMMaterial], align 16
@D3DRM_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Cannot get IDirect3DRM interface (hr = %x)\0A\00", align 1
@data_d3drm_load = common dso_local global i32 0, align 4
@D3DRMLOAD_FROMMEMORY = common dso_local global i32 0, align 4
@object_load_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot load data (hr = %x)\0A\00", align 1
@nb_objects = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Should have loaded 3 objects (got %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_d3drm_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_d3drm_load() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca [3 x i32*], align 16
  %5 = bitcast [3 x i32*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([3 x i32*]* @__const.test_d3drm_load.req_refiids to i8*), i64 24, i1 false)
  %6 = call i64 @Direct3DRMCreate(i32** %2)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @D3DRM_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %1, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @data_d3drm_load, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @data_d3drm_load, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds [3 x i32*], [3 x i32*]* %4, i64 0, i64 0
  %21 = load i32, i32* @D3DRMLOAD_FROMMEMORY, align 4
  %22 = load i32, i32* @object_load_callback, align 4
  %23 = call i64 @IDirect3DRM_Load(i32* %19, %struct.TYPE_3__* %3, i32* null, i32** %20, i32 3, i32 %21, i32 %22, i8* inttoptr (i64 3735928559 to i8*), i32* null, i32* null, i32* null)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @D3DRM_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %1, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @nb_objects, align 4
  %32 = icmp eq i32 %31, 3
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @nb_objects, align 4
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @IDirect3DRM_Release(i32* %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @Direct3DRMCreate(i32**) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @IDirect3DRM_Load(i32*, %struct.TYPE_3__*, i32*, i32**, i32, i32, i32, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @IDirect3DRM_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
