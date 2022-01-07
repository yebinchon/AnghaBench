; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_enter_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_enter_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_pointer = type { i32 }
%struct.wl_surface = type { i32 }
%struct.seat_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, %struct.wl_surface*, i32, i32)* @pointer_enter_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointer_enter_cb(i8* %0, %struct.wl_pointer* %1, i32 %2, %struct.wl_surface* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_pointer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wl_surface*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.seat_data*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wl_surface* %3, %struct.wl_surface** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.seat_data*
  store %struct.seat_data* %15, %struct.seat_data** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.seat_data*, %struct.seat_data** %13, align 8
  %18 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.seat_data*, %struct.seat_data** %13, align 8
  %20 = load %struct.wl_pointer*, %struct.wl_pointer** %8, align 8
  %21 = call i32 @pointer_show(%struct.seat_data* %19, %struct.wl_pointer* %20)
  %22 = load %struct.wl_surface*, %struct.wl_surface** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  ret void
}

declare dso_local i32 @pointer_show(%struct.seat_data*, %struct.wl_pointer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
