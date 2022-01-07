; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_ControlPause.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_ControlPause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@PAUSE_S = common dso_local global i32 0, align 4
@DEMUX_SET_PAUSE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot set pause state\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot set pause state at es_out level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ControlPause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ControlPause(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @PAUSE_S, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_4__* @input_priv(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call %struct.TYPE_4__* @input_priv(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @DEMUX_SET_PAUSE_STATE, align 4
  %22 = call i64 @demux_Control(i32* %20, i32 %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @msg_Warn(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %48

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32*, i32** %3, align 8
  %30 = call %struct.TYPE_4__* @input_priv(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call %struct.TYPE_4__* @input_priv(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @es_out_SetPauseState(i32 %32, i64 %36, i32 1, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @msg_Warn(i32* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %48

43:                                               ; preds = %28
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @input_ChangeState(i32* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %40, %24
  ret void
}

declare dso_local %struct.TYPE_4__* @input_priv(i32*) #1

declare dso_local i64 @demux_Control(i32*, i32, i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i64 @es_out_SetPauseState(i32, i64, i32, i32) #1

declare dso_local i32 @input_ChangeState(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
