; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_request.c_vlc_playlist_MoveBySlices.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_request.c_vlc_playlist_MoveBySlices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64, i64)* @vlc_playlist_MoveBySlices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_playlist_MoveBySlices(i32* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = sub i64 %15, 1
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %34, %4
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, 1
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %37

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %9, align 8
  br label %17

37:                                               ; preds = %32, %17
  %38 = load i32*, i32** %5, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @vlc_playlist_Regroup(i32* %38, i64* %39, i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @vlc_playlist_Move(i32* %46, i64 %47, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %45, %37
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_playlist_Regroup(i32*, i64*, i64) #1

declare dso_local i32 @vlc_playlist_Move(i32*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
