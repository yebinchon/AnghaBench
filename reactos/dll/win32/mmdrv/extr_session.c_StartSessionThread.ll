; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_session.c_StartSessionThread.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_session.c_StartSessionThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Couldn't create thread_ready event\0A\00", align 1
@MMSYSERR_NOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't create thread_go event\0A\00", align 1
@WaveOutDevice = common dso_local global i64 0, align 8
@WaveThread = common dso_local global i64 0, align 8
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Task creation failed\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StartSessionThread(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @ASSERT(%struct.TYPE_8__* %6)
  %8 = load i32, i32* @FALSE, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i8* @CreateEvent(i32* null, i32 %8, i32 %9, i32* null)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = call i32 @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @MMSYSERR_NOMEM, align 8
  store i64 %21, i64* %2, align 8
  br label %87

22:                                               ; preds = %1
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i8* @CreateEvent(i32* null, i32 %23, i32 %24, i32* null)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %22
  %35 = call i32 @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @CloseHandle(i8* %39)
  %41 = load i64, i64* @MMSYSERR_NOMEM, align 8
  store i64 %41, i64* %2, align 8
  br label %87

42:                                               ; preds = %22
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WaveOutDevice, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, i64* @WaveThread, align 8
  %50 = inttoptr i64 %49 to %struct.TYPE_8__*
  br label %52

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi %struct.TYPE_8__* [ %50, %48 ], [ null, %51 ]
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %4, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = call i32 @ASSERT(%struct.TYPE_8__* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = ptrtoint %struct.TYPE_8__* %60 to i32
  %62 = call i64 @mmTaskCreate(%struct.TYPE_8__* %56, i32* %59, i32 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %52
  %67 = call i32 @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @CloseHandle(i8* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @CloseHandle(i8* %76)
  %78 = load i64, i64* %5, align 8
  store i64 %78, i64* %2, align 8
  br label %87

79:                                               ; preds = %52
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @INFINITE, align 4
  %85 = call i32 @WaitForSingleObject(i8* %83, i32 %84)
  %86 = load i64, i64* @MMSYSERR_NOERROR, align 8
  store i64 %86, i64* %2, align 8
  br label %87

87:                                               ; preds = %79, %66, %34, %19
  %88 = load i64, i64* %2, align 8
  ret i64 %88
}

declare dso_local i32 @ASSERT(%struct.TYPE_8__*) #1

declare dso_local i8* @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @CloseHandle(i8*) #1

declare dso_local i64 @mmTaskCreate(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @WaitForSingleObject(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
