; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_output_frame_handle_done.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_output_frame_handle_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_callback = type { i32 }
%struct.swaybar_output = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_callback*, i32)* @output_frame_handle_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_frame_handle_done(i8* %0, %struct.wl_callback* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.swaybar_output*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wl_callback* %1, %struct.wl_callback** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wl_callback*, %struct.wl_callback** %5, align 8
  %9 = call i32 @wl_callback_destroy(%struct.wl_callback* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.swaybar_output*
  store %struct.swaybar_output* %11, %struct.swaybar_output** %7, align 8
  %12 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %13 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %15 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %20 = call i32 @render_frame(%struct.swaybar_output* %19)
  %21 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %22 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %3
  ret void
}

declare dso_local i32 @wl_callback_destroy(%struct.wl_callback*) #1

declare dso_local i32 @render_frame(%struct.swaybar_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
