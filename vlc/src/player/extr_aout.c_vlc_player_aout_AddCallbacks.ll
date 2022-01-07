; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_aout.c_vlc_player_aout_AddCallbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_aout.c_vlc_player_aout_AddCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@vlc_player_AoutCallback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_aout_AddCallbacks(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @vlc_player_aout_Hold(i32* %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @vlc_player_AoutCallback, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @var_AddCallback(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @vlc_player_AoutCallback, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @var_AddCallback(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @vlc_player_AoutCallback, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @var_AddCallback(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @aout_Release(i32* %22)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32* @vlc_player_aout_Hold(i32*) #1

declare dso_local i32 @var_AddCallback(i32*, i8*, i32, i32*) #1

declare dso_local i32 @aout_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
