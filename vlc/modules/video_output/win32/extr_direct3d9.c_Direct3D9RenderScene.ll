; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9RenderScene.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9RenderScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 (i32, i32, i32*)*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { i64 }

@D3DCLEAR_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed Clear: 0x%lX\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed BeginScene: 0x%lX\00", align 1
@D3DRS_ALPHABLENDENABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed EndScene: 0x%lX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_14__*, i64, %struct.TYPE_14__*)* @Direct3D9RenderScene to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Direct3D9RenderScene(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i64 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %22, align 8
  %24 = icmp ne i32 (i32, i32, i32*)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %27, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %28(i32 %31, i32 1, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %124

35:                                               ; preds = %25, %4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* @D3DCLEAR_TARGET, align 4
  %43 = call i32 @D3DCOLOR_XRGB(i32 0, i32 0, i32 0)
  %44 = call i32 @IDirect3DDevice9_Clear(i32* %41, i32 0, i32* null, i32 %42, i32 %43, float 1.000000e+00, i32 0)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @msg_Dbg(%struct.TYPE_12__* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %124

52:                                               ; preds = %40
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %35
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @IDirect3DDevice9_BeginScene(i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @msg_Dbg(%struct.TYPE_12__* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %124

65:                                               ; preds = %55
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = call i32 @Direct3D9RenderRegion(%struct.TYPE_12__* %66, %struct.TYPE_14__* %67, i32 1)
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %65
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @D3DRS_ALPHABLENDENABLE, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @IDirect3DDevice9_SetRenderState(i32* %72, i32 %73, i32 %74)
  store i64 0, i64* %12, align 8
  br label %76

76:                                               ; preds = %93, %71
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %82
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %13, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %91 = call i32 @Direct3D9RenderRegion(%struct.TYPE_12__* %89, %struct.TYPE_14__* %90, i32 0)
  br label %92

92:                                               ; preds = %88, %80
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %12, align 8
  br label %76

96:                                               ; preds = %76
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* @D3DRS_ALPHABLENDENABLE, align 4
  %99 = load i32, i32* @FALSE, align 4
  %100 = call i32 @IDirect3DDevice9_SetRenderState(i32* %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %65
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @IDirect3DDevice9_EndScene(i32* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i64 @FAILED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @msg_Dbg(%struct.TYPE_12__* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %113, align 8
  %115 = icmp ne i32 (i32, i32, i32*)* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 %119(i32 %122, i32 0, i32* null)
  br label %124

124:                                              ; preds = %34, %48, %61, %116, %111
  ret void
}

declare dso_local i32 @IDirect3DDevice9_Clear(i32*, i32, i32*, i32, i32, float, i32) #1

declare dso_local i32 @D3DCOLOR_XRGB(i32, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @IDirect3DDevice9_BeginScene(i32*) #1

declare dso_local i32 @Direct3D9RenderRegion(%struct.TYPE_12__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @IDirect3DDevice9_SetRenderState(i32*, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_EndScene(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
