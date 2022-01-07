; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_playlist_bookmark_Play.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_playlist_bookmark_Play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @playlist_bookmark_Play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @playlist_bookmark_Play(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @var_CreateGetString(i32* %13, i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @vlc_playlist_Count(i32* %16)
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %38, %3
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32* @vlc_playlist_Get(i32* %23, i64 %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32* @vlc_playlist_item_GetMedia(i32* %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i8* @input_item_GetURI(i32* %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @strcmp(i8* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %41

35:                                               ; preds = %22
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @free(i8* %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %18

41:                                               ; preds = %34, %18
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @vlc_playlist_PlayAt(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  ret void
}

declare dso_local i8* @var_CreateGetString(i32*, i8*) #1

declare dso_local i64 @vlc_playlist_Count(i32*) #1

declare dso_local i32* @vlc_playlist_Get(i32*, i64) #1

declare dso_local i32* @vlc_playlist_item_GetMedia(i32*) #1

declare dso_local i8* @input_item_GetURI(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_playlist_PlayAt(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
