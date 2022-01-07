; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_pause_stop.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_pause_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_default_sample = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Testing play and pause of %s using the media list.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @test_media_list_player_pause_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_media_list_player_pause_stop(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** @test_default_sample, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = call i32 @test_log(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %3, align 8
  %15 = call i32* @libvlc_new(i32 %13, i8** %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @assert(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32* @libvlc_media_new_path(i32* %22, i8* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @assert(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @libvlc_media_list_new(i32* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @assert(i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32* @libvlc_media_list_player_new(i32* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @assert(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @libvlc_media_list_add_media(i32* %39, i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @libvlc_media_list_player_set_media_list(i32* %42, i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @libvlc_media_list_player_play_item(i32* %45, i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @wait_playing(i32* %48)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @libvlc_media_list_player_pause(i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @stop_and_wait(i32* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @libvlc_media_release(i32* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @libvlc_media_list_player_release(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @libvlc_release(i32* %58)
  ret void
}

declare dso_local i32 @test_log(i8*, i8*) #1

declare dso_local i32* @libvlc_new(i32, i8**) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32* @libvlc_media_new_path(i32*, i8*) #1

declare dso_local i32* @libvlc_media_list_new(i32*) #1

declare dso_local i32* @libvlc_media_list_player_new(i32*) #1

declare dso_local i32 @libvlc_media_list_add_media(i32*, i32*) #1

declare dso_local i32 @libvlc_media_list_player_set_media_list(i32*, i32*) #1

declare dso_local i32 @libvlc_media_list_player_play_item(i32*, i32*) #1

declare dso_local i32 @wait_playing(i32*) #1

declare dso_local i32 @libvlc_media_list_player_pause(i32*) #1

declare dso_local i32 @stop_and_wait(i32*) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

declare dso_local i32 @libvlc_media_list_player_release(i32*) #1

declare dso_local i32 @libvlc_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
