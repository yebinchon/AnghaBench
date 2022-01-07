; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_button_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_button_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_pointer = type { i32 }
%struct.seat_data = type { i32 }

@MOUSE_BUTTON_LEFT = common dso_local global i32 0, align 4
@MOUSE_BUTTON_RIGHT = common dso_local global i32 0, align 4
@MOUSE_BUTTON_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, i32, i32, i32)* @pointer_button_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointer_button_cb(i8* %0, %struct.wl_pointer* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_pointer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.seat_data*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.seat_data*
  store %struct.seat_data* %16, %struct.seat_data** %13, align 8
  %17 = load %struct.seat_data*, %struct.seat_data** %13, align 8
  %18 = load %struct.wl_pointer*, %struct.wl_pointer** %8, align 8
  %19 = call i32 @pointer_show(%struct.seat_data* %17, %struct.wl_pointer* %18)
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %27 [
    i32 132, label %21
    i32 130, label %23
    i32 131, label %25
  ]

21:                                               ; preds = %6
  %22 = load i32, i32* @MOUSE_BUTTON_LEFT, align 4
  store i32 %22, i32* %14, align 4
  br label %28

23:                                               ; preds = %6
  %24 = load i32, i32* @MOUSE_BUTTON_RIGHT, align 4
  store i32 %24, i32* %14, align 4
  br label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @MOUSE_BUTTON_CENTER, align 4
  store i32 %26, i32* %14, align 4
  br label %28

27:                                               ; preds = %6
  br label %45

28:                                               ; preds = %25, %23, %21
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %42 [
    i32 128, label %30
    i32 129, label %36
  ]

30:                                               ; preds = %28
  %31 = load %struct.seat_data*, %struct.seat_data** %13, align 8
  %32 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @vout_window_ReportMouseReleased(i32 %33, i32 %34)
  br label %42

36:                                               ; preds = %28
  %37 = load %struct.seat_data*, %struct.seat_data** %13, align 8
  %38 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @vout_window_ReportMousePressed(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %28, %36, %30
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %27
  ret void
}

declare dso_local i32 @pointer_show(%struct.seat_data*, %struct.wl_pointer*) #1

declare dso_local i32 @vout_window_ReportMouseReleased(i32, i32) #1

declare dso_local i32 @vout_window_ReportMousePressed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
