; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_input.c_pointer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seat_data = type { i32, i32, i32, i32*, i32 }

@pointer_cbs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mouse-hide-timeout\00", align 1
@INT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seat_data*)* @pointer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointer_create(%struct.seat_data* %0) #0 {
  %2 = alloca %struct.seat_data*, align 8
  store %struct.seat_data* %0, %struct.seat_data** %2, align 8
  %3 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %4 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %10 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @wl_seat_get_pointer(i32 %11)
  %13 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %14 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %13, i32 0, i32 3
  store i32* %12, i32** %14, align 8
  %15 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %16 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %8
  %23 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %24 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %27 = call i32 @wl_pointer_add_listener(i32* %25, i32* @pointer_cbs, %struct.seat_data* %26)
  br label %28

28:                                               ; preds = %22, %8
  %29 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %30 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @var_InheritInteger(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @VLC_TICK_FROM_MS(i32 %32)
  %34 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %35 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @INT64_MAX, align 4
  %37 = load %struct.seat_data*, %struct.seat_data** %2, align 8
  %38 = getelementptr inbounds %struct.seat_data, %struct.seat_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32* @wl_seat_get_pointer(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wl_pointer_add_listener(i32*, i32*, %struct.seat_data*) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i32 @var_InheritInteger(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
