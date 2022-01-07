; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_vout.c_vlc_player_vout_DelCallbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_vout.c_vlc_player_vout_DelCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@vlc_player_VoutCallback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"video-wallpaper\00", align 1
@osd_vars = common dso_local global i8** null, align 8
@vlc_player_vout_OSDCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_vout_DelCallbacks(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @vlc_player_VoutCallback, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @var_DelCallback(i32* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %7, i32* %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @vlc_player_VoutCallback, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @var_DelCallback(i32* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32* %12)
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i64, i64* %5, align 8
  %16 = load i8**, i8*** @osd_vars, align 8
  %17 = call i64 @ARRAY_SIZE(i8** %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = load i8**, i8*** @osd_vars, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @vlc_player_vout_OSDCallback, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @var_DelCallback(i32* %20, i8* %24, i32 %25, i32* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %5, align 8
  br label %14

31:                                               ; preds = %14
  ret void
}

declare dso_local i32 @var_DelCallback(i32*, i8*, i32, i32*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
