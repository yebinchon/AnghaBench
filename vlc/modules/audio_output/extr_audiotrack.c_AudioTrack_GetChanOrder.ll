; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_GetChanOrder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_AudioTrack_GetChanOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AOUT_CHAN_LEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_RIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_CENTER = common dso_local global i32 0, align 4
@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@AOUT_CHAN_REARLEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_REARRIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_REARCENTER = common dso_local global i32 0, align 4
@AOUT_CHAN_MIDDLELEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_MIDDLERIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @AudioTrack_GetChanOrder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AudioTrack_GetChanOrder(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32 %12, i32* %17, align 4
  br label %18

18:                                               ; preds = %11, %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %25, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %38, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %44
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %57
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %70
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  br label %96

96:                                               ; preds = %89, %83
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  br label %109

109:                                              ; preds = %102, %96
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %116, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %109
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %125 = icmp sle i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
