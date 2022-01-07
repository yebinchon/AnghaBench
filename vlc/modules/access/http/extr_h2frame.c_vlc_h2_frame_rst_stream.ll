; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_rst_stream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2frame.c_vlc_h2_frame_rst_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_frame = type { i32 }

@VLC_H2_FRAME_RST_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_h2_frame* @vlc_h2_frame_rst_stream(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_h2_frame*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @VLC_H2_FRAME_RST_STREAM, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.vlc_h2_frame* @vlc_h2_frame_alloc(i32 %6, i32 0, i32 %7, i32 4)
  store %struct.vlc_h2_frame* %8, %struct.vlc_h2_frame** %5, align 8
  %9 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %10 = icmp ne %struct.vlc_h2_frame* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  %16 = call i32 @vlc_h2_frame_payload(%struct.vlc_h2_frame* %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SetDWBE(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %5, align 8
  ret %struct.vlc_h2_frame* %20
}

declare dso_local %struct.vlc_h2_frame* @vlc_h2_frame_alloc(i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @SetDWBE(i32, i32) #1

declare dso_local i32 @vlc_h2_frame_payload(%struct.vlc_h2_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
