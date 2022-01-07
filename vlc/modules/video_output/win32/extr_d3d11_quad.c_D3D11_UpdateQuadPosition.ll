; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_D3D11_UpdateQuadPosition.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_D3D11_UpdateQuadPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32*, i64 }
%struct.TYPE_12__ = type { i32* }

@D3D11_MAP_WRITE_DISCARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to lock the vertex buffer (hr=0x%lX)\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to lock the index buffer (hr=0x%lX)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Projection mode %d not handled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @D3D11_UpdateQuadPosition(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %115

24:                                               ; preds = %5
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @D3D11_MAP_WRITE_DISCARD, align 4
  %32 = call i32 @ID3D11DeviceContext_Map(i32 %27, i32* %30, i32 0, i32 %31, i32 0, %struct.TYPE_12__* %14)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @msg_Err(i32* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %6, align 4
  br label %115

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %15, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load i32, i32* @D3D11_MAP_WRITE_DISCARD, align 4
  %51 = call i32 @ID3D11DeviceContext_Map(i32 %45, i32* %49, i32 0, i32 %50, i32 0, %struct.TYPE_12__* %14)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i64 @FAILED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %40
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @msg_Err(i32* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @ID3D11DeviceContext_Unmap(i32 %61, i32* %64, i32 0)
  store i32 0, i32* %6, align 4
  br label %115

66:                                               ; preds = %40
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %92 [
    i32 128, label %70
    i32 129, label %78
    i32 130, label %85
  ]

70:                                               ; preds = %66
  %71 = load i32*, i32** %15, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @SetupQuadFlat(i32* %71, i32* %72, %struct.TYPE_10__* %73, i32* %75, i32 %76)
  br label %98

78:                                               ; preds = %66
  %79 = load i32*, i32** %15, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @SetupQuadSphere(i32* %79, i32* %80, %struct.TYPE_10__* %81, i32* %83)
  br label %98

85:                                               ; preds = %66
  %86 = load i32*, i32** %15, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @SetupQuadCube(i32* %86, i32* %87, %struct.TYPE_10__* %88, i32* %90)
  br label %98

92:                                               ; preds = %66
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @msg_Warn(i32* %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %92, %85, %78, %70
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i32*
  %106 = call i32 @ID3D11DeviceContext_Unmap(i32 %101, i32* %105, i32 0)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @ID3D11DeviceContext_Unmap(i32 %109, i32* %112, i32 0)
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %98, %55, %36, %23
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ID3D11DeviceContext_Map(i32, i32*, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @ID3D11DeviceContext_Unmap(i32, i32*, i32) #1

declare dso_local i32 @SetupQuadFlat(i32*, i32*, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @SetupQuadSphere(i32*, i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @SetupQuadCube(i32*, i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
