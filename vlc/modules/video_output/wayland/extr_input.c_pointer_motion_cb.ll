; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_motion_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_motion_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_pointer = type { i32 }
%struct.seat_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, i32, i32)* @pointer_motion_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointer_motion_cb(i8* %0, %struct.wl_pointer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_pointer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.seat_data*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.seat_data*
  store %struct.seat_data* %13, %struct.seat_data** %11, align 8
  %14 = load %struct.seat_data*, %struct.seat_data** %11, align 8
  %15 = load %struct.wl_pointer*, %struct.wl_pointer** %7, align 8
  %16 = call i32 @pointer_show(%struct.seat_data* %14, %struct.wl_pointer* %15)
  %17 = load %struct.seat_data*, %struct.seat_data** %11, align 8
  %18 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @wl_fixed_to_int(i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @wl_fixed_to_int(i32 %22)
  %24 = call i32 @vout_window_ReportMouseMoved(i32 %19, i32 %21, i32 %23)
  %25 = load i32, i32* %8, align 4
  ret void
}

declare dso_local i32 @pointer_show(%struct.seat_data*, %struct.wl_pointer*) #1

declare dso_local i32 @vout_window_ReportMouseMoved(i32, i32, i32) #1

declare dso_local i32 @wl_fixed_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
