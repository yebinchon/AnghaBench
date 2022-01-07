; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_Request.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_video_output.c_vout_Request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { float, i64, i32, i32, i64, i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"failed to enable window\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"video output display creation failed\00", align 1
@Thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vout_Request(%struct.TYPE_18__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %8, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %9, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @VoutCheckFormat(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %121

35:                                               ; preds = %3
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @VoutFixFormat(i32* %10, i32* %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = call i64 @vout_ChangeSource(%struct.TYPE_16__* %40, i32* %10)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @video_format_Clean(i32* %10)
  store i32 0, i32* %4, align 4
  br label %121

45:                                               ; preds = %35
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = call i64 @vout_EnableWindow(%struct.TYPE_16__* %46, i32* %10, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = call i32 @msg_Err(%struct.TYPE_16__* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @video_format_Clean(i32* %10)
  store i32 -1, i32* %4, align 4
  br label %121

53:                                               ; preds = %45
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = call i32 @vout_StopDisplay(%struct.TYPE_16__* %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = call i32 @vout_ReinitInterlacingSupport(%struct.TYPE_16__* %62)
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  store float 1.000000e+00, float* %70, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 5
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = call i64 @vout_Start(%struct.TYPE_16__* %78, i32* %79, %struct.TYPE_18__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %61
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %85 = call i32 @msg_Err(%struct.TYPE_16__* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 3
  %88 = call i32 @video_format_Clean(i32* %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %90 = call i32 @vout_DisableWindow(%struct.TYPE_16__* %89)
  store i32 -1, i32* %4, align 4
  br label %121

91:                                               ; preds = %61
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = load i32, i32* @Thread, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = load i32, i32* @VLC_THREAD_PRIORITY_OUTPUT, align 4
  %97 = call i64 @vlc_clone(i32* %93, i32 %94, %struct.TYPE_16__* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = call i32 @vout_ReleaseDisplay(%struct.TYPE_16__* %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %103 = call i32 @vout_DisableWindow(%struct.TYPE_16__* %102)
  store i32 -1, i32* %4, align 4
  br label %121

104:                                              ; preds = %91
  %105 = load i32*, i32** %7, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @spu_Attach(i64 %115, i32* %116)
  br label %118

118:                                              ; preds = %112, %107, %104
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %120 = call i32 @vout_IntfReinit(%struct.TYPE_16__* %119)
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %99, %83, %49, %43, %34
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VoutCheckFormat(i32*) #1

declare dso_local i32 @VoutFixFormat(i32*, i32*) #1

declare dso_local i64 @vout_ChangeSource(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i64 @vout_EnableWindow(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @vout_StopDisplay(%struct.TYPE_16__*) #1

declare dso_local i32 @vout_ReinitInterlacingSupport(%struct.TYPE_16__*) #1

declare dso_local i64 @vout_Start(%struct.TYPE_16__*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @vout_DisableWindow(%struct.TYPE_16__*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @vout_ReleaseDisplay(%struct.TYPE_16__*) #1

declare dso_local i32 @spu_Attach(i64, i32*) #1

declare dso_local i32 @vout_IntfReinit(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
