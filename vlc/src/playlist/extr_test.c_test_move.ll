; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_move.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_move() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [10 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = call i32* @vlc_playlist_New(i32* null)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = ptrtoint i32* %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %9 = call i32 @CreateDummyMediaArray(i32** %8, i32 10)
  %10 = load i32*, i32** %1, align 8
  %11 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %12 = call i32 @vlc_playlist_Append(i32* %10, i32** %11, i32 10)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @VLC_SUCCESS, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @vlc_playlist_Move(i32* %18, i32 3, i32 4, i32 5)
  %20 = call i32 @EXPECT_AT(i32 0, i32 0)
  %21 = call i32 @EXPECT_AT(i32 1, i32 1)
  %22 = call i32 @EXPECT_AT(i32 2, i32 2)
  %23 = call i32 @EXPECT_AT(i32 3, i32 7)
  %24 = call i32 @EXPECT_AT(i32 4, i32 8)
  %25 = call i32 @EXPECT_AT(i32 5, i32 3)
  %26 = call i32 @EXPECT_AT(i32 6, i32 4)
  %27 = call i32 @EXPECT_AT(i32 7, i32 5)
  %28 = call i32 @EXPECT_AT(i32 8, i32 6)
  %29 = call i32 @EXPECT_AT(i32 9, i32 9)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @vlc_playlist_Move(i32* %30, i32 5, i32 4, i32 3)
  %32 = call i32 @EXPECT_AT(i32 0, i32 0)
  %33 = call i32 @EXPECT_AT(i32 1, i32 1)
  %34 = call i32 @EXPECT_AT(i32 2, i32 2)
  %35 = call i32 @EXPECT_AT(i32 3, i32 3)
  %36 = call i32 @EXPECT_AT(i32 4, i32 4)
  %37 = call i32 @EXPECT_AT(i32 5, i32 5)
  %38 = call i32 @EXPECT_AT(i32 6, i32 6)
  %39 = call i32 @EXPECT_AT(i32 7, i32 7)
  %40 = call i32 @EXPECT_AT(i32 8, i32 8)
  %41 = call i32 @EXPECT_AT(i32 9, i32 9)
  %42 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %43 = call i32 @DestroyMediaArray(i32** %42, i32 10)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @vlc_playlist_Delete(i32* %44)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

declare dso_local i32 @vlc_playlist_Move(i32*, i32, i32, i32) #1

declare dso_local i32 @EXPECT_AT(i32, i32) #1

declare dso_local i32 @DestroyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
