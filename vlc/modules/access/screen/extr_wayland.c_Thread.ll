; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/screen/extr_wayland.c_Thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/screen/extr_wayland.c_Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { float, i32*, %struct.wl_display* }
%struct.wl_display = type { i32 }
%struct.pollfd = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@CLOCK_FREQ = common dso_local global float 0.000000e+00, align 4
@cleanup_wl_display_read = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @Thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.wl_display*, align 8
  %6 = alloca [1 x %struct.pollfd], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.wl_display*, %struct.wl_display** %16, align 8
  store %struct.wl_display* %17, %struct.wl_display** %5, align 8
  %18 = load float, float* @CLOCK_FREQ, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = fmul float %21, 1.000000e+03
  %23 = fdiv float %18, %22
  %24 = call i32 @lroundf(float %23)
  store i32 %24, i32* %7, align 4
  %25 = call i32 (...) @vlc_savecancel()
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @cleanup_wl_display_read, align 4
  %27 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %28 = call i32 @vlc_cleanup_push(i32 %26, %struct.wl_display* %27)
  %29 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %30 = call i32 @wl_display_get_fd(%struct.wl_display* %29)
  %31 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %32 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @POLLIN, align 4
  %34 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %89, %1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %39 = call i64 @DisplayError(%struct.TYPE_8__* %37, %struct.wl_display* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %95

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = call %struct.TYPE_10__* @Shoot(%struct.TYPE_8__* %48)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %9, align 8
  %50 = call i32 (...) @vlc_tick_now()
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @es_out_SetPCR(i32 %57, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = call i32 @es_out_Send(i32 %64, i32* %67, %struct.TYPE_10__* %68)
  br label %70

70:                                               ; preds = %47, %42
  br label %71

71:                                               ; preds = %75, %70
  %72 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %73 = call i64 @wl_display_prepare_read(%struct.wl_display* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %77 = call i32 @wl_display_dispatch_pending(%struct.wl_display* %76)
  br label %71

78:                                               ; preds = %71
  %79 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %80 = call i32 @wl_display_flush(%struct.wl_display* %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @vlc_restorecancel(i32 %81)
  br label %83

83:                                               ; preds = %88, %78
  %84 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @poll(%struct.pollfd* %84, i32 1, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %83

89:                                               ; preds = %83
  %90 = call i32 (...) @vlc_savecancel()
  store i32 %90, i32* %8, align 4
  %91 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %92 = call i32 @wl_display_read_events(%struct.wl_display* %91)
  %93 = load %struct.wl_display*, %struct.wl_display** %5, align 8
  %94 = call i32 @wl_display_dispatch_pending(%struct.wl_display* %93)
  br label %36

95:                                               ; preds = %41
  %96 = call i32 (...) @vlc_cleanup_pop()
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @vlc_restorecancel(i32 %97)
  ret i8* null
}

declare dso_local i32 @lroundf(float) #1

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local i32 @vlc_cleanup_push(i32, %struct.wl_display*) #1

declare dso_local i32 @wl_display_get_fd(%struct.wl_display*) #1

declare dso_local i64 @DisplayError(%struct.TYPE_8__*, %struct.wl_display*) #1

declare dso_local %struct.TYPE_10__* @Shoot(%struct.TYPE_8__*) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

declare dso_local i32 @es_out_Send(i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @wl_display_prepare_read(%struct.wl_display*) #1

declare dso_local i32 @wl_display_dispatch_pending(%struct.wl_display*) #1

declare dso_local i32 @wl_display_flush(%struct.wl_display*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @wl_display_read_events(%struct.wl_display*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
