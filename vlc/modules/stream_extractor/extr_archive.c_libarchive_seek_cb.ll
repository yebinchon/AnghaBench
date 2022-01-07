; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_extractor/extr_archive.c_libarchive_seek_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_extractor/extr_archive.c_libarchive_seek_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i32)* @libarchive_seek_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @libarchive_seek_cb(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @VLC_UNUSED(i32* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %28 [
    i32 128, label %21
    i32 130, label %22
    i32 129, label %25
  ]

21:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %30

22:                                               ; preds = %4
  %23 = load i32*, i32** %11, align 8
  %24 = call i64 @vlc_stream_Tell(i32* %23)
  store i64 %24, i64* %12, align 8
  br label %30

25:                                               ; preds = %4
  %26 = load i32*, i32** %11, align 8
  %27 = call i64 @stream_Size(i32* %26)
  store i64 %27, i64* %12, align 8
  br label %30

28:                                               ; preds = %4
  %29 = call i32 (...) @vlc_assert_unreachable()
  br label %30

30:                                               ; preds = %28, %25, %22, %21
  %31 = load i64, i64* %12, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @vlc_stream_Seek(i32* %34, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %30
  %41 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %41, i64* %5, align 8
  br label %45

42:                                               ; preds = %33
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @vlc_stream_Tell(i32* %43)
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i64 @vlc_stream_Tell(i32*) #1

declare dso_local i64 @stream_Size(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i64 @vlc_stream_Seek(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
