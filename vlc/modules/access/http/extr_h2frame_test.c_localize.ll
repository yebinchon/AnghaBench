; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame_test.c_localize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame_test.c_localize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32* }

@STREAM_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_h2_frame* (%struct.vlc_h2_frame*)* @localize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_h2_frame* @localize(%struct.vlc_h2_frame* %0) #0 {
  %2 = alloca %struct.vlc_h2_frame*, align 8
  store %struct.vlc_h2_frame* %0, %struct.vlc_h2_frame** %2, align 8
  %3 = load i32, i32* @STREAM_ID, align 4
  %4 = ashr i32 %3, 24
  %5 = and i32 %4, 255
  %6 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  %7 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 5
  store i32 %5, i32* %9, align 4
  %10 = load i32, i32* @STREAM_ID, align 4
  %11 = ashr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  %14 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 6
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* @STREAM_ID, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  %21 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @STREAM_ID, align 4
  %25 = and i32 %24, 255
  %26 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  %27 = getelementptr inbounds %struct.vlc_h2_frame, %struct.vlc_h2_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  store i32 %25, i32* %29, align 4
  %30 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %2, align 8
  ret %struct.vlc_h2_frame* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
