; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_seat_destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_seat_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seat_data = type { i64, i32, i32*, i32 }

@WL_SEAT_RELEASE_SINCE_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seat_data*)* @seat_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_destroy(%struct.seat_data* %0) #0 {
  %2 = alloca %struct.seat_data*, align 8
  store %struct.seat_data* %0, %struct.seat_data** %2, align 8
  %3 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %4 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %3, i32 0, i32 3
  %5 = call i32 @wl_list_remove(i32* %4)
  %6 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %7 = call i32 @pointer_destroy(%struct.seat_data* %6)
  %8 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %9 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WL_SEAT_RELEASE_SINCE_VERSION, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %15 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @wl_seat_release(i32 %16)
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %20 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @wl_seat_destroy(i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %25 = call i32 @free(%struct.seat_data* %24)
  ret void
}

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @pointer_destroy(%struct.seat_data*) #1

declare dso_local i32 @wl_seat_release(i32) #1

declare dso_local i32 @wl_seat_destroy(i32) #1

declare dso_local i32 @free(%struct.seat_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
