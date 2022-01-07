; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_PrerenderText.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_vout_subpictures.c_spu_PrerenderText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"original picture size %dx%d is unsupported\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"original picture size is undefined\00", align 1
@VLC_CODEC_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*)* @spu_PrerenderText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_PrerenderText(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, %struct.TYPE_13__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %18, %5
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28, %23
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @msg_Err(i32* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  br label %45

42:                                               ; preds = %28
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @msg_Warn(i32* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %45, %18
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  br label %70

68:                                               ; preds = %56
  %69 = call i32 (...) @vlc_tick_now()
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %67, %64 ], [ %69, %68 ]
  %72 = call i32 @subpicture_Update(%struct.TYPE_14__* %57, %struct.TYPE_13__* %58, %struct.TYPE_13__* %59, i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %13, align 8
  br label %82

82:                                               ; preds = %100, %70
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %84 = icmp ne %struct.TYPE_15__* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @VLC_CODEC_TEXT, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %100

93:                                               ; preds = %85
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @SpuRenderText(i32* %94, %struct.TYPE_15__* %95, i32 %96, i32 %97, i32* %98)
  br label %100

100:                                              ; preds = %93, %92
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %13, align 8
  br label %82

104:                                              ; preds = %82
  ret void
}

declare dso_local i32 @msg_Err(i32*, i8*, i32, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @subpicture_Update(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @SpuRenderText(i32*, %struct.TYPE_15__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
