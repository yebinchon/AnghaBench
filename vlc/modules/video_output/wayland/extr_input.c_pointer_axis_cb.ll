; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_axis_cb.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_axis_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_pointer = type { i32 }
%struct.seat_data = type { i32* }

@MOUSE_BUTTON_WHEEL_DOWN = common dso_local global i32 0, align 4
@MOUSE_BUTTON_WHEEL_UP = common dso_local global i32 0, align 4
@MOUSE_BUTTON_WHEEL_RIGHT = common dso_local global i32 0, align 4
@MOUSE_BUTTON_WHEEL_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, i32, i64)* @pointer_axis_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointer_axis_cb(i8* %0, %struct.wl_pointer* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_pointer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.seat_data*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.seat_data*
  store %struct.seat_data* %16, %struct.seat_data** %11, align 8
  %17 = load %struct.seat_data*, %struct.seat_data** %11, align 8
  %18 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load %struct.seat_data*, %struct.seat_data** %11, align 8
  %24 = load %struct.wl_pointer*, %struct.wl_pointer** %7, align 8
  %25 = call i32 @pointer_show(%struct.seat_data* %23, %struct.wl_pointer* %24)
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @abs(i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %47 [
    i32 128, label %29
    i32 129, label %38
  ]

29:                                               ; preds = %5
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @MOUSE_BUTTON_WHEEL_DOWN, align 4
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @MOUSE_BUTTON_WHEEL_UP, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %13, align 4
  br label %48

38:                                               ; preds = %5
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @MOUSE_BUTTON_WHEEL_RIGHT, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @MOUSE_BUTTON_WHEEL_LEFT, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %13, align 4
  br label %48

47:                                               ; preds = %5
  br label %64

48:                                               ; preds = %45, %36
  br label %49

49:                                               ; preds = %52, %48
  %50 = load i64, i64* %10, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @vout_window_ReportMousePressed(i32* %53, i32 %54)
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @vout_window_ReportMouseReleased(i32* %56, i32 %57)
  %59 = call i64 @wl_fixed_from_int(i32 10)
  %60 = load i64, i64* %10, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* %10, align 8
  br label %49

62:                                               ; preds = %49
  %63 = load i32, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %47
  ret void
}

declare dso_local i32 @pointer_show(%struct.seat_data*, %struct.wl_pointer*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @vout_window_ReportMousePressed(i32*, i32) #1

declare dso_local i32 @vout_window_ReportMouseReleased(i32*, i32) #1

declare dso_local i64 @wl_fixed_from_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
