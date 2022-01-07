; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_audiotoolbox_midi.c_CreateAUGraph.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_audiotoolbox_midi.c_CreateAUGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bailout = common dso_local global i32 0, align 4
@kAudioUnitType_MusicDevice = common dso_local global i32 0, align 4
@kAudioUnitSubType_DLSSynth = common dso_local global i32 0, align 4
@kAudioUnitType_Effect = common dso_local global i32 0, align 4
@kAudioUnitSubType_PeakLimiter = common dso_local global i32 0, align 4
@kAudioUnitType_Output = common dso_local global i32 0, align 4
@kAudioUnitSubType_GenericOutput = common dso_local global i32 0, align 4
@kAudioUnitSubType_MIDISynth = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @CreateAUGraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CreateAUGraph(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @NewAUGraph(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @bailout, align 4
  %14 = call i32 @on_err_goto(i32 %12, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @kAudioUnitType_MusicDevice, align 4
  %18 = load i32, i32* @kAudioUnitSubType_DLSSynth, align 4
  %19 = call i32 @AddAppleAUNode(i32 %16, i32 %17, i32 %18, i32* %8)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @bailout, align 4
  %21 = call i32 @on_err_goto(i32 %19, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @kAudioUnitType_Effect, align 4
  %25 = load i32, i32* @kAudioUnitSubType_PeakLimiter, align 4
  %26 = call i32 @AddAppleAUNode(i32 %23, i32 %24, i32 %25, i32* %9)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @bailout, align 4
  %28 = call i32 @on_err_goto(i32 %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @kAudioUnitType_Output, align 4
  %32 = load i32, i32* @kAudioUnitSubType_GenericOutput, align 4
  %33 = call i32 @AddAppleAUNode(i32 %30, i32 %31, i32 %32, i32* %10)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @bailout, align 4
  %35 = call i32 @on_err_goto(i32 %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AUGraphOpen(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @bailout, align 4
  %40 = call i32 @on_err_goto(i32 %38, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @AUGraphConnectNodeInput(i32 %42, i32 %43, i32 0, i32 %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @bailout, align 4
  %47 = call i32 @on_err_goto(i32 %45, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @AUGraphConnectNodeInput(i32 %49, i32 %50, i32 0, i32 %51, i32 0)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @bailout, align 4
  %54 = call i32 @on_err_goto(i32 %52, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @AUGraphNodeInfo(i32 %56, i32 %57, i32 0, i32* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @bailout, align 4
  %61 = call i32 @on_err_goto(i32 %59, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @AUGraphNodeInfo(i32 %63, i32 %64, i32 0, i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @bailout, align 4
  %68 = call i32 @on_err_goto(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %3
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @on_err_goto(i32, i32) #1

declare dso_local i32 @NewAUGraph(i32*) #1

declare dso_local i32 @AddAppleAUNode(i32, i32, i32, i32*) #1

declare dso_local i32 @AUGraphOpen(i32) #1

declare dso_local i32 @AUGraphConnectNodeInput(i32, i32, i32, i32, i32) #1

declare dso_local i32 @AUGraphNodeInfo(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
