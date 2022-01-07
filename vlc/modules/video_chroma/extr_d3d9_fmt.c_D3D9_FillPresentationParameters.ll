; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d9_fmt.c_D3D9_FillPresentationParameters.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d9_fmt.c_D3D9_FillPresentationParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i8*, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@D3DPRESENTFLAG_VIDEO = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@D3DMULTISAMPLE_NONE = common dso_local global i32 0, align 4
@D3DPRESENT_INTERVAL_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@D3DSWAPEFFECT_COPY = common dso_local global i32 0, align 4
@SM_CXVIRTUALSCREEN = common dso_local global i32 0, align 4
@SM_CYVIRTUALSCREEN = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @D3D9_FillPresentationParameters(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IDirect3D9_GetAdapterDisplayMode(i32 %12, i32 %15, %struct.TYPE_13__* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %4, align 4
  br label %60

22:                                               ; preds = %3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = call i32 @ZeroMemory(%struct.TYPE_12__* %23, i32 64)
  %25 = load i32, i32* @D3DPRESENTFLAG_VIDEO, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @D3DMULTISAMPLE_NONE, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @D3DPRESENT_INTERVAL_DEFAULT, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @D3DSWAPEFFECT_COPY, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @SM_CXVIRTUALSCREEN, align 4
  %52 = call i8* @GetSystemMetrics(i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @SM_CYVIRTUALSCREEN, align 4
  %56 = call i8* @GetSystemMetrics(i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %22, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @IDirect3D9_GetAdapterDisplayMode(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @GetSystemMetrics(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
