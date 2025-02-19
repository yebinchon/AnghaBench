; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_show.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seat_data = type { i64, i64, i32, i32 }
%struct.wl_pointer = type { i32 }
%struct.wl_surface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seat_data*, %struct.wl_pointer*)* @pointer_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointer_show(%struct.seat_data* %0, %struct.wl_pointer* %1) #0 {
  %3 = alloca %struct.seat_data*, align 8
  %4 = alloca %struct.wl_pointer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl_surface*, align 8
  store %struct.seat_data* %0, %struct.seat_data** %3, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %4, align 8
  %8 = load %struct.seat_data*, %struct.seat_data** %3, align 8
  %9 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.wl_surface* @window_get_cursor(i32 %10, i32* %5, i32* %6)
  store %struct.wl_surface* %11, %struct.wl_surface** %7, align 8
  %12 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %13 = icmp ne %struct.wl_surface* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.wl_pointer*, %struct.wl_pointer** %4, align 8
  %16 = load %struct.seat_data*, %struct.seat_data** %3, align 8
  %17 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.wl_surface*, %struct.wl_surface** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @wl_pointer_set_cursor(%struct.wl_pointer* %15, i32 %18, %struct.wl_surface* %19, i32 %20, i32 %21)
  %23 = call i64 (...) @vlc_tick_now()
  %24 = load %struct.seat_data*, %struct.seat_data** %3, align 8
  %25 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.seat_data*, %struct.seat_data** %3, align 8
  %29 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %14, %2
  ret void
}

declare dso_local %struct.wl_surface* @window_get_cursor(i32, i32*, i32*) #1

declare dso_local i32 @wl_pointer_set_cursor(%struct.wl_pointer*, i32, %struct.wl_surface*, i32, i32) #1

declare dso_local i64 @vlc_tick_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
