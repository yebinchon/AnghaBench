; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_play_item_at_index.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media_list_player.c_test_media_list_player_play_item_at_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_default_sample = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"Testing play_item_at_index of %s using the media list.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @test_media_list_player_play_item_at_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_media_list_player_play_item_at_index(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** @test_default_sample, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i32 @test_log(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %3, align 8
  %16 = call i32* @libvlc_new(i32 %14, i8** %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @assert(i32* %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32* @libvlc_media_new_path(i32* %23, i8* %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @assert(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @libvlc_media_list_new(i32* %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  %35 = call i32 @assert(i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @libvlc_media_list_player_new(i32* %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @assert(i32* %38)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %47, %2
  %41 = load i32, i32* %10, align 4
  %42 = icmp ult i32 %41, 5
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @libvlc_media_list_add_media(i32* %44, i32* %45)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %40

50:                                               ; preds = %40
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @libvlc_media_list_player_set_media_list(i32* %51, i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @libvlc_media_list_player_play_item_at_index(i32* %54, i32 0)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @wait_playing(i32* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @stop_and_wait(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @libvlc_media_release(i32* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @libvlc_media_list_player_release(i32* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @libvlc_release(i32* %64)
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

declare dso_local i32 @libvlc_media_list_player_play_item_at_index(i32*, i32) #1

declare dso_local i32 @wait_playing(i32*) #1

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
