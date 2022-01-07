; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media_player.c_on_vout_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media_player.c_on_vout_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@VIDEO_ES = common dso_local global i64 0, align 8
@libvlc_MediaPlayerVout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i8*)* @on_vout_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_vout_changed(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = call i64 @vlc_es_id_GetCat(i32* %21)
  %23 = load i64, i64* @VIDEO_ES, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %60

26:                                               ; preds = %6
  %27 = load i8*, i8** %12, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %13, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32** @vlc_player_vout_HoldAll(i32* %29, i64* %14)
  store i32** %30, i32*** %15, align 8
  %31 = load i32**, i32*** %15, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %60

34:                                               ; preds = %26
  store i64 0, i64* %16, align 8
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32**, i32*** %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @vout_Release(i32* %43)
  br label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %16, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %16, align 8
  br label %35

48:                                               ; preds = %35
  %49 = load i32**, i32*** %15, align 8
  %50 = call i32 @free(i32** %49)
  %51 = load i32, i32* @libvlc_MediaPlayerVout, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @libvlc_event_send(i32* %58, %struct.TYPE_9__* %17)
  br label %60

60:                                               ; preds = %48, %33, %25
  ret void
}

declare dso_local i64 @vlc_es_id_GetCat(i32*) #1

declare dso_local i32** @vlc_player_vout_HoldAll(i32*, i64*) #1

declare dso_local i32 @vout_Release(i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @libvlc_event_send(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
