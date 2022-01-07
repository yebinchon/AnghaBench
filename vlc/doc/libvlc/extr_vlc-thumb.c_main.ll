; ModuleID = '/home/carl/AnghaBench/vlc/doc/libvlc/extr_vlc-thumb.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/doc/libvlc/extr_vlc-thumb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @LC_ALL, align 4
  %15 = call i32 @setlocale(i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @cmdline(i32 %16, i8** %17, i8** %6, i8** %7, i8** %8, i32* %9)
  %19 = call i32 @pthread_condattr_init(i32* %10)
  %20 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %21 = call i32 @pthread_condattr_setclock(i32* %10, i32 %20)
  %22 = call i32 @pthread_cond_init(i32* @wait, i32* %10)
  %23 = call i32 @pthread_condattr_destroy(i32* %10)
  %24 = call i32* (...) @create_libvlc()
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @assert(i32* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32* @libvlc_media_new_path(i32* %27, i8* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @assert(i32* %30)
  %32 = load i32*, i32** %13, align 8
  %33 = call i32* @libvlc_media_player_new_from_media(i32* %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @assert(i32* %34)
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @libvlc_media_player_play(i32* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @set_position(i32* %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @snapshot(i32* %40, i32 %41, i8* %42)
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @libvlc_media_player_stop_async(i32* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %2
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @rename(i8* %50, i8* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %49, %2
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @libvlc_media_player_release(i32* %58)
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @libvlc_media_release(i32* %60)
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @libvlc_release(i32* %62)
  %64 = call i32 @pthread_cond_destroy(i32* @wait)
  ret i32 0
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @cmdline(i32, i8**, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @pthread_condattr_init(i32*) #1

declare dso_local i32 @pthread_condattr_setclock(i32*, i32) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pthread_condattr_destroy(i32*) #1

declare dso_local i32* @create_libvlc(...) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32* @libvlc_media_new_path(i32*, i8*) #1

declare dso_local i32* @libvlc_media_player_new_from_media(i32*) #1

declare dso_local i32 @libvlc_media_player_play(i32*) #1

declare dso_local i32 @set_position(i32*) #1

declare dso_local i32 @snapshot(i32*, i32, i8*) #1

declare dso_local i32 @libvlc_media_player_stop_async(i32*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @libvlc_media_player_release(i32*) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

declare dso_local i32 @libvlc_release(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
