; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetCategoryLanguage.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_player.c_vlc_player_GetCategoryLanguage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"audio-language\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sub-language\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_player_GetCategoryLanguage(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @vlc_player_assert_locked(i32* %6)
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i8* @var_GetString(i32* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %11, i8** %3, align 8
  br label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @var_GetString(i32* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %3, align 8
  br label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @vlc_assert_unreachable()
  br label %17

17:                                               ; preds = %9, %12, %15
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

declare dso_local i32 @vlc_player_assert_locked(i32*) #1

declare dso_local i8* @var_GetString(i32*, i8*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
