; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_cordebug.c_CorDebugProcess_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_cordebug.c_CorDebugProcess_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to duplicate process handle\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to duplicate thread handle\0A\00", align 1
@cordebugprocessVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32**, %struct.TYPE_10__*)* @CorDebugProcess_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CorDebugProcess_Create(%struct.TYPE_12__* %0, i32** %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = call %struct.TYPE_11__* @HeapAlloc(i32 %9, i32 0, i32 40)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %8, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %4, align 4
  br label %85

15:                                               ; preds = %3
  %16 = call i32 (...) @GetCurrentProcess()
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (...) @GetCurrentProcess()
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %25 = call i32 @DuplicateHandle(i32 %16, i32 %19, i32 %20, i32* %22, i32 0, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %15
  %28 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = call i32 @HeapFree(i32 %29, i32 0, %struct.TYPE_11__* %30)
  %32 = load i32, i32* @E_FAIL, align 4
  store i32 %32, i32* %4, align 4
  br label %85

33:                                               ; preds = %15
  %34 = call i32 (...) @GetCurrentProcess()
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (...) @GetCurrentProcess()
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 5
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %43 = call i32 @DuplicateHandle(i32 %34, i32 %37, i32 %38, i32* %40, i32 0, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %33
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CloseHandle(i32 %48)
  %50 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = call i32 @HeapFree(i32 %51, i32 0, %struct.TYPE_11__* %52)
  %54 = load i32, i32* @E_FAIL, align 4
  store i32 %54, i32* %4, align 4
  br label %85

55:                                               ; preds = %33
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32* @cordebugprocessVtbl, i32** %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = icmp ne %struct.TYPE_12__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %55
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = call i32 @ICorDebug_AddRef(i32* %77)
  br label %79

79:                                               ; preds = %73, %55
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = bitcast %struct.TYPE_9__* %81 to i32*
  %83 = load i32**, i32*** %6, align 8
  store i32* %82, i32** %83, align 8
  %84 = load i32, i32* @S_OK, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %45, %27, %13
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_11__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @DuplicateHandle(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @ICorDebug_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
