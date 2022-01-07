; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_wave.c_WaveThread.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_wave.c_WaveThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@MMSYSERR_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@THREAD_PRIORITY_TIME_CRITICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Wave processing thread setting ready state\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WAIT_IO_COMPLETION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Wave processing thread woken up\0A\00", align 1
@DRVM_TERMINATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Processing thread request\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Performing wave I/O\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Wave processing thread sleeping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WaveThread(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @MMSYSERR_ERROR, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @GetCurrentThread()
  %11 = load i32, i32* @THREAD_PRIORITY_TIME_CRITICAL, align 4
  %12 = call i32 @SetThreadPriority(i32 %10, i32 %11)
  %13 = call i32 @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @SetEvent(i32 %17)
  br label %19

19:                                               ; preds = %37, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %34, %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @INFINITE, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i64 @WaitForSingleObjectEx(i32 %28, i32 %29, i32 %30)
  %32 = load i64, i64* @WAIT_IO_COMPLETION, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i32 @ReturnCompletedBuffers(%struct.TYPE_7__* %35)
  br label %24

37:                                               ; preds = %24
  %38 = call i32 @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DRVM_TERMINATE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = call i32 @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i32 @ProcessSessionThreadRequest(%struct.TYPE_7__* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = call i32 @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = call i32 @PerformWaveIO(%struct.TYPE_7__* %54)
  %56 = call i32 @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @SetEvent(i32 %60)
  br label %19

62:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @SetThreadPriority(i32, i32) #1

declare dso_local i32 @GetCurrentThread(...) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i64 @WaitForSingleObjectEx(i32, i32, i32) #1

declare dso_local i32 @ReturnCompletedBuffers(%struct.TYPE_7__*) #1

declare dso_local i32 @ProcessSessionThreadRequest(%struct.TYPE_7__*) #1

declare dso_local i32 @PerformWaveIO(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
