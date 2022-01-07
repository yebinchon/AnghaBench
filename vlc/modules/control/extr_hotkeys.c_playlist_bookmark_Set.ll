; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_playlist_bookmark_Set.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_playlist_bookmark_Set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_VAR_STRING = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"setting playlist bookmark %i to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i32)* @playlist_bookmark_Set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @playlist_bookmark_Set(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @VLC_VAR_STRING, align 4
  %15 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @var_Create(i32* %12, i8* %13, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @vlc_playlist_GetPlayer(i32* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @vlc_player_GetCurrentMedia(i32* %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = call i8* @input_item_GetURI(i32* %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @config_PutPsz(i8* %27, i8* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @msg_Info(i32* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %32)
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @free(i8* %34)
  br label %36

36:                                               ; preds = %24, %4
  ret void
}

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32* @vlc_playlist_GetPlayer(i32*) #1

declare dso_local i32* @vlc_player_GetCurrentMedia(i32*) #1

declare dso_local i8* @input_item_GetURI(i32*) #1

declare dso_local i32 @config_PutPsz(i8*, i8*) #1

declare dso_local i32 @msg_Info(i32*, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
