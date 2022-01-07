; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_ClearSurface.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_ClearSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_8__ = type { i64 (i32, i32, i32, i32)*, i64 (i32, %struct.TYPE_12__*, i32*)*, i32 (i32)* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"gles2\00", align 1
@VLC_OPENGL_ES2 = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@WINDOW_FORMAT_RGB_565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @ClearSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ClearSurface(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @var_InheritString(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VLC_OPENGL_ES2, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32* @vlc_gl_Create(i32 %25, i32 %26, i8* %27)
  store i32* %28, i32** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %93

34:                                               ; preds = %18
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @vlc_gl_MakeCurrent(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %49

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @vlc_gl_Resize(i32* %40, i32 1, i32 1)
  %42 = call i32 @glClearColor(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  %43 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %44 = call i32 @glClear(i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @vlc_gl_Swap(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @vlc_gl_ReleaseCurrent(i32* %47)
  br label %49

49:                                               ; preds = %39, %38
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @vlc_gl_Release(i32* %50)
  br label %93

52:                                               ; preds = %1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %6, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64 (i32, i32, i32, i32)*, i64 (i32, i32, i32, i32)** %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @WINDOW_FORMAT_RGB_565, align 4
  %65 = call i64 %60(i32 %63, i32 1, i32 1, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %52
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64 (i32, %struct.TYPE_12__*, i32*)*, i64 (i32, %struct.TYPE_12__*, i32*)** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 %72(i32 %75, %struct.TYPE_12__* %7, i32* null)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %8, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 0, i32* %82, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32 (i32)*, i32 (i32)** %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 %87(i32 %90)
  br label %92

92:                                               ; preds = %78, %67, %52
  br label %93

93:                                               ; preds = %33, %92, %49
  ret void
}

declare dso_local i8* @var_InheritString(i32, i8*) #1

declare dso_local i32* @vlc_gl_Create(i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @vlc_gl_MakeCurrent(i32*) #1

declare dso_local i32 @vlc_gl_Resize(i32*, i32, i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @vlc_gl_Swap(i32*) #1

declare dso_local i32 @vlc_gl_ReleaseCurrent(i32*) #1

declare dso_local i32 @vlc_gl_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
