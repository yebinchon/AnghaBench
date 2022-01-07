; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_remove.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_remove() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [10 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32* @vlc_playlist_New(i32* null)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = ptrtoint i32* %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %10 = call i32 @CreateDummyMediaArray(i32** %9, i32 10)
  %11 = load i32*, i32** %1, align 8
  %12 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %13 = call i32 @vlc_playlist_Append(i32* %11, i32** %12, i32 10)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @VLC_SUCCESS, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %25, %0
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @vlc_playlist_RemoveOne(i32* %23, i32 2)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %19

28:                                               ; preds = %19
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @vlc_playlist_Remove(i32* %29, i32 3, i32 2)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @vlc_playlist_Count(i32* %31)
  %33 = icmp eq i32 %32, 5
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call i32 @EXPECT_AT(i32 0, i32 0)
  %37 = call i32 @EXPECT_AT(i32 1, i32 1)
  %38 = call i32 @EXPECT_AT(i32 2, i32 5)
  %39 = call i32 @EXPECT_AT(i32 3, i32 8)
  %40 = call i32 @EXPECT_AT(i32 4, i32 9)
  %41 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %42 = call i32 @DestroyMediaArray(i32** %41, i32 10)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @vlc_playlist_Delete(i32* %43)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

declare dso_local i32 @vlc_playlist_RemoveOne(i32*, i32) #1

declare dso_local i32 @vlc_playlist_Remove(i32*, i32, i32) #1

declare dso_local i32 @vlc_playlist_Count(i32*) #1

declare dso_local i32 @EXPECT_AT(i32, i32) #1

declare dso_local i32 @DestroyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
