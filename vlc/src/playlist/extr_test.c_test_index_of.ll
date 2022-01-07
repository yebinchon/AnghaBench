; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_index_of.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_index_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_index_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_index_of() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [10 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = call i32* @vlc_playlist_New(i32* null)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = ptrtoint i32* %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %10 = call i32 @CreateDummyMediaArray(i32** %9, i32 10)
  %11 = load i32*, i32** %1, align 8
  %12 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %13 = call i32 @vlc_playlist_Append(i32* %11, i32** %12, i32 9)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @VLC_SUCCESS, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 4
  %21 = load i32*, i32** %20, align 16
  %22 = call i32 @vlc_playlist_IndexOfMedia(i32* %19, i32* %21)
  %23 = icmp eq i32 %22, 4
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 9
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @vlc_playlist_IndexOfMedia(i32* %26, i32* %28)
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32* @vlc_playlist_Get(i32* %33, i32 4)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @vlc_playlist_IndexOf(i32* %35, i32* %36)
  %38 = icmp eq i32 %37, 4
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @vlc_playlist_item_Hold(i32* %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @vlc_playlist_RemoveOne(i32* %43, i32 4)
  %45 = load i32*, i32** %1, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @vlc_playlist_IndexOf(i32* %45, i32* %46)
  %48 = icmp eq i32 %47, -1
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @vlc_playlist_item_Release(i32* %51)
  %53 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %54 = call i32 @DestroyMediaArray(i32** %53, i32 10)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @vlc_playlist_Delete(i32* %55)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

declare dso_local i32 @vlc_playlist_IndexOfMedia(i32*, i32*) #1

declare dso_local i32* @vlc_playlist_Get(i32*, i32) #1

declare dso_local i32 @vlc_playlist_IndexOf(i32*, i32*) #1

declare dso_local i32 @vlc_playlist_item_Hold(i32*) #1

declare dso_local i32 @vlc_playlist_RemoveOne(i32*, i32) #1

declare dso_local i32 @vlc_playlist_item_Release(i32*) #1

declare dso_local i32 @DestroyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
