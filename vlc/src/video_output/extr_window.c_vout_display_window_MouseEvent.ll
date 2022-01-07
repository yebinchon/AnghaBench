; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_window.c_vout_display_window_MouseEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_window.c_vout_display_window_MouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_19__, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@INT64_MIN = common dso_local global i8* null, align 8
@MOUSE_BUTTON_LEFT = common dso_local global i32 0, align 4
@DOUBLE_CLICK_TIME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_17__*)* @vout_display_window_MouseEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vout_display_window_MouseEvent(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %7, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %100 [
    i32 130, label %23
    i32 129, label %35
    i32 128, label %86
    i32 131, label %92
  ]

23:                                               ; preds = %2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vlc_mouse_SetPosition(%struct.TYPE_19__* %24, i32 %27, i32 %30)
  %32 = load i8*, i8** @INT64_MIN, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %102

35:                                               ; preds = %2
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %80, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MOUSE_BUTTON_LEFT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %80

47:                                               ; preds = %41
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = call i32 @vlc_mouse_IsLeftPressed(%struct.TYPE_19__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %47
  %52 = call i8* (...) @vlc_tick_now()
  store i8* %52, i8** %8, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** @INT64_MIN, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %59 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i8*, i8** @DOUBLE_CLICK_TIME, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load i8*, i8** @INT64_MIN, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %79

75:                                               ; preds = %58, %51
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %47, %41, %35
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @vlc_mouse_SetPressed(%struct.TYPE_19__* %81, i32 %84)
  br label %102

86:                                               ; preds = %2
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vlc_mouse_SetReleased(%struct.TYPE_19__* %87, i32 %90)
  br label %102

92:                                               ; preds = %2
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  br label %102

100:                                              ; preds = %2
  %101 = call i32 (...) @vlc_assert_unreachable()
  br label %102

102:                                              ; preds = %100, %92, %86, %80, %23
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = call i32 @vout_MouseState(i32* %103, %struct.TYPE_19__* %104)
  ret void
}

declare dso_local i32 @vlc_mouse_SetPosition(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @vlc_mouse_IsLeftPressed(%struct.TYPE_19__*) #1

declare dso_local i8* @vlc_tick_now(...) #1

declare dso_local i32 @vlc_mouse_SetPressed(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @vlc_mouse_SetReleased(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @vout_MouseState(i32*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
