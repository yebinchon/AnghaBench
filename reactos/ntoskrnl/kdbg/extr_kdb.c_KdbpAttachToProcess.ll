; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpAttachToProcess.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb.c_KdbpAttachToProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Invalid process id: 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@KdbCurrentProcess = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"No threads in process 0x%p, cannot attach to process!\0A\00", align 1
@ETHREAD = common dso_local global i32 0, align 4
@ThreadListEntry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KdbpAttachToProcess(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @PsLookupProcessByProcessId(i64 %7, %struct.TYPE_12__** %4)
  %9 = call i32 @NT_SUCCESS(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @KdbpPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = call i32 @ObDereferenceObject(%struct.TYPE_12__* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @KdbCurrentProcess, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = icmp eq i32* %22, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @KdbpPrint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %2, align 4
  br label %40

30:                                               ; preds = %15
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @ETHREAD, align 4
  %33 = load i32, i32* @ThreadListEntry, align 4
  %34 = call %struct.TYPE_11__* @CONTAINING_RECORD(i32* %31, i32 %32, i32 %33)
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %5, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @KdbpAttachToThread(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %30, %26, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @PsLookupProcessByProcessId(i64, %struct.TYPE_12__**) #1

declare dso_local i32 @KdbpPrint(i8*, i64) #1

declare dso_local i32 @ObDereferenceObject(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @CONTAINING_RECORD(i32*, i32, i32) #1

declare dso_local i32 @KdbpAttachToThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
