; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_demux_chained.c_vlc_demux_chained_Thread.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_demux_chained.c_vlc_demux_chained_Thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { double, i64, i64 }

@DEMUX_SET_GROUP_ALL = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@DEMUX_GET_POSITION = common dso_local global i32 0, align 4
@DEMUX_GET_LENGTH = common dso_local global i32 0, align 4
@DEMUX_GET_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @vlc_demux_chained_Thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_demux_chained_Thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @VLC_OBJECT(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @demux_New(i32 %15, i32 %18, i32 %21, i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @vlc_stream_Delete(i32 %31)
  store i8* null, i8** %2, align 8
  br label %94

33:                                               ; preds = %1
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @DEMUX_SET_GROUP_ALL, align 4
  %36 = call i64 (i32*, i32, ...) @demux_Control(i32* %34, i32 %35)
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %87, %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @UINT_MAX, align 4
  %40 = call i64 @demux_TestAndClearFlags(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = call i64 (...) @vlc_tick_now()
  %44 = load i64, i64* %6, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %42, %37
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @DEMUX_GET_POSITION, align 4
  %49 = call i64 (i32*, i32, ...) @demux_Control(i32* %47, i32 %48, double* %7)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store double 0.000000e+00, double* %7, align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @DEMUX_GET_LENGTH, align 4
  %55 = call i64 (i32*, i32, ...) @demux_Control(i32* %53, i32 %54, i64* %8)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @DEMUX_GET_TIME, align 4
  %61 = call i64 (i32*, i32, ...) @demux_Control(i32* %59, i32 %60, i64* %9)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i64 0, i64* %9, align 8
  br label %64

64:                                               ; preds = %63, %58
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @vlc_mutex_lock(i32* %66)
  %68 = load double, double* %7, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store double %68, double* %71, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @vlc_mutex_unlock(i32* %81)
  %83 = call i64 (...) @vlc_tick_now()
  %84 = call i64 @VLC_TICK_FROM_MS(i32 250)
  %85 = add nsw i64 %83, %84
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %64, %42
  br label %87

87:                                               ; preds = %86
  %88 = load i32*, i32** %5, align 8
  %89 = call i64 @demux_Demux(i32* %88)
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %37, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @demux_Delete(i32* %92)
  store i8* null, i8** %2, align 8
  br label %94

94:                                               ; preds = %91, %28
  %95 = load i8*, i8** %2, align 8
  ret i8* %95
}

declare dso_local i32* @demux_New(i32, i32, i32, i32) #1

declare dso_local i32 @VLC_OBJECT(i32) #1

declare dso_local i32 @vlc_stream_Delete(i32) #1

declare dso_local i64 @demux_Control(i32*, i32, ...) #1

declare dso_local i64 @demux_TestAndClearFlags(i32*, i32) #1

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i64 @demux_Demux(i32*) #1

declare dso_local i32 @demux_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
