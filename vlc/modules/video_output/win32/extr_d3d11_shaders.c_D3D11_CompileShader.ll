; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_shaders.c_D3D11_CompileShader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_shaders.c_D3D11_CompileShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@D3D_FEATURE_LEVEL_10_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"ps_4_0\00", align 1
@D3D_FEATURE_LEVEL_9_3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"ps_4_0_level_9_3\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ps_4_0_level_9_1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vs_4_0\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"vs_4_0_level_9_3\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"vs_4_0_level_9_1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"invalid %s Shader (hr=0x%lX): %s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Pixel\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Vertex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_3__*, i8*, i32)* @D3D11_CompileShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @D3D11_CompileShader(i32* %0, i32* %1, %struct.TYPE_3__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @D3D_FEATURE_LEVEL_10_0, align 8
  %24 = icmp sge i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %38

29:                                               ; preds = %19
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @D3D_FEATURE_LEVEL_9_3, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %37

36:                                               ; preds = %29
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %28
  br label %59

39:                                               ; preds = %5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @D3D_FEATURE_LEVEL_10_0, align 8
  %44 = icmp sge i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  br label %58

49:                                               ; preds = %39
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @D3D_FEATURE_LEVEL_9_3, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %57

56:                                               ; preds = %49
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %48
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @D3DCompile(i8* %60, i32 %62, i32* null, i32* null, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %63, i32 0, i32 0, i32** %12, i32** %13)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %59
  %69 = load i32*, i32** %13, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %13, align 8
  %73 = call i8* @ID3D10Blob_GetBufferPointer(i32* %72)
  br label %75

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i8* [ %73, %71 ], [ null, %74 ]
  store i8* %76, i8** %16, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %82 = load i32, i32* %15, align 4
  %83 = load i8*, i8** %16, align 8
  %84 = call i32 @msg_Err(i32* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %81, i32 %82, i8* %83)
  %85 = load i32*, i32** %13, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @ID3D10Blob_Release(i32* %88)
  br label %90

90:                                               ; preds = %87, %75
  store i32* null, i32** %6, align 8
  br label %93

91:                                               ; preds = %59
  %92 = load i32*, i32** %12, align 8
  store i32* %92, i32** %6, align 8
  br label %93

93:                                               ; preds = %91, %90
  %94 = load i32*, i32** %6, align 8
  ret i32* %94
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @D3DCompile(i8*, i32, i32*, i32*, i32*, i8*, i8*, i32, i32, i32**, i32**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i8* @ID3D10Blob_GetBufferPointer(i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @ID3D10Blob_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
