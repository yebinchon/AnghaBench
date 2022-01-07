; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_d3d9_instance.c_D3D9_FilterHoldInstance.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_d3d9_instance.c_D3D9_FilterHoldInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i8* }
%struct.TYPE_22__ = type { i32 }

@inst_lock = common dso_local global i32 0, align 4
@device = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@instances = common dso_local global i32 0, align 4
@VLC_CODEC_D3D9_OPAQUE_10B = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"no context available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @D3D9_FilterHoldInstance(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = call i32* @filter_NewPicture(%struct.TYPE_23__* %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %121

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_22__* @ActiveD3D9PictureSys(i32* %17)
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %8, align 8
  %19 = call i32 @vlc_mutex_lock(i32* @inst_lock)
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %21 = icmp ne %struct.TYPE_22__* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %16
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = call i32 @IDirect3DSurface9_GetDevice(i32 %25, i32** %27)
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %117

32:                                               ; preds = %22
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @IDirect3DDevice9_Release(i32* %35)
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %41 = call i32 @IDirect3DSurface9_GetDesc(i32 %39, %struct.TYPE_25__* %40)
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  br label %117

47:                                               ; preds = %32
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @device, i32 0, i32 1), align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @device, i32 0, i32 1), align 8
  %54 = load i32, i32* @instances, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @instances, align 4
  br label %56

56:                                               ; preds = %50, %47
  br label %98

57:                                               ; preds = %16
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = bitcast %struct.TYPE_24__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 bitcast (%struct.TYPE_24__* @device to i8*), i64 16, i1 false)
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @device, i32 0, i32 1), align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @instances, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @instances, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %67 = call i32 @memset(%struct.TYPE_25__* %66, i32 0, i32 16)
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VLC_CODEC_D3D9_OPAQUE_10B, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = call i8* @MAKEFOURCC(i8 signext 80, i8 signext 48, i8 signext 49, i8 signext 48)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %83

79:                                               ; preds = %65
  %80 = call i8* @MAKEFOURCC(i8 signext 78, i8 signext 86, i8 signext 49, i8 signext 50)
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %83, %56
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = call i32 @msg_Warn(%struct.TYPE_23__* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %116

111:                                              ; preds = %98
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @IDirect3DDevice9_AddRef(i32* %114)
  br label %116

116:                                              ; preds = %111, %108
  br label %117

117:                                              ; preds = %116, %44, %31
  %118 = call i32 @vlc_mutex_unlock(i32* @inst_lock)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @picture_Release(i32* %119)
  br label %121

121:                                              ; preds = %117, %15
  ret void
}

declare dso_local i32* @filter_NewPicture(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @ActiveD3D9PictureSys(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DSurface9_GetDevice(i32, i32**) #1

declare dso_local i32 @IDirect3DDevice9_Release(i32*) #1

declare dso_local i32 @IDirect3DSurface9_GetDesc(i32, %struct.TYPE_25__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i8* @MAKEFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @IDirect3DDevice9_AddRef(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @picture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
