; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_DequeueMediaEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_DequeueMediaEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@MF_EVENT_FLAG_NO_WAIT = common dso_local global i32 0, align 4
@VLC_METransformNeedInput = common dso_local global i64 0, align 8
@VLC_METransformHaveOutput = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unsupported asynchronous event.\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @DequeueMediaEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DequeueMediaEvent(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %4, align 8
  store i32* null, i32** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MF_EVENT_FLAG_NO_WAIT, align 4
  %15 = call i32 @IMFMediaEventGenerator_GetEvent(i32 %13, i32 %14, i32** %6)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %55

21:                                               ; preds = %1
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @IMFMediaEvent_GetType(i32* %22, i64* %7)
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @IMFMediaEvent_Release(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %21
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @VLC_METransformNeedInput, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %53

40:                                               ; preds = %31
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @VLC_METransformHaveOutput, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = call i32 @msg_Err(%struct.TYPE_5__* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* @S_OK, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %29, %19
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @IMFMediaEventGenerator_GetEvent(i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IMFMediaEvent_GetType(i32*, i64*) #1

declare dso_local i32 @IMFMediaEvent_Release(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
