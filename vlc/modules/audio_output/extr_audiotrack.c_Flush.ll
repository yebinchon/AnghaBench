; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_Flush.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_Flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@pause = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@flush = common dso_local global i32 0, align 4
@jfields = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@play = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @Flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Flush(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = call i32 @vlc_mutex_lock(i32* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = call i32* (...) @GET_ENV()
  store i32* %16, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %1
  br label %57

19:                                               ; preds = %15
  %20 = load i32, i32* @pause, align 4
  %21 = call i32 @JNI_AT_CALL_VOID(i32 %20)
  %22 = call i64 @CHECK_AT_EXCEPTION(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %57

25:                                               ; preds = %19
  %26 = load i32, i32* @flush, align 4
  %27 = call i32 @JNI_AT_CALL_VOID(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @jfields, i32 0, i32 0, i32 0), align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %25
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = call i64 @AudioTrack_Recreate(i32* %42, %struct.TYPE_11__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %57

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %36, %25
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = call i32 @AudioTrack_Reset(i32* %51, %struct.TYPE_11__* %52)
  %54 = load i32, i32* @play, align 4
  %55 = call i32 @JNI_AT_CALL_VOID(i32 %54)
  %56 = call i64 @CHECK_AT_EXCEPTION(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %50, %46, %24, %18
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = call i32 @vlc_mutex_unlock(i32* %59)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32* @GET_ENV(...) #1

declare dso_local i32 @JNI_AT_CALL_VOID(i32) #1

declare dso_local i64 @CHECK_AT_EXCEPTION(i8*) #1

declare dso_local i64 @AudioTrack_Recreate(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @AudioTrack_Reset(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
