; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_ControlUnpause.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_ControlUnpause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32* }

@DEMUX_SET_PAUSE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cannot resume\00", align 1
@ERROR_S = common dso_local global i32 0, align 4
@PLAYING_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ControlUnpause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ControlUnpause(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_4__* @input_priv(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.TYPE_4__* @input_priv(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @DEMUX_SET_PAUSE_STATE, align 4
  %20 = call i64 @demux_Control(i32* %18, i32 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %11
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @msg_Err(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @ERROR_S, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @input_ChangeState(i32* %25, i32 %26, i32 %27)
  br label %41

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @PLAYING_S, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @input_ChangeState(i32* %31, i32 %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.TYPE_4__* @input_priv(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @es_out_SetPauseState(i32 %38, i32 0, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %30, %22
  ret void
}

declare dso_local %struct.TYPE_4__* @input_priv(i32*) #1

declare dso_local i64 @demux_Control(i32*, i32, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @input_ChangeState(i32*, i32, i32) #1

declare dso_local i32 @es_out_SetPauseState(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
