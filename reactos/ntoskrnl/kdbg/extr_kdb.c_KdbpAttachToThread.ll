; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpAttachToThread.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpAttachToThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid thread id: 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@KdbCurrentProcess = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Cannot attach to thread within another process while executing a DPC.\0A\00", align 1
@KdbCurrentThread = common dso_local global %struct.TYPE_12__* null, align 8
@KdbOriginalThread = common dso_local global %struct.TYPE_12__* null, align 8
@KdbCurrentTrapFrame = common dso_local global i32* null, align 8
@KdbThreadTrapFrame = common dso_local global i32 0, align 4
@KdbTrapFrame = common dso_local global i32 0, align 4
@KdbOriginalProcess = common dso_local global %struct.TYPE_13__* null, align 8
@KdbApcState = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KdbpAttachToThread(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @PsLookupThreadByThreadId(i64 %6, %struct.TYPE_12__** %4)
  %8 = call i32 @NT_SUCCESS(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %85

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  %19 = call i64 (...) @KeIsExecutingDpc()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @KdbCurrentProcess, align 8
  %24 = icmp ne %struct.TYPE_13__* %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = call i32 @ObDereferenceObject(%struct.TYPE_12__* %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %85

30:                                               ; preds = %21, %15
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KdbCurrentThread, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KdbOriginalThread, align 8
  %33 = icmp ne %struct.TYPE_12__* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32*, i32** @KdbCurrentTrapFrame, align 8
  %36 = icmp eq i32* %35, @KdbThreadTrapFrame
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  br label %44

39:                                               ; preds = %30
  %40 = load i32*, i32** @KdbCurrentTrapFrame, align 8
  %41 = icmp eq i32* %40, @KdbTrapFrame
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KdbOriginalThread, align 8
  %47 = icmp ne %struct.TYPE_12__* %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @KdbpKdbTrapFrameFromKernelStack(i32 %52, i32* @KdbThreadTrapFrame)
  store i32* @KdbThreadTrapFrame, i32** @KdbCurrentTrapFrame, align 8
  br label %55

54:                                               ; preds = %44
  store i32* @KdbTrapFrame, i32** @KdbCurrentTrapFrame, align 8
  br label %55

55:                                               ; preds = %54, %48
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** @KdbCurrentThread, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** @KdbCurrentProcess, align 8
  %58 = call %struct.TYPE_13__* (...) @PsGetCurrentProcess()
  %59 = icmp eq %struct.TYPE_13__* %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** @KdbCurrentProcess, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = icmp ne %struct.TYPE_13__* %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %55
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** @KdbCurrentProcess, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** @KdbOriginalProcess, align 8
  %68 = icmp ne %struct.TYPE_13__* %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @KeUnstackDetachProcess(i32* @KdbApcState)
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** @KdbOriginalProcess, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = icmp ne %struct.TYPE_13__* %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = call i32 @KeStackAttachProcess(i32* %77, i32* @KdbApcState)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** @KdbCurrentProcess, align 8
  br label %81

81:                                               ; preds = %79, %55
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = call i32 @ObDereferenceObject(%struct.TYPE_12__* %82)
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %25, %10
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @PsLookupThreadByThreadId(i64, %struct.TYPE_12__**) #1

declare dso_local i32 @KdbpPrint(i8*, ...) #1

declare dso_local i64 @KeIsExecutingDpc(...) #1

declare dso_local i32 @ObDereferenceObject(%struct.TYPE_12__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KdbpKdbTrapFrameFromKernelStack(i32, i32*) #1

declare dso_local %struct.TYPE_13__* @PsGetCurrentProcess(...) #1

declare dso_local i32 @KeUnstackDetachProcess(i32*) #1

declare dso_local i32 @KeStackAttachProcess(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
