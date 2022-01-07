; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_get_type.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_media.c_libvlc_media_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@libvlc_media_type_file = common dso_local global i32 0, align 4
@libvlc_media_type_directory = common dso_local global i32 0, align 4
@libvlc_media_type_disc = common dso_local global i32 0, align 4
@libvlc_media_type_stream = common dso_local global i32 0, align 4
@libvlc_media_type_playlist = common dso_local global i32 0, align 4
@libvlc_media_type_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libvlc_media_get_type(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_5__* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = call i32 @vlc_mutex_lock(i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = call i32 @vlc_mutex_unlock(i32* %20)
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %33 [
    i32 131, label %23
    i32 130, label %25
    i32 133, label %25
    i32 132, label %27
    i32 128, label %29
    i32 129, label %31
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* @libvlc_media_type_file, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1, %1
  %26 = load i32, i32* @libvlc_media_type_directory, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load i32, i32* @libvlc_media_type_disc, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @libvlc_media_type_stream, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @libvlc_media_type_playlist, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @libvlc_media_type_unknown, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %29, %27, %25, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
