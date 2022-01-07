; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9RenderRegion.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9RenderRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_11__ = type { float, float, i64, i32 }

@D3DLOCK_DISCARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed IDirect3DVertexBuffer9_Lock: 0x%lX\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed IDirect3DVertexBuffer9_Unlock: 0x%lX\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed SetStreamSource: 0x%lX\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed SetTexture: 0x%lX\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed SetPixelShaderConstantF: 0x%lX\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed SetPixelShader: 0x%lX\00", align 1
@D3DPT_TRIANGLEFAN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed DrawPrimitive: 0x%lX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_11__*, i32)* @Direct3D9RenderRegion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Direct3D9RenderRegion(%struct.TYPE_9__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [4 x float], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @D3DLOCK_DISCARD, align 4
  %26 = call i32 @IDirect3DVertexBuffer9_Lock(i32 %24, i32 0, i32 0, i8** %11, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @msg_Dbg(%struct.TYPE_9__* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %4, align 4
  br label %137

34:                                               ; preds = %3
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i8* %35, i32 %38, i32 4)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @IDirect3DVertexBuffer9_Unlock(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @msg_Dbg(%struct.TYPE_9__* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %4, align 4
  br label %137

51:                                               ; preds = %34
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @IDirect3DDevice9_SetStreamSource(i32* %52, i32 0, i32 %55, i32 0, i32 4)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @msg_Dbg(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  store i32 -1, i32* %4, align 4
  br label %137

64:                                               ; preds = %51
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @IDirect3DDevice9_SetTexture(i32* %65, i32 0, i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @FAILED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @msg_Dbg(%struct.TYPE_9__* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i32 -1, i32* %4, align 4
  br label %137

78:                                               ; preds = %64
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %125

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @IDirect3DDevice9_SetPixelShader(i32* %87, i32* %90)
  store i32 %91, i32* %10, align 4
  %92 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load float, float* %94, align 8
  store float %95, float* %92, align 4
  %96 = getelementptr inbounds float, float* %92, i64 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load float, float* %98, align 4
  store float %99, float* %96, align 4
  %100 = getelementptr inbounds float, float* %96, i64 1
  store float 0.000000e+00, float* %100, align 4
  %101 = getelementptr inbounds float, float* %100, i64 1
  store float 0.000000e+00, float* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %104 = call i32 @IDirect3DDevice9_SetPixelShaderConstantF(i32* %102, i32 0, float* %103, i32 1)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i64 @FAILED(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %86
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @msg_Dbg(%struct.TYPE_9__* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  store i32 -1, i32* %4, align 4
  br label %137

112:                                              ; preds = %86
  br label %116

113:                                              ; preds = %83
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @IDirect3DDevice9_SetPixelShader(i32* %114, i32* null)
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %113, %112
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @FAILED(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @msg_Dbg(%struct.TYPE_9__* %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  store i32 -1, i32* %4, align 4
  br label %137

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %78
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* @D3DPT_TRIANGLEFAN, align 4
  %128 = call i32 @IDirect3DDevice9_DrawPrimitive(i32* %126, i32 %127, i32 0, i32 2)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i64 @FAILED(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @msg_Dbg(%struct.TYPE_9__* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  store i32 -1, i32* %4, align 4
  br label %137

136:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %132, %120, %108, %74, %60, %47, %30
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @IDirect3DVertexBuffer9_Lock(i32, i32, i32, i8**, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @IDirect3DVertexBuffer9_Unlock(i32) #1

declare dso_local i32 @IDirect3DDevice9_SetStreamSource(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IDirect3DDevice9_SetTexture(i32*, i32, i32*) #1

declare dso_local i32 @IDirect3DDevice9_SetPixelShader(i32*, i32*) #1

declare dso_local i32 @IDirect3DDevice9_SetPixelShaderConstantF(i32*, i32, float*, i32) #1

declare dso_local i32 @IDirect3DDevice9_DrawPrimitive(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
