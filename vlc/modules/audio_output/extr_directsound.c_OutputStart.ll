; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_OutputStart.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_OutputStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Opening DirectSound Audio Output\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot initialize DirectSound\00", align 1
@OutputTimeGet = common dso_local global i32 0, align 4
@OutputPlay = common dso_local global i32 0, align 4
@OutputPause = common dso_local global i32 0, align 4
@OutputFlush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @OutputStart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OutputStart(%struct.TYPE_12__* %0, i32* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = call i32 @msg_Dbg(%struct.TYPE_12__* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = call i64 @InitDirectSound(%struct.TYPE_12__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = call i32 @msg_Err(%struct.TYPE_12__* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = call i32 @VLC_OBJECT(%struct.TYPE_12__* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @Start(i32 %21, i32* %23, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %55

30:                                               ; preds = %16
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @VolumeSet(%struct.TYPE_12__* %31, i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MuteSet(%struct.TYPE_12__* %37, i32 %41)
  %43 = load i32, i32* @OutputTimeGet, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @OutputPlay, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @OutputPause, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @OutputFlush, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %30, %29, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @InitDirectSound(%struct.TYPE_12__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @Start(i32, i32*, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_12__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @VolumeSet(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @MuteSet(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
