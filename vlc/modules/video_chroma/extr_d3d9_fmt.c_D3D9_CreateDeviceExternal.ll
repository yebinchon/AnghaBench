; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d9_fmt.c_D3D9_CreateDeviceExternal.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_d3d9_fmt.c_D3D9_CreateDeviceExternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @D3D9_CreateDeviceExternal(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @IDirect3DDevice9_GetCreationParameters(i32* %11, %struct.TYPE_12__* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  %30 = call i32 @ZeroMemory(i32* %29, i32 4)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = call i32 @IDirect3D9_GetDeviceCaps(i32 %33, i32 %36, i32 %38, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %18
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %70

47:                                               ; preds = %18
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @IDirect3D9_GetAdapterDisplayMode(i32 %50, i32 %53, %struct.TYPE_11__* %10)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @FAILED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %47
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @IDirect3DDevice9_AddRef(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @S_OK, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %60, %58, %45, %16
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @IDirect3DDevice9_GetCreationParameters(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i32 @IDirect3D9_GetDeviceCaps(i32, i32, i32, i32*) #1

declare dso_local i32 @IDirect3D9_GetAdapterDisplayMode(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @IDirect3DDevice9_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
