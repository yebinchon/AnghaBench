; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_media.c_test_media_preparsed.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_media.c_test_media_preparsed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"test_media_preparsed: %s, expected: %d\0A\00", align 1
@libvlc_MediaParsedChanged = common dso_local global i32 0, align 4
@media_parse_ended = common dso_local global i32 0, align 4
@libvlc_media_parsed_status_done = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i32, i64)* @test_media_preparsed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_media_preparsed(i32* %0, i8* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  br label %21

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i8* [ %18, %17 ], [ %20, %19 ]
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @test_log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %22, i64 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32* @libvlc_media_new_path(i32* %28, i8* %29)
  store i32* %30, i32** %11, align 8
  br label %35

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32* @libvlc_media_new_location(i32* %32, i8* %33)
  store i32* %34, i32** %11, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = call i32 @vlc_sem_init(i32* %12, i32 0)
  %41 = load i32*, i32** %11, align 8
  %42 = call i32* @libvlc_media_event_manager(i32* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* @libvlc_MediaParsedChanged, align 4
  %45 = load i32, i32* @media_parse_ended, align 4
  %46 = call i32 @libvlc_event_attach(i32* %43, i32 %44, i32 %45, i32* %12)
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @libvlc_media_parse_with_options(i32* %47, i32 %48, i32 -1)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = call i32 @vlc_sem_wait(i32* %12)
  %55 = call i32 @vlc_sem_destroy(i32* %12)
  %56 = load i32*, i32** %11, align 8
  %57 = call i64 @libvlc_media_get_parsed_status(i32* %56)
  %58 = load i64, i64* %10, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @libvlc_media_parsed_status_done, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %35
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @print_media(i32* %66)
  br label %68

68:                                               ; preds = %65, %35
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @libvlc_media_release(i32* %69)
  ret void
}

declare dso_local i32 @test_log(i8*, i8*, i64) #1

declare dso_local i32* @libvlc_media_new_path(i32*, i8*) #1

declare dso_local i32* @libvlc_media_new_location(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_sem_init(i32*, i32) #1

declare dso_local i32* @libvlc_media_event_manager(i32*) #1

declare dso_local i32 @libvlc_event_attach(i32*, i32, i32, i32*) #1

declare dso_local i32 @libvlc_media_parse_with_options(i32*, i32, i32) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i64 @libvlc_media_get_parsed_status(i32*) #1

declare dso_local i32 @print_media(i32*) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
