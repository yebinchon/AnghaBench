; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_insert.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_insert() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [15 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32* @vlc_playlist_New(i32* null)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = ptrtoint i32* %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = getelementptr inbounds [15 x i32*], [15 x i32*]* %2, i64 0, i64 0
  %10 = call i32 @CreateDummyMediaArray(i32** %9, i32 15)
  %11 = load i32*, i32** %1, align 8
  %12 = getelementptr inbounds [15 x i32*], [15 x i32*]* %2, i64 0, i64 0
  %13 = call i32 @vlc_playlist_Append(i32* %11, i32** %12, i32 5)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @VLC_SUCCESS, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %35, %0
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 5
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 5
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [15 x i32*], [15 x i32*]* %2, i64 0, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @vlc_playlist_InsertOne(i32* %23, i32 2, i32* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @VLC_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load i32*, i32** %1, align 8
  %40 = getelementptr inbounds [15 x i32*], [15 x i32*]* %2, i64 0, i64 10
  %41 = call i32 @vlc_playlist_Insert(i32* %39, i32 6, i32** %40, i32 5)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @VLC_SUCCESS, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @vlc_playlist_Count(i32* %47)
  %49 = icmp eq i32 %48, 15
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = call i32 @EXPECT_AT(i32 0, i32 0)
  %53 = call i32 @EXPECT_AT(i32 1, i32 1)
  %54 = call i32 @EXPECT_AT(i32 2, i32 9)
  %55 = call i32 @EXPECT_AT(i32 3, i32 8)
  %56 = call i32 @EXPECT_AT(i32 4, i32 7)
  %57 = call i32 @EXPECT_AT(i32 5, i32 6)
  %58 = call i32 @EXPECT_AT(i32 6, i32 10)
  %59 = call i32 @EXPECT_AT(i32 7, i32 11)
  %60 = call i32 @EXPECT_AT(i32 8, i32 12)
  %61 = call i32 @EXPECT_AT(i32 9, i32 13)
  %62 = call i32 @EXPECT_AT(i32 10, i32 14)
  %63 = call i32 @EXPECT_AT(i32 11, i32 5)
  %64 = call i32 @EXPECT_AT(i32 12, i32 2)
  %65 = call i32 @EXPECT_AT(i32 13, i32 3)
  %66 = call i32 @EXPECT_AT(i32 14, i32 4)
  %67 = getelementptr inbounds [15 x i32*], [15 x i32*]* %2, i64 0, i64 0
  %68 = call i32 @DestroyMediaArray(i32** %67, i32 15)
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @vlc_playlist_Delete(i32* %69)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

declare dso_local i32 @vlc_playlist_InsertOne(i32*, i32, i32*) #1

declare dso_local i32 @vlc_playlist_Insert(i32*, i32, i32**, i32) #1

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
