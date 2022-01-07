; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_request.c_vlc_playlist_FindIndices.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_request.c_vlc_playlist_FindIndices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.size_vector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i64, i32, %struct.size_vector*)* @vlc_playlist_FindIndices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_playlist_FindIndices(i32* %0, i32** %1, i64 %2, i32 %3, %struct.size_vector* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.size_vector*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.size_vector* %4, %struct.size_vector** %10, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %39, %5
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i32**, i32*** %7, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @vlc_playlist_FindRealIndex(i32* %19, i32* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.size_vector*, %struct.size_vector** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @vlc_vector_push(%struct.size_vector* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @VLC_UNUSED(i32 %34)
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %28, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %14

42:                                               ; preds = %14
  ret void
}

declare dso_local i32 @vlc_playlist_FindRealIndex(i32*, i32*, i32) #1

declare dso_local i32 @vlc_vector_push(%struct.size_vector*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VLC_UNUSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
