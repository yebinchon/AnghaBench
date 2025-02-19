; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_BogusZeroCopy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d11.c_BogusZeroCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wddm_version = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }

@GPU_MANUFACTURER_AMD = common dso_local global i64 0, align 8
@__const.BogusZeroCopy.WDDM = private unnamed_addr constant %struct.wddm_version { i32 14011 }, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @BogusZeroCopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BogusZeroCopy(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.wddm_version, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @D3D11DeviceAdapter(i32 %12)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @IDXGIAdapter_GetDesc(i32* %18, %struct.TYPE_9__* %5)
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %46

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @IDXGIAdapter_Release(i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GPU_MANUFACTURER_AMD, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %46

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %45 [
    i32 26751, label %34
    i32 26723, label %34
    i32 5597, label %34
  ]

34:                                               ; preds = %31, %31, %31
  %35 = bitcast %struct.wddm_version* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.wddm_version* @__const.BogusZeroCopy.WDDM to i8*), i64 4, i1 false)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* @GPU_MANUFACTURER_AMD, align 8
  %41 = call i32 @D3D11CheckDriverVersion(%struct.TYPE_10__* %39, i64 %40, %struct.wddm_version* %6)
  %42 = load i32, i32* @VLC_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %34, %30, %22, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32* @D3D11DeviceAdapter(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDXGIAdapter_GetDesc(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @IDXGIAdapter_Release(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @D3D11CheckDriverVersion(%struct.TYPE_10__*, i64, %struct.wddm_version*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
