; ModuleID = '/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_osd_Icon.c'
source_filename = "/home/carl/AnghaBench/vlc/src/player/extr_osd.c_vlc_player_osd_Icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_player_osd_Icon(i32* %0, i16 signext %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load i32*, i32** %3, align 8
  %8 = call i32** @vlc_player_osd_HoldAll(i32* %7, i64* %5)
  store i32** %8, i32*** %6, align 8
  %9 = load i32**, i32*** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i16, i16* %4, align 2
  %12 = call i32 @vouts_osd_Icon(i32** %9, i64 %10, i16 signext %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @vlc_player_osd_ReleaseAll(i32* %13, i32** %14, i64 %15)
  ret void
}

declare dso_local i32** @vlc_player_osd_HoldAll(i32*, i64*) #1

declare dso_local i32 @vouts_osd_Icon(i32**, i64, i16 signext) #1

declare dso_local i32 @vlc_player_osd_ReleaseAll(i32*, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
