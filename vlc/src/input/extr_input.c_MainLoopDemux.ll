; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_MainLoopDemux.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_MainLoopDemux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i32* }

@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@DEMUX_GET_TIME = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@VLC_DEMUXER_EGENERIC = common dso_local global i32 0, align 4
@INPUT_UPDATE_TITLE_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"EOF reached\00", align 1
@ERROR_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @MainLoopDemux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MainLoopDemux(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_5__* @input_priv(i32* %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @DEMUX_GET_TIME, align 4
  %25 = call i64 @demux_Control(i32* %23, i32 %24, i64* %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @VLC_TICK_INVALID, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %29
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @demux_Demux(i32* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  br label %59

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %48
  %60 = phi i32 [ %49, %48 ], [ %58, %57 ]
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @INPUT_UPDATE_TITLE_LIST, align 4
  %67 = call i64 @demux_TestAndClearFlags(i32* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @UpdateTitleListfromDemux(i32* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @UpdateTitleSeekpointFromDemux(i32* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32*, i32** %4, align 8
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @UpdateGenericFromDemux(i32* %84)
  br label %86

86:                                               ; preds = %83, %59
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @msg_Dbg(i32* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @es_out_Eos(i32 %99)
  br label %120

101:                                              ; preds = %86
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @VLC_DEMUXER_EGENERIC, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* @ERROR_S, align 4
  %108 = load i64, i64* @VLC_TICK_INVALID, align 8
  %109 = call i32 @input_ChangeState(i32* %106, i32 %107, i64 %108)
  br label %119

110:                                              ; preds = %101
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @SlaveDemux(i32* %116)
  br label %118

118:                                              ; preds = %115, %110
  br label %119

119:                                              ; preds = %118, %105
  br label %120

120:                                              ; preds = %119, %90
  ret void
}

declare dso_local %struct.TYPE_5__* @input_priv(i32*) #1

declare dso_local i64 @demux_Control(i32*, i32, i64*) #1

declare dso_local i32 @demux_Demux(i32*) #1

declare dso_local i64 @demux_TestAndClearFlags(i32*, i32) #1

declare dso_local i32 @UpdateTitleListfromDemux(i32*) #1

declare dso_local i32 @UpdateTitleSeekpointFromDemux(i32*) #1

declare dso_local i32 @UpdateGenericFromDemux(i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*) #1

declare dso_local i32 @es_out_Eos(i32) #1

declare dso_local i32 @input_ChangeState(i32*, i32, i64) #1

declare dso_local i32 @SlaveDemux(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
