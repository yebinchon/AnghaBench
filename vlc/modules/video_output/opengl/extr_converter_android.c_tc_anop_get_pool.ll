; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_android.c_tc_anop_get_pool.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/opengl/extr_converter_android.c_tc_anop_get_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.priv* }
%struct.priv = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32** }

@AndroidOpaquePicture_DetachVout = common dso_local global i32 0, align 4
@pool_unlock_pic = common dso_local global i32 0, align 4
@pool_lock_pic = common dso_local global i32 0, align 4
@FORCED_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i32)* @tc_anop_get_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_anop_get_pool(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.priv*, align 8
  %7 = alloca [31 x i32*], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %6, align 8
  store i32 31, i32* %5, align 4
  %17 = bitcast [31 x i32*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 248, i1 false)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %74, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = call %struct.TYPE_12__* @calloc(i32 1, i32 20)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %9, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %92

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %32 = load i32, i32* @AndroidOpaquePicture_DetachVout, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.priv*, %struct.priv** %6, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SurfaceTexture_getANativeWindow(i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 4
  %45 = load %struct.priv*, %struct.priv** %6, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SurfaceTexture_getSurface(i32 %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i32 -1, i32* %54, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = call i32 @vlc_mutex_init(i32* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = call i32* @picture_NewFromResource(i32* %60, %struct.TYPE_13__* %10)
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [31 x i32*], [31 x i32*]* %7, i64 0, i64 %63
  store i32* %61, i32** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [31 x i32*], [31 x i32*]* %7, i64 0, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %30
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = call i32 @free(%struct.TYPE_12__* %71)
  br label %92

73:                                               ; preds = %30
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %18

77:                                               ; preds = %18
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %81 = load i32, i32* @pool_unlock_pic, align 4
  store i32 %81, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %83 = load i32, i32* @pool_lock_pic, align 4
  store i32 %83, i32* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %85 = getelementptr inbounds [31 x i32*], [31 x i32*]* %7, i64 0, i64 0
  store i32** %85, i32*** %84, align 8
  %86 = call i32* @picture_pool_NewExtended(%struct.TYPE_14__* %11)
  store i32* %86, i32** %12, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %77
  br label %92

90:                                               ; preds = %77
  %91 = load i32*, i32** %12, align 8
  store i32* %91, i32** %3, align 8
  br label %107

92:                                               ; preds = %89, %70, %29
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %103, %92
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [31 x i32*], [31 x i32*]* %7, i64 0, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @picture_Release(i32* %101)
  br label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %13, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %93

106:                                              ; preds = %93
  store i32* null, i32** %3, align 8
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32*, i32** %3, align 8
  ret i32* %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @SurfaceTexture_getANativeWindow(i32) #2

declare dso_local i32 @SurfaceTexture_getSurface(i32) #2

declare dso_local i32 @vlc_mutex_init(i32*) #2

declare dso_local i32* @picture_NewFromResource(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @free(%struct.TYPE_12__*) #2

declare dso_local i32* @picture_pool_NewExtended(%struct.TYPE_14__*) #2

declare dso_local i32 @picture_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
