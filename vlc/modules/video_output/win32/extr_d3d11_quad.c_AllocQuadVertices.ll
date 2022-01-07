; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_AllocQuadVertices.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_AllocQuadVertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@SPHERE_SLICES = common dso_local global i32 0, align 4
@nbLatBands = common dso_local global i32 0, align 4
@nbLonBands = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Projection mode %d not handled\00", align 1
@D3D11_USAGE_DYNAMIC = common dso_local global i32 0, align 4
@D3D11_BIND_VERTEX_BUFFER = common dso_local global i32 0, align 4
@D3D11_CPU_ACCESS_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to create vertex buffer. (hr=%lX)\00", align 1
@D3D11_BIND_INDEX_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not create the quad indices. (hr=0x%lX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32)* @AllocQuadVertices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocQuadVertices(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca %struct.TYPE_10__, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %39 [
    i32 128, label %14
    i32 129, label %19
    i32 130, label %34
  ]

14:                                               ; preds = %4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32 6, i32* %18, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load i32, i32* @SPHERE_SLICES, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @SPHERE_SLICES, align 4
  %23 = add nsw i32 %22, 1
  %24 = mul nsw i32 %21, %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @nbLatBands, align 4
  %28 = load i32, i32* @nbLonBands, align 4
  %29 = mul nsw i32 %27, %28
  %30 = mul nsw i32 %29, 2
  %31 = mul nsw i32 %30, 3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %43

34:                                               ; preds = %4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 24, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 36, i32* %38, align 4
  br label %43

39:                                               ; preds = %4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @msg_Warn(i32* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 0, i32* %5, align 4
  br label %127

43:                                               ; preds = %34, %19, %14
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32 4, i32* %45, align 8
  %46 = call i32 @memset(%struct.TYPE_10__* %11, i32 0, i32 16)
  %47 = load i32, i32* @D3D11_USAGE_DYNAMIC, align 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @D3D11_BIND_VERTEX_BUFFER, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @D3D11_CPU_ACCESS_WRITE, align 4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  %66 = call i32 @ID3D11Device_CreateBuffer(i32 %63, %struct.TYPE_10__* %11, i32* null, i32** %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @FAILED(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %43
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @msg_Err(i32* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %102

74:                                               ; preds = %43
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %75, align 4
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %83 = load i32, i32* @D3D11_CPU_ACCESS_WRITE, align 4
  store i32 %83, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %85 = load i32, i32* @D3D11_BIND_INDEX_BUFFER, align 4
  store i32 %85, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %87 = load i32, i32* @D3D11_USAGE_DYNAMIC, align 4
  store i32 %87, i32* %86, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = call i32 @ID3D11Device_CreateBuffer(i32 %90, %struct.TYPE_10__* %12, i32* null, i32** %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i64 @FAILED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %74
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @msg_Err(i32* %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %102

101:                                              ; preds = %74
  store i32 1, i32* %5, align 4
  br label %127

102:                                              ; preds = %97, %70
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @ID3D11Buffer_Release(i32* %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %107, %102
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @ID3D11Buffer_Release(i32* %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %119, %114
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %101, %39
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @msg_Warn(i32*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ID3D11Device_CreateBuffer(i32, %struct.TYPE_10__*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @ID3D11Buffer_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
