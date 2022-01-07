; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_oleobj.c_OleAdviseHolderImpl_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_oleobj.c_OleAdviseHolderImpl_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__, i8* }

@oahvt = common dso_local global i32 0, align 4
@INITIAL_SINKS = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @OleAdviseHolderImpl_Constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @OleAdviseHolderImpl_Constructor() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call i32 (...) @GetProcessHeap()
  %3 = call i8* @HeapAlloc(i32 %2, i32 0, i32 24)
  %4 = bitcast i8* %3 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %1, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32* @oahvt, i32** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* @INITIAL_SINKS, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @GetProcessHeap()
  %14 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = call i8* @HeapAlloc(i32 %13, i32 %14, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  ret %struct.TYPE_6__* %28
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
