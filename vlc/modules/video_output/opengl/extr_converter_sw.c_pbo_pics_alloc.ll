; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_pbo_pics_alloc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_sw.c_pbo_pics_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.priv* }
%struct.TYPE_7__ = type { i32 (i32, i32)* }
%struct.priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32** }

@PBO_DISPLAY_COUNT = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @pbo_pics_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbo_pics_alloc(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @PBO_DISPLAY_COUNT, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = call i32* @pbo_picture_create(%struct.TYPE_9__* %16)
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i32*, i32** %21, i64 %22
  store i32* %17, i32** %23, align 8
  store i32* %17, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %48

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @pbo_data_alloc(%struct.TYPE_9__* %28, i32* %29)
  %31 = load i64, i64* @VLC_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %48

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %45 = call i32 %43(i32 %44, i32 0)
  %46 = load i64, i64* @VLC_SUCCESS, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %78

48:                                               ; preds = %33, %26
  store i64 0, i64* %7, align 8
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @PBO_DISPLAY_COUNT, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.priv*, %struct.priv** %4, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br label %62

62:                                               ; preds = %53, %49
  %63 = phi i1 [ false, %49 ], [ %61, %53 ]
  br i1 %63, label %64, label %76

64:                                               ; preds = %62
  %65 = load %struct.priv*, %struct.priv** %4, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i32*, i32** %68, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @picture_Release(i32* %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %7, align 8
  br label %49

76:                                               ; preds = %62
  %77 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %38
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32* @pbo_picture_create(%struct.TYPE_9__*) #1

declare dso_local i64 @pbo_data_alloc(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @picture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
