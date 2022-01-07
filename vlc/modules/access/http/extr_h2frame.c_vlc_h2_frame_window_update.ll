; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_window_update.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_window_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32 }

@VLC_H2_FRAME_WINDOW_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_h2_frame* @vlc_h2_frame_window_update(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_h2_frame*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 31
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* @VLC_H2_FRAME_WINDOW_UPDATE, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.vlc_h2_frame* @vlc_h2_frame_alloc(i32 %12, i32 0, i32 %13, i32 4)
  store %struct.vlc_h2_frame* %14, %struct.vlc_h2_frame** %5, align 8
  %15 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %16 = icmp ne %struct.vlc_h2_frame* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %22 = call i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @SetDWBE(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  ret %struct.vlc_h2_frame* %27
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.vlc_h2_frame* @vlc_h2_frame_alloc(i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

declare dso_local i32 @SetDWBE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
