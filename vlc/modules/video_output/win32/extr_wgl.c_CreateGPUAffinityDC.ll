; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_wgl.c_CreateGPUAffinityDC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_wgl.c_CreateGPUAffinityDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32 }

@VLC_PFD_INITIALIZER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"wglEnumGpusNV\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"wglCreateAffinityDCNV\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"GPU affinity set to adapter: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @CreateGPUAffinityDC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateGPUAffinityDC(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i32**)*, align 8
  %10 = alloca i32* (i32**)*, align 8
  %11 = alloca [2 x i32*], align 16
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  %16 = load i32, i32* @VLC_PFD_INITIALIZER, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @GetDC(i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @ChoosePixelFormat(i32* %22, i32* %6)
  %24 = call i32 @SetPixelFormat(i32* %21, i32 %23, i32* %6)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @wglCreateContext(i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @wglMakeCurrent(i32* %27, i32 %28)
  %30 = call i32 @wglGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32 (i32, i32**)*
  store i32 (i32, i32**)* %32, i32 (i32, i32**)** %9, align 8
  %33 = call i32 @wglGetProcAddress(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32* (i32**)*
  store i32* (i32**)* %35, i32* (i32**)** %10, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @wglDeleteContext(i32 %36)
  %38 = load i32 (i32, i32**)*, i32 (i32, i32**)** %9, align 8
  %39 = icmp ne i32 (i32, i32**)* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i32* (i32**)*, i32* (i32**)** %10, align 8
  %42 = icmp ne i32* (i32**)* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %2
  br label %77

44:                                               ; preds = %40
  %45 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  store i32* null, i32** %45, align 16
  %46 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 1
  store i32* null, i32** %46, align 8
  %47 = load i32 (i32, i32**)*, i32 (i32, i32**)** %9, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 %47(i32 %48, i32** %12)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  br label %77

52:                                               ; preds = %44
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  store i32* %53, i32** %54, align 16
  %55 = load i32* (i32**)*, i32* (i32**)** %10, align 8
  %56 = getelementptr inbounds [2 x i32*], [2 x i32*]* %11, i64 0, i64 0
  %57 = call i32* %55(i32** %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %77

65:                                               ; preds = %52
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @ChoosePixelFormat(i32* %71, i32* %6)
  %73 = call i32 @SetPixelFormat(i32* %68, i32 %72, i32* %6)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @msg_Dbg(%struct.TYPE_6__* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %65, %64, %51, %43
  ret void
}

declare dso_local i32* @GetDC(i32) #1

declare dso_local i32 @SetPixelFormat(i32*, i32, i32*) #1

declare dso_local i32 @ChoosePixelFormat(i32*, i32*) #1

declare dso_local i32 @wglCreateContext(i32*) #1

declare dso_local i32 @wglMakeCurrent(i32*, i32) #1

declare dso_local i32 @wglGetProcAddress(i8*) #1

declare dso_local i32 @wglDeleteContext(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
