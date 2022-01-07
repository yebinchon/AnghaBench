; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_session.c_CreateSession.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_session.c_CreateSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i32 }

@session_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Already allocated session\0A\00", align 1
@MMSYSERR_ALLOCATED = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to allocate mem for session info\0A\00", align 1
@MMSYSERR_NOMEM = common dso_local global i32 0, align 4
@session_list = common dso_local global %struct.TYPE_6__* null, align 8
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateSession(i32 %0, i32 %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  %9 = call i32 (...) @GetProcessHeap()
  store i32 %9, i32* %8, align 4
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %11 = call i32 @ASSERT(%struct.TYPE_6__** %10)
  %12 = call i32 @EnterCriticalSection(i32* @session_lock)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @GetSession(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @LeaveCriticalSection(i32* @session_lock)
  %20 = load i32, i32* @MMSYSERR_ALLOCATED, align 4
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %24 = call %struct.TYPE_6__* @HeapAlloc(i32 %22, i32 %23, i32 16)
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %25, align 8
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = call i32 @DPRINT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @LeaveCriticalSection(i32* @session_lock)
  %32 = load i32, i32* @MMSYSERR_NOMEM, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @session_list, align 8
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %45, align 8
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** @session_list, align 8
  %48 = call i32 @LeaveCriticalSection(i32* @session_lock)
  %49 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %33, %29, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ASSERT(%struct.TYPE_6__**) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @GetSession(i32, i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
