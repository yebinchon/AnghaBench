; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayOnStreamSelectedEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayOnStreamSelectedEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@BD_EVENT_AUDIO_STREAM = common dso_local global i64 0, align 8
@BD_EVENT_PG_TEXTST_STREAM = common dso_local global i64 0, align 8
@BLURAY_ES_OUT_CONTROL_UNSET_ES_BY_PID = common dso_local global i32 0, align 4
@BLURAY_ES_OUT_CONTROL_SET_ES_BY_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, i64)* @blurayOnStreamSelectedEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blurayOnStreamSelectedEvent(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  store i32 -1, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @BD_EVENT_AUDIO_STREAM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @blurayGetStreamPID(%struct.TYPE_6__* %18, i64 %19, i64 %20)
  store i32 %21, i32* %8, align 4
  br label %32

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @BD_EVENT_PG_TEXTST_STREAM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @blurayGetStreamPID(%struct.TYPE_6__* %27, i64 %28, i64 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %22
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @BD_EVENT_PG_TEXTST_STREAM, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BLURAY_ES_OUT_CONTROL_UNSET_ES_BY_PID, align 4
  %49 = load i64, i64* %5, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @es_out_Control(i32 %47, i32 %48, i32 %50, i32 %51)
  br label %62

53:                                               ; preds = %39, %35
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BLURAY_ES_OUT_CONTROL_SET_ES_BY_PID, align 4
  %58 = load i64, i64* %5, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @es_out_Control(i32 %56, i32 %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %44
  br label %63

63:                                               ; preds = %62, %32
  ret void
}

declare dso_local i32 @blurayGetStreamPID(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @es_out_Control(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
