; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayStillImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayStillImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@STILL_IMAGE_NOT_SET = common dso_local global i64 0, align 8
@STILL_IMAGE_INFINITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Still image end\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Still image (%d seconds)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Still image (infinite)\00", align 1
@ES_OUT_GET_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @blurayStillImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blurayStillImage(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STILL_IMAGE_NOT_SET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @STILL_IMAGE_INFINITE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 (...) @vlc_tick_now()
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Dbg(%struct.TYPE_7__* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bd_read_skip_still(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i32 @blurayResetStillImage(%struct.TYPE_7__* %34)
  br label %72

36:                                               ; preds = %21, %15, %2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @STILL_IMAGE_NOT_SET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Dbg(%struct.TYPE_7__* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = call i64 (...) @vlc_tick_now()
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @vlc_tick_from_sec(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %61

55:                                               ; preds = %42
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Dbg(%struct.TYPE_7__* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i64, i64* @STILL_IMAGE_INFINITE, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %45
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = call i32 @streamFlush(%struct.TYPE_8__* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ES_OUT_GET_EMPTY, align 4
  %68 = call i32 @es_out_Control(i32 %66, i32 %67, i32* %6)
  br label %69

69:                                               ; preds = %61, %36
  %70 = call i32 @VLC_TICK_FROM_MS(i32 40)
  %71 = call i32 @vlc_tick_sleep(i32 %70)
  br label %72

72:                                               ; preds = %69, %27
  ret void
}

declare dso_local i64 @vlc_tick_now(...) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @bd_read_skip_still(i32) #1

declare dso_local i32 @blurayResetStillImage(%struct.TYPE_7__*) #1

declare dso_local i64 @vlc_tick_from_sec(i32) #1

declare dso_local i32 @streamFlush(%struct.TYPE_8__*) #1

declare dso_local i32 @es_out_Control(i32, i32, i32*) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

declare dso_local i32 @VLC_TICK_FROM_MS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
