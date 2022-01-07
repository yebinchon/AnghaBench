; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_thumbnailer.c_on_thumbnailer_input_event.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_thumbnailer.c_on_thumbnailer_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_input_event = type { i64, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, i32*)*, i32 }

@INPUT_EVENT_THUMBNAIL_READY = common dso_local global i64 0, align 8
@INPUT_EVENT_STATE = common dso_local global i64 0, align 8
@ERROR_S = common dso_local global i64 0, align 8
@END_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.vlc_input_event*, i8*)* @on_thumbnailer_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_thumbnailer_input_event(i32* %0, %struct.vlc_input_event* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vlc_input_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.vlc_input_event* %1, %struct.vlc_input_event** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @VLC_UNUSED(i32* %9)
  %11 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %12 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @INPUT_EVENT_THUMBNAIL_READY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %17 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %18 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INPUT_EVENT_STATE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %36, label %22

22:                                               ; preds = %16
  %23 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %24 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ERROR_S, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %31 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @END_S, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %16
  br label %88

37:                                               ; preds = %29, %22, %3
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %7, align 8
  store i32* null, i32** %8, align 8
  %40 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %41 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INPUT_EVENT_THUMBNAIL_READY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @input_Stop(i32 %48)
  %50 = load %struct.vlc_input_event*, %struct.vlc_input_event** %5, align 8
  %51 = getelementptr inbounds %struct.vlc_input_event, %struct.vlc_input_event* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %8, align 8
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = call i32 @vlc_mutex_lock(i32* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (i32, i32*)*, i32 (i32, i32*)** %61, align 8
  %63 = icmp ne i32 (i32, i32*)* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %53
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32*)*, i32 (i32, i32*)** %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 %68(i32 %72, i32* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 (i32, i32*)* null, i32 (i32, i32*)** %77, align 8
  br label %78

78:                                               ; preds = %64, %53
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = call i32 @vlc_mutex_unlock(i32* %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @background_worker_RequestProbe(i32 %86)
  br label %88

88:                                               ; preds = %78, %36
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @input_Stop(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @background_worker_RequestProbe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
