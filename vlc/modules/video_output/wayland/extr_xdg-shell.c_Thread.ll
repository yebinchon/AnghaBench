; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_xdg-shell.c_Thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/wayland/extr_xdg-shell.c_Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.wl_display* }
%struct.wl_display = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pollfd = type { i32, i32 }

@cleanup_wl_display_read = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.wl_display*, align 8
  %6 = alloca [1 x %struct.pollfd], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.wl_display*, %struct.wl_display** %17, align 8
  store %struct.wl_display* %18, %struct.wl_display** %5, align 8
  %19 = call i32 (...) @vlc_savecancel()
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @cleanup_wl_display_read, align 4
  %21 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %22 = call i32 @vlc_cleanup_push(i32 %20, %struct.wl_display* %21)
  %23 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %24 = call i32 @wl_display_get_fd(%struct.wl_display* %23)
  %25 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %26 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @POLLIN, align 4
  %28 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %56, %1
  br label %31

31:                                               ; preds = %35, %30
  %32 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %33 = call i64 @wl_display_prepare_read(%struct.wl_display* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %37 = call i32 @wl_display_dispatch_pending(%struct.wl_display* %36)
  br label %31

38:                                               ; preds = %31
  %39 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %40 = call i32 @wl_display_flush(%struct.wl_display* %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = call i32 @seat_next_timeout(i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @vlc_restorecancel(i32 %44)
  %46 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @poll(%struct.pollfd* %46, i32 1, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = call i32 (...) @vlc_savecancel()
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = call i32 @seat_timeout(i32* %54)
  br label %56

56:                                               ; preds = %52, %38
  %57 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %58 = call i32 @wl_display_read_events(%struct.wl_display* %57)
  %59 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %60 = call i32 @wl_display_dispatch_pending(%struct.wl_display* %59)
  br label %30
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_cleanup_push(i32, %struct.wl_display*) #1

declare dso_local i32 @wl_display_get_fd(%struct.wl_display*) #1

declare dso_local i64 @wl_display_prepare_read(%struct.wl_display*) #1

declare dso_local i32 @wl_display_dispatch_pending(%struct.wl_display*) #1

declare dso_local i32 @wl_display_flush(%struct.wl_display*) #1

declare dso_local i32 @seat_next_timeout(i32*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @seat_timeout(i32*) #1

declare dso_local i32 @wl_display_read_events(%struct.wl_display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
