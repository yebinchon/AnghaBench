; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_memstream_Grab.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_memstream_Grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i64, i32*, i32* }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_memstream*, i8**, i64*)* @memstream_Grab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memstream_Grab(%struct.vlc_memstream* %0, i8** %1, i64* %2) #0 {
  %4 = alloca %struct.vlc_memstream*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  store %struct.vlc_memstream* %0, %struct.vlc_memstream** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %8 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %13 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %12)
  %14 = load i64, i64* @VLC_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %18 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %23 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  %26 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %27 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %30 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  %34 = load %struct.vlc_memstream*, %struct.vlc_memstream** %4, align 8
  %35 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %6, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %28, %11, %3
  ret void
}

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
