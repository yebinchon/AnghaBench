; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32, i32*, i32*, i32, i32, i64, i32*, i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@ROTATION_INCREMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"glspectrum-height\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"glspectrum-width\00", align 1
@Thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_VIDEO = common dso_local global i32 0, align 4
@VLC_CODEC_FL32 = common dso_local global i32 0, align 4
@DoWork = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %4, align 8
  %9 = call i64 @malloc(i32 64)
  %10 = inttoptr i64 %9 to %struct.TYPE_17__*
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = icmp eq %struct.TYPE_17__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %97

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = call i32 @aout_FormatNbChannels(%struct.TYPE_12__* %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @ROTATION_INCREMENT, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = call i32 @VLC_OBJECT(%struct.TYPE_16__* %33)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  %37 = call i32 @window_get_param(i32 %34, i32* %36)
  %38 = call i32* (...) @block_FifoNew()
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %17
  br label %93

46:                                               ; preds = %17
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = call i32 @var_InheritInteger(%struct.TYPE_16__* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %49, i32* %47, align 4
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = call i32 @var_InheritInteger(%struct.TYPE_16__* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %50, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = call i32* @vlc_gl_surface_Create(i32* %53, %struct.TYPE_15__* %6, i32* null)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @block_FifoRelease(i32* %64)
  br label %93

66:                                               ; preds = %46
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* @Thread, align 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = load i32, i32* @VLC_THREAD_PRIORITY_VIDEO, align 4
  %72 = call i64 @vlc_clone(i32* %68, i32 %69, %struct.TYPE_16__* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %93

75:                                               ; preds = %66
  %76 = load i32, i32* @VLC_CODEC_FL32, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = bitcast %struct.TYPE_12__* %83 to i8*
  %88 = bitcast %struct.TYPE_12__* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 4 %88, i64 4, i1 false)
  %89 = load i32, i32* @DoWork, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %92, i32* %2, align 4
  br label %97

93:                                               ; preds = %74, %61, %45
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = call i32 @free(%struct.TYPE_17__* %94)
  %96 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %75, %15
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_12__*) #1

declare dso_local i32 @window_get_param(i32, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_16__*) #1

declare dso_local i32* @block_FifoNew(...) #1

declare dso_local i32 @var_InheritInteger(%struct.TYPE_16__*, i8*) #1

declare dso_local i32* @vlc_gl_surface_Create(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @block_FifoRelease(i32*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_16__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
