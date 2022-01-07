; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_android.c_tc_anop_update.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_android.c_tc_anop_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__*, %struct.priv* }
%struct.TYPE_8__ = type { i32 (i32, i64)*, i32 (i32)* }
%struct.priv = type { i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@GL_TEXTURE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64*, i32*, i32*, %struct.TYPE_9__*, i64*)* @tc_anop_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_anop_update(%struct.TYPE_11__* %0, i64* %1, i32* %2, i32* %3, %struct.TYPE_9__* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.priv*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %14, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i64*, i64** %13, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64*, i64** %13, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %7, align 4
  br label %80

32:                                               ; preds = %6
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %38, i32* %7, align 4
  br label %80

39:                                               ; preds = %32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load %struct.priv*, %struct.priv** %41, align 8
  store %struct.priv* %42, %struct.priv** %15, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = call i32 @AndroidOpaquePicture_Release(%struct.TYPE_10__* %45, i32 1)
  %47 = load %struct.priv*, %struct.priv** %15, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.priv*, %struct.priv** %15, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 0
  %52 = call i32 @SurfaceTexture_waitAndUpdateTexImage(i32 %49, i32** %51)
  %53 = load i32, i32* @VLC_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %39
  %56 = load %struct.priv*, %struct.priv** %15, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %58, i32* %7, align 4
  br label %80

59:                                               ; preds = %39
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32 (i32)*, i32 (i32)** %63, align 8
  %65 = load i32, i32* @GL_TEXTURE0, align 4
  %66 = call i32 %64(i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32 (i32, i64)*, i32 (i32, i64)** %70, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 %71(i32 %74, i64 %77)
  %79 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %59, %55, %37, %30
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @AndroidOpaquePicture_Release(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SurfaceTexture_waitAndUpdateTexImage(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
