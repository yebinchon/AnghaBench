; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_shaders.c_CompileTargetShader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_shaders.c_CompileTargetShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@globPixelShaderDefault = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"no room for the Pixel Shader\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"shader %s\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"psz_src_to_linear %s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"psz_primaries_transform %s\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"psz_tone_mapping %s\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"psz_linear_to_display %s\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"psz_adjust_range %s\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"psz_sampler %s\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"psz_move_planes %s\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32**)* @CompileTargetShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompileTargetShader(i32* %0, i32* %1, i32 %2, %struct.TYPE_4__* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i32** %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32**, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32 %2, i32* %16, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32** %11, i32*** %25, align 8
  %30 = load i32, i32* @globPixelShaderDefault, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %35 = load i8*, i8** %19, align 8
  %36 = load i8*, i8** %21, align 8
  %37 = load i8*, i8** %20, align 8
  %38 = load i8*, i8** %22, align 8
  %39 = load i8*, i8** %23, align 8
  %40 = load i8*, i8** %24, align 8
  %41 = load i8*, i8** %18, align 8
  %42 = call i32 @asprintf(i8** %26, i32 %30, i8* %34, i8* %35, i8* %36, i8* %37, i8* %38, i8* %39, i8* %40, i8* %41)
  store i32 %42, i32* %27, align 4
  %43 = load i32, i32* %27, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %12
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @msg_Err(i32* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %48, i32* %13, align 4
  br label %105

49:                                               ; preds = %12
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @var_InheritInteger(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32*, i32** %14, align 8
  %55 = load i8*, i8** %26, align 8
  %56 = call i32 @msg_Dbg(i32* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  br label %79

57:                                               ; preds = %49
  %58 = load i32*, i32** %14, align 8
  %59 = load i8*, i8** %19, align 8
  %60 = call i32 @msg_Dbg(i32* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** %14, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = call i32 @msg_Dbg(i32* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %14, align 8
  %65 = load i8*, i8** %22, align 8
  %66 = call i32 @msg_Dbg(i32* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %65)
  %67 = load i32*, i32** %14, align 8
  %68 = load i8*, i8** %21, align 8
  %69 = call i32 @msg_Dbg(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %68)
  %70 = load i32*, i32** %14, align 8
  %71 = load i8*, i8** %23, align 8
  %72 = call i32 @msg_Dbg(i32* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %14, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = call i32 @msg_Dbg(i32* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load i8*, i8** %24, align 8
  %78 = call i32 @msg_Dbg(i32* %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %57, %53
  %80 = load i32*, i32** %14, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %83 = load i8*, i8** %26, align 8
  %84 = call i32* @D3D11_CompileShader(i32* %80, i32* %81, %struct.TYPE_4__* %82, i8* %83, i32 1)
  store i32* %84, i32** %28, align 8
  %85 = load i8*, i8** %26, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32*, i32** %28, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %90, i32* %13, align 4
  br label %105

91:                                               ; preds = %79
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %28, align 8
  %96 = call i64 @ID3D10Blob_GetBufferPointer(i32* %95)
  %97 = inttoptr i64 %96 to i8*
  %98 = load i32*, i32** %28, align 8
  %99 = call i32 @ID3D10Blob_GetBufferSize(i32* %98)
  %100 = load i32**, i32*** %25, align 8
  %101 = call i32 @ID3D11Device_CreatePixelShader(i32 %94, i8* %97, i32 %99, i32* null, i32** %100)
  store i32 %101, i32* %29, align 4
  %102 = load i32*, i32** %28, align 8
  %103 = call i32 @ID3D10Blob_Release(i32* %102)
  %104 = load i32, i32* %29, align 4
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %91, %89, %45
  %106 = load i32, i32* %13, align 4
  ret i32 %106
}

declare dso_local i32 @asprintf(i8**, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32* @D3D11_CompileShader(i32*, i32*, %struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ID3D11Device_CreatePixelShader(i32, i8*, i32, i32*, i32**) #1

declare dso_local i64 @ID3D10Blob_GetBufferPointer(i32*) #1

declare dso_local i32 @ID3D10Blob_GetBufferSize(i32*) #1

declare dso_local i32 @ID3D10Blob_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
