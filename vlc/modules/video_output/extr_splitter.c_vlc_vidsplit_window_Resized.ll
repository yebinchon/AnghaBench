; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_splitter.c_vlc_vidsplit_window_Resized.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_splitter.c_vlc_vidsplit_window_Resized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vlc_vidsplit_part* }
%struct.vlc_vidsplit_part = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @vlc_vidsplit_window_Resized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_vidsplit_window_Resized(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlc_vidsplit_part*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %10, align 8
  store %struct.vlc_vidsplit_part* %11, %struct.vlc_vidsplit_part** %7, align 8
  %12 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %7, align 8
  %13 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %12, i32 0, i32 2
  %14 = call i32 @vlc_sem_wait(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %7, align 8
  %17 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %7, align 8
  %20 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %7, align 8
  %22 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %7, align 8
  %27 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @vout_display_SetSize(i32* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %7, align 8
  %34 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %33, i32 0, i32 2
  %35 = call i32 @vlc_sem_post(i32* %34)
  ret void
}

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @vout_display_SetSize(i32*, i32, i32) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
