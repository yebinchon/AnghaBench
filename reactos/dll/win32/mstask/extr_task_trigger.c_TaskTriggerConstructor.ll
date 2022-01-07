; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mstask/extr_task_trigger.c_TaskTriggerConstructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mstask/extr_task_trigger.c_TaskTriggerConstructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@MSTASK_ITaskTriggerVtbl = common dso_local global i32 0, align 4
@TASK_TRIGGER_FLAG_DISABLED = common dso_local global i32 0, align 4
@TASK_TIME_TRIGGER_DAILY = common dso_local global i32 0, align 4
@dll_ref = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TaskTriggerConstructor(%struct.TYPE_15__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__**, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %3, align 8
  %6 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  %7 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__** %6)
  %8 = call i32 (...) @GetProcessHeap()
  %9 = call %struct.TYPE_13__* @HeapAlloc(i32 %8, i32 0, i32 56)
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i32* @MSTASK_ITaskTriggerVtbl, i32** %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = call i32 @memset(%struct.TYPE_16__* %21, i32 0, i32 4)
  %23 = call i32 @GetLocalTime(%struct.TYPE_14__* %5)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i32 36, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 8
  store i32 %28, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 7
  store i32 %33, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 6
  store i32 %38, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @TASK_TRIGGER_FLAG_DISABLED, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @TASK_TIME_TRIGGER_DAILY, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %3, align 8
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %67, align 8
  %68 = call i32 @InterlockedIncrement(i32* @dll_ref)
  %69 = load i32, i32* @S_OK, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %14, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_13__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @GetLocalTime(%struct.TYPE_14__*) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
