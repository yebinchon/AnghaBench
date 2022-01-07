; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_ManualResetEvent_Construct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_ManualResetEvent_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Aggregation not implemented.\0A\00", align 1
@vt_ISynchronize = common dso_local global i32 0, align 4
@SynchronizeHandleVtbl = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @ManualResetEvent_Construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ManualResetEvent_Construct(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %11 = call %struct.TYPE_7__* @HeapAlloc(i32 %9, i32 %10, i32 32)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32* @vt_ISynchronize, i32** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32* @SynchronizeHandleVtbl, i32** %24, align 8
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @CreateEventW(i32* null, i32 %25, i32 %26, i32* null)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %5, align 4
  %33 = load i8**, i8*** %6, align 8
  %34 = call i32 @ISynchronize_QueryInterface(%struct.TYPE_8__* %31, i32 %32, i8** %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = call i32 @ISynchronize_Release(%struct.TYPE_8__* %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32 @ISynchronize_QueryInterface(%struct.TYPE_8__*, i32, i8**) #1

declare dso_local i32 @ISynchronize_Release(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
