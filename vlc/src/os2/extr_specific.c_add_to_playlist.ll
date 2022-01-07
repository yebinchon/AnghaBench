; ModuleID = '/home/carl/AnghaBench/vlc/src/os2/extr_specific.c_add_to_playlist.c'
source_filename = "/home/carl/AnghaBench/vlc/src/os2/extr_specific.c_add_to_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_INPUT_OPTION_TRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, i8**)* @add_to_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_playlist(i32* %0, i8* %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @input_item_New(i8* %12, i32* null)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %38

17:                                               ; preds = %5
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i8**, i8*** %10, align 8
  %21 = load i32, i32* @VLC_INPUT_OPTION_TRUSTED, align 4
  %22 = call i32 @input_item_AddOptions(i32* %18, i32 %19, i8** %20, i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @vlc_playlist_Lock(i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @vlc_playlist_AppendOne(i32* %25, i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @vlc_playlist_Start(i32* %31)
  br label %33

33:                                               ; preds = %30, %17
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @vlc_playlist_Unlock(i32* %34)
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @input_item_Release(i32* %36)
  br label %38

38:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32* @input_item_New(i8*, i32*) #1

declare dso_local i32 @input_item_AddOptions(i32*, i32, i8**, i32) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32 @vlc_playlist_AppendOne(i32*, i32*) #1

declare dso_local i32 @vlc_playlist_Start(i32*) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
