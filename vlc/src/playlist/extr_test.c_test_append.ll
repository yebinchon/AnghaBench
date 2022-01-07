; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_append.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_append() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [10 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32* @vlc_playlist_New(i32* null)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = ptrtoint i32* %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %11 = call i32 @CreateDummyMediaArray(i32** %10, i32 10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %27, %0
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @vlc_playlist_AppendOne(i32* %16, i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VLC_SUCCESS, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load i32*, i32** %1, align 8
  %32 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 5
  %33 = call i32 @vlc_playlist_Append(i32* %31, i32** %32, i32 5)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @VLC_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @vlc_playlist_Count(i32* %39)
  %41 = icmp eq i32 %40, 10
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = call i32 @EXPECT_AT(i32 0, i32 0)
  %45 = call i32 @EXPECT_AT(i32 1, i32 1)
  %46 = call i32 @EXPECT_AT(i32 2, i32 2)
  %47 = call i32 @EXPECT_AT(i32 3, i32 3)
  %48 = call i32 @EXPECT_AT(i32 4, i32 4)
  %49 = call i32 @EXPECT_AT(i32 5, i32 5)
  %50 = call i32 @EXPECT_AT(i32 6, i32 6)
  %51 = call i32 @EXPECT_AT(i32 7, i32 7)
  %52 = call i32 @EXPECT_AT(i32 8, i32 8)
  %53 = call i32 @EXPECT_AT(i32 9, i32 9)
  %54 = getelementptr inbounds [10 x i32*], [10 x i32*]* %2, i64 0, i64 0
  %55 = call i32 @DestroyMediaArray(i32** %54, i32 10)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @vlc_playlist_Delete(i32* %56)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_AppendOne(i32*, i32*) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

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
