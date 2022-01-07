; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_next.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_default_sample = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Testing media player next()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @test_media_list_player_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_media_list_player_next(i8** %0, i32 %1) #0 {
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
  %11 = call i32 @test_log(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %3, align 8
  %14 = call i32* @libvlc_new(i32 %12, i8** %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @assert(i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32* @libvlc_media_new_path(i32* %21, i8* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @assert(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @libvlc_media_list_new(i32* %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  %33 = call i32 @assert(i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @libvlc_media_list_player_new(i32* %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @assert(i32* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @libvlc_media_list_add_media(i32* %38, i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @media_list_add_file_path(i32* %41, i32* %42, i8* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @media_list_add_file_path(i32* %45, i32* %46, i8* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @media_list_add_file_path(i32* %49, i32* %50, i8* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @libvlc_media_list_player_set_media_list(i32* %53, i32* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @libvlc_media_list_player_play_item(i32* %56, i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @libvlc_media_release(i32* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @wait_playing(i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @libvlc_media_list_player_next(i32* %63)
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @wait_playing(i32* %65)
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @libvlc_media_list_player_pause(i32* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @libvlc_media_list_player_next(i32* %69)
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @wait_playing(i32* %71)
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @stop_and_wait(i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @libvlc_media_list_player_next(i32* %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @wait_playing(i32* %77)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @stop_and_wait(i32* %79)
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @libvlc_media_list_player_release(i32* %81)
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @libvlc_release(i32* %83)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32* @libvlc_new(i32, i8**) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32* @libvlc_media_new_path(i32*, i8*) #1

declare dso_local i32* @libvlc_media_list_new(i32*) #1

declare dso_local i32* @libvlc_media_list_player_new(i32*) #1

declare dso_local i32 @libvlc_media_list_add_media(i32*, i32*) #1

declare dso_local i32 @media_list_add_file_path(i32*, i32*, i8*) #1

declare dso_local i32 @libvlc_media_list_player_set_media_list(i32*, i32*) #1

declare dso_local i32 @libvlc_media_list_player_play_item(i32*, i32*) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

declare dso_local i32 @wait_playing(i32*) #1

declare dso_local i32 @libvlc_media_list_player_next(i32*) #1

declare dso_local i32 @libvlc_media_list_player_pause(i32*) #1

declare dso_local i32 @stop_and_wait(i32*) #1

declare dso_local i32 @libvlc_media_list_player_release(i32*) #1

declare dso_local i32 @libvlc_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
