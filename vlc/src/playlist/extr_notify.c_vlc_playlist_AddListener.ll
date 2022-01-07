; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_notify.c_vlc_playlist_AddListener.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_notify.c_vlc_playlist_AddListener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, %struct.vlc_playlist_callbacks* }
%struct.TYPE_9__ = type { i32 }
%struct.vlc_playlist_callbacks = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @vlc_playlist_AddListener(%struct.TYPE_9__* %0, %struct.vlc_playlist_callbacks* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.vlc_playlist_callbacks*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.vlc_playlist_callbacks* %1, %struct.vlc_playlist_callbacks** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = call i32 @vlc_playlist_AssertLocked(%struct.TYPE_9__* %11)
  %13 = call %struct.TYPE_10__* @malloc(i32 24)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %41

21:                                               ; preds = %4
  %22 = load %struct.vlc_playlist_callbacks*, %struct.vlc_playlist_callbacks** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  store %struct.vlc_playlist_callbacks* %22, %struct.vlc_playlist_callbacks** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i32 @vlc_list_append(i32* %29, i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = call i32 @vlc_playlist_NotifyCurrentState(%struct.TYPE_9__* %36, %struct.TYPE_10__* %37)
  br label %39

39:                                               ; preds = %35, %21
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %5, align 8
  br label %41

41:                                               ; preds = %39, %20
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %42
}

declare dso_local i32 @vlc_playlist_AssertLocked(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_list_append(i32*, i32*) #1

declare dso_local i32 @vlc_playlist_NotifyCurrentState(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
